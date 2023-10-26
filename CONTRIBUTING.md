# Working with durakELO

First off, thank you for considering contributing to `durakELO`! It's people like you that make `durakELO` such a great tool.

## For collaborators

### Gitflow workflow

![development branching workflow](https://wac-cdn.atlassian.com/dam/jcr:cc0b526e-adb7-4d45-874e-9bcea9898b4a/04%20Hotfix%20branches.svg?cdnVersion=1282)

Follow the tutorial about [gitflow workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow) for software development.

1. **Branch Setup**:
  - Create two main branches: `main` and `develop`.
  - Develop all new features and changes in feature branches based on `develop`.
  - Use `main` for stable releases and production-ready code.

2. **Feature Branches**:
  - Create a feature branch off `develop` for each new feature.
  - Work on the feature branch, regularly committing and pushing changes.
  - Once the feature is complete, merge the feature branch back into `develop`.

3. **Release Branches**:
  - When preparing for a release, create a release branch from `develop`.
  - Only include bug fixes and release-oriented tasks in the release branch.
  - Test and stabilize the release branch.
  - Merge the release branch into both `main` and `develop`.
  - Tag the release commit in `main` with a version number.

4. **Hotfix Branches**:
  - Create hotfix branches from `main` to address urgent issues in production releases.
  - Apply fixes directly to the hotfix branch.
  - Merge the hotfix branch into both `main` and `develop`.
  - Tag the updated release commit in `main` with an updated version number.

5. **Collaboration**:
  - Clearly communicate and document the Gitflow workflow for all contributors.
  - Encourage regular branch synchronization, updates, and pulling from `develop`.
  - Perform code reviews and use pull requests for merging feature and release branches.
  - Require approval from team members before merging into `main`.

## Contributing to durakELO

### Code of Conduct

By participating, you are expected to uphold this code. Please report unacceptable behavior to [aleksandr.shemendyuk@unil.ch].

### How Can I Contribute?

#### Reporting Bugs

Ensure the bug was not already reported by searching on GitHub under [Issues](https://github.com/AlexShem/durakELO/issues).

If you're unable to find an open issue addressing the problem, [open a new one](https://github.com/AlexShem/durakELO/issues/new). Be sure to include a title and clear description, as much relevant information as possible, and a code sample or an executable test case demonstrating the expected behavior that is not occurring.

#### Suggesting Enhancements

Open a new issue with a clear title and description in the [Issues](https://github.com/AlexShem/durakELO/issues) section.

#### Your First Code Contribution

- Fork the repo.
- Create a new branch in your forked repo.
- Make your changes.
- Submit a pull request to the `develop` branch.

#### Pull Requests

- Ensure any install or build dependencies are removed before the end of the layer when doing a build.
- Update the README.md with details of changes.
- Increase the version numbers in any examples files and the README.md to the new version that this Pull Request would represent.

## Styleguides

### Git Commit Messages

- Use the present tense ("Add feature" not "Added feature").
- Use the imperative mood ("Move cursor to..." not "Moves cursor to...").
- Limit the first line to 72 characters or less.
- Reference issues and pull requests liberally after the first line.

### R Styleguide

Stick to commonly accepted R styleguides like the [Google's R Style Guide](https://google.github.io/styleguide/Rguide.xml) or the [tidyverse style guide](https://style.tidyverse.org/).

## Additional Notes

Thank you for investing the time and effort to help improve `durakELO`. Your contribution benefits the entire community and is deeply appreciated!
