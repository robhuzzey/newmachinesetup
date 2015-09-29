# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && source "$file"
	# echo "loaded file: $file"
done
unset file

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh

# Autocomplete Grunt commands
which grunt > /dev/null && eval "$(grunt --completion=bash)"

# If possible, add bash completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion

# Git auto completion if we have it
[ -f ~/.git-completion ] && source ~/.git-completion
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# MacPorts Installer addition on 2015-06-16_at_15:34:27: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# set node path for Revolver#
export NODE_PATH=/Users/nicki.lever/Desktop/workspace/revolver:$PATH