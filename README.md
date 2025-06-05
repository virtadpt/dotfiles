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
* `git pull origin main`
* `git branch --set-upstream-to=origin/main main`
* `exit`

Run `chezmoi diff` to get a diff-style outline of all of the file changes that will be made.

Run `chezmoi apply` to copy all of the files out of the repo into their proper places in your home directory.

