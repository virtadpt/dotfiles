# dotfiles
My shell dotfiles, managed with [chezmoi](https://www.chezmoi.io/).

On a box, this repo gets cloned into _.local/share/chezmoi_ by `chezmoi`.

Files were added with `chezmoi add ~/path/to/foo`

Any edits prior to pushing to Github (for redacting API keys and suchlike) were done with `chezmoi edit ~/path/to/foo`

To deploy these gitfiles to a new account, run `chezmoi -v apply`

To successfully run Git commands in the chezmoi repo, you have to run `chezmoi cd` first.  Then you have to `exit` or `^D` to get back to your old shell.

To pull your config files over to a new machine, first you have to install chezmoi.  Then initialize a new local copy of your dotfile repo: `git@github.com:$GITHUB_USERNAME/dotfiles.git`

chezmoi doesn't set up the remote for you, so you have to do it yourself:

* `chezmoi cd`
* `git remote add origin git@github.com:$GITHUB_USERNAME/dotfiles.git`
* `git branch --set-upstream-to=origin/main main`
* `git pull origin main`
* `exit`

On Linux and OSX boxen, the local copy of your dotfiles gets cloned into `~/.local/share/chezmoi`

