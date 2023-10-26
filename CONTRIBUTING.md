# Contributing to durakELO

We thank you for considering contributing to `durakELO`. Your involvement makes `durakELO` a powerful tool. Below is a guide on how to participate effectively in package development in this repository.

## Guidelines for Collaborators

### Gitflow Workflow

We employ the [gitflow workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow) for software development. Here is a brief overview:

1. **Branch Setup**: The two main branches are `main` (for stable releases and production-ready code) and `develop` (for developing new features).  

2. **Feature Branches**: These branches originate from `develop` and accommodate individual features. After completing a feature, merge the feature branch back into `develop`.

3. **Release Branches**: Create these branches from `develop` when preparing for a release. They should contain bug fixes and release-related tasks. Upon stabilizing the release, merge the branch into both `main` and `develop` and tag the release commit in `main`.

4. **Hotfix Branches**: These branches, created from `main`, are for urgent fixes on production releases. Merge them into both `main` and `develop` once the fix is completed.

5. **Collaboration**: Regular synchronization, code reviews, pull requests for merging, and requiring approval from team members before merging into main are some good practices.

## Guidelines for Contributers

Ensure to conform to our [Code of Conduct](aleksandr.shemendyuk@unil.ch). If you find unacceptable conduct, please report it.

### Ways to Contribute

#### Bug Reports

Please check if there's an existing [bug report](https://github.com/AlexShem/durakELO/issues) before creating a new one. Include a clear title and description, as much relevant details as possible, and code samples (or test cases) in your report.

#### Suggesting Enhancements

You can suggest improvements by creating new issues with a clear title and description in the [Issues](https://github.com/AlexShem/durakELO/issues) section.

#### First Code Contribution

For your first code contribution, fork the repo, create a branch in your forked repo, make your changes, and submit a pull request to our `develop` branch.

#### Pull Requests

Remove any installation or build dependencies after a build. Also, update the README.md with changes and increase version numbers in example files and README.md accordingly.

## Guidelines on Style

### Git Commit Messages

- Use the present tense ("Add feature" not "Added feature").
- Use the imperative mood ("Move cursor to.." not "Moves cursor to..").
- Limit the first line to 72 characters or less.
- Reference pull requests and issues after the first line.

### R Style Guide

Adhere to accepted R style guides, such as [Google's R Style Guide](https://google.github.io/styleguide/Rguide.xml) or the [tidyverse style guide](https://style.tidyverse.org/).

## Concluding Notes

Your time and effort contribute significantly to `durakELO` and benefits the entire community. We appreciate your inputs!
