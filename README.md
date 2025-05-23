# New machine setup

## Basics

* `xcode-select --install`
* https://brew.sh/
* `cp .vimrc ~`
* `git config --global user.email "your@email.com"`
* `git config --global user.name "Your Name"`

## Terminal

* iTerm2
    * Download and install iTerm2 from [here](https://iterm2.com/)
    * Settings > Profiles > Terminal > Check "Unlimited scrollback"
    * Settings > Profiles > Colors > Presets > Tango Dark
* Install fish
    * `brew install fish`
    * Make fish the default
        ```
        sudo sh -c 'echo "$(which fish)" >> /etc/shells'
        chsh -s "$(which fish)"
        ```
    * Fix paths. Add to `~/.config/fish/config.fish`:
        ```
        if test -d /opt/homebrew/bin
            eval "$(/opt/homebrew/bin/brew shellenv)"
        end
        ```
* Make vim the default
    ```
    echo 'export EDITOR="vim"' >> ~/.bashrc
    echo 'export VISUAL="vim"' >> ~/.bashrc
    echo 'export EDITOR="vim"' >> ~/.zshrc
    echo 'export VISUAL="vim"' >> ~/.zshrc
    echo 'set -gx EDITOR "vim"' >> ~/.config/fish/config.fish
    echo 'set -gx VISUAL "vim"' >> ~/.config/fish/config.fish
    ```
* Install Starship
    * Download and install "Hack Nerd Font": `brew install --cask font-hack-nerd-font`
    * iTerm2 > Settings > Profiles > Text > Font > Choose "Hack Nerd Font Mono"
        * Note: The old laptop has "FiraCode Nerd Font" in iTerm2: `brew install --cask font-fira-code-nerd-font`
    * Bash: `echo 'eval "$(starship init bash)"' >> ~/.bashrc`
    * Zsh: `echo 'eval "$(starship init zsh)"' >> ~/.zshrc`
    * Fish: `echo 'starship init fish | source' >> ~/.config/fish/config.fish`
    * `cp starship.toml ~/.config/`
* Install fish extensions
    * Install oh-my-fish: [Instructions](https://github.com/oh-my-fish/oh-my-fish)
    * `omf install bass colored-man-pages export z`
    * `omf install https://github.com/jhillyerd/plugin-git`
* Finishing touches
    * `brew install ripgrep`
    * `brew install bat`
    * `echo 'alias ll="ls -Ghla"' >> ~/.config/fish/config.fish`
    * `echo 'alias rgh="rg --no-heading --hidden --glob '\''!.git'\''"' >> ~/.config/fish/config.fish`
