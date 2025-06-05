# dotfiles
My shell dotfiles, managed with [chezmoi](https://www.chezmoi.io/).

On a box, this repo gets cloned into _.local/share/chezmoi_ by `chezmoi`.

Files were added with `chezmoi add ~/path/to/foo`

Any edits prior to pushing to Github (for redacting API keys and suchlike) were done with `chezmoi edit ~/path/to/foo`

To deploy these gitfiles to a new account, run `chezmoi -v apply`

To successfully run Git commands in the chezmoi repo, you have to run `chezmoi cd` first.  Then you have to `exit` or `^D` to get back to your old shell.

