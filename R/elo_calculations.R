#' Calculate the expected outcome of a match between two players
#'
#' @param rating1 The rating of the first player
#' @param rating2 The rating of the second player
#'
#' @return The expected outcome of the match for player 1 against player 2.
expected_outcome <- function(rating1, rating2) {
  return(1 / (1 + 10^((rating2 - rating1) / 400)))
}

#' Receive K factor based on the curent rating
#'
#' @param rating The rating of the player.
#'
#' @return The K factor for the player.
k_factor <- function(rating) {
  if (rating < 2100) {
    return(32)
  } else if (rating < 2400) {
    return(24)
  } else {
    return(16)
  }
}

#' Calculate the new rating of a player after a match
#'
#' @param ratings A named numeric vector of the ratings of the players.
#' @param outcome A named numeric vector of the outcomes of the players
#' (1 for win, 0 for loss).
#' @param k_factor A named numeric vector of the K factors of the players.
#'
#' @return A named numeric vector of the new ratings of the players.
update_ratings <- function(ratings, outcome) {
  # Extract the players of the current game
  game_players <- names(outcome)
  game_ratings <- ratings[game_players]

  # For each player in the current game,
  # calculate the expected outcome against all other players in the game
  expected_outcomes <- sapply(names(game_ratings), function(player) {
    sum(
      sapply(
        game_ratings[names(game_ratings) != player],
        function(opponent_rating) {
          expected_outcome(game_ratings[player], opponent_rating)
        }
      )
    ) / (length(game_ratings) - 1)
  }, USE.NAMES = TRUE)

  # Determine the K values for each player based on their current rating
  k_factors <- sapply(game_ratings, k_factor)

  # Calculate the new ELO adjustment for each player
  elo_diffs <- k_factors * (outcome - expected_outcomes)

  # Standardise the gained ELO to be equal to the lost ELO
  # (i.e. the sum of the new ratings should be equal
  # to the lost elo during this game)
  # taking into account the K factors of each player
  elo_lost_perK <- elo_diffs[which(outcome == 0)] /
    k_factors[which(outcome == 0)]
  elo_gained_perK <- elo_diffs[which(outcome == 1)] /
    k_factors[which(outcome == 1)]
  elo_gained <- -elo_gained_perK / sum(elo_gained_perK) * sum(elo_lost_perK) * k_factors[outcome == 1]

  # Add a small bonus to the winners based on the number of players in the game
  # (i.e. the more players, the more ELO is gained)
  elo_gained <- elo_gained + (length(game_players) - 1) * 0.25

  # Update the ratings of the players
  elo_diffs[which(outcome == 1)] <- elo_gained
  new_ratings <- game_ratings + elo_diffs

  return(new_ratings)
}
