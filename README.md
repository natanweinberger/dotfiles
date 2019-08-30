# dotfiles

This repository consists of several files that contain Bash aliases and functions that I find useful.

# Install
```bash
# Clone the repo, in this example into a directory called .dotfiles
~ > git clone https://www.github.com/natanweinberger/dotfiles.git ~/.dotfiles
# Run each of the dotfiles in the repo
~ > . ~/.dotfiles/install.sh
```

Add a line to your `.bash_profile` that calls `install.sh`. This will automatically source the dotfiles in new shells.
```bash
# ~/.bash_profile
. ./path/to/dotfiles/install.sh
```

# Notes
`install.sh` identifies all the dotfiles in the directory and sources each of them.

If you add any new dotfiles to the directory, `install.sh` will automatically pick them up next time it's run. `install.sh` is agnostic to the name or location of the dotfiles directory, as well as wherever you are calling it from, so feel free to move it wherever you want - just update the path in your `.bash_profile`.

  ```bash
# You can run install.sh from anywhere!
✅ ~/.dotfiles > . install.sh  # from within the dotfiles directory
# or
✅ ~ > . ~/.dotfiles/install.sh  # from your home directory
# or
✅ ~/Desktop > . ~/.dotfiles/install.sh  # really, from anywhere, it doesn't matter
  ```

# More notes
Most Unix systems run `.bash_profile` in login shells and `.bashrc` in every interactive shell.

On macOS, when Terminal.app opens a new window, it will run `.bash_profile`, not `.bashrc`.

[Reference](https://scriptingosx.com/2017/04/about-bash_profile-and-bashrc-on-macos/)
