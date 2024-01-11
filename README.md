# Vim mobile dotfiles

These dotfiles contain configuration for Vim on iOS/iPadOS devices.

## Structure

- `vim-pathogen`: Plugin manager.
- `bundle/`: Directory with submodules containing the installed Vim plugins.
- `config/`: Individual config files per category.
- `.vimrc`: Main Vim config file. Loads the other config files.

## Installation

- Install the [Working Copy](https://workingcopy.app/) app.
- Install the [iVim](https://apps.apple.com/nl/app/ivim/id1266544660?l=en-GB) app.
- In the Working Copy app, sign in to GitHub and clone this repository.
  - Make sure to clone all the submodules in this repository.
  - Also set up your commit signing.
- In the repository configuration, link the repository to a directory. In the file chooser, choose "On this iPhone/iPad", open the "iVim" directory and create a new directory called `vim-mobile`. Then select/open that for linking.
  - The repository linking feature requires a one time purchase.
- Create a file (in Vim) in the iVim directory called `.vimrc` and add the contents:
  ```
  source vim-mobile/.vimrc
  ```
- To load the config, reload the app, or run the command `source vim-mobile/.vimrc`.

You can now use Vim on mobile!
