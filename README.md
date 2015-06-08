Steps
====
- Update OSX
- Install XCode
- Install Sublime Text 3
- Install Sublime Package Manager
	- Sublimerge pro (vcs tool)
	- VCS Gutter (shows changes to files in gutter)
	- Javascript snippets (nice js shortcuts)
	- JSFormat (JS Formatting plugin)
	- JSHint (JS Hinting)
	- JavaScriptNext (Better JS Syntax highlighter)
	- SideBarEnhancements (File handling enhancements in the sidebar)
	- Indent XML
- Install Sequel Pro
- App Store
	- Caffeine
	- CodeRunner
	- Slack
	- Evernote
- Install Node version manager
	- Follow instructions & add to .extra dotfile
- Install Ruby Version Manager
	- https://rvm.io/
- Install global node modules
	- npm install -g grunt-cli
	- npm install -g mocha

- Add Git credentials to .extra dotfile
- Run dotfiles:

# Rob Huzzey dotfiles

## Installation

To install, `cd` into your local `dotfiles` repository and then:

```bash
source .osx
source .brew
source bootstrap.sh
```

### Specify the `$PATH`

If `~/.path` exists, it will be sourced along with the other files, before any feature testing (such as [detecting which version of `ls` is being used](https://github.com/mathiasbynens/dotfiles/blob/aff769fd75225d8f2e481185a71d5e05b76002dc/.aliases#L21-26)) takes place.

Here’s an example `~/.path` file that adds `~/utils` to the `$PATH`:

```bash
export PATH="$HOME/utils:$PATH"
```

### Add custom commands without creating a new fork

If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.

My `~/.extra` looks something like this:

```bash
# Git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME="Rob Huzzey"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="$EMAIL"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

You could also use `~/.extra` to override settings, functions and aliases from my dotfiles repository.

### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

### Install Homebrew formulae

When setting up a new Mac, you may want to install some common [Homebrew](http://brew.sh/) formulae (after installing Homebrew, of course):

```bash
./.brew
```

# Copied from:
## Author

| [![twitter/mathias](http://gravatar.com/avatar/24e08a9ea84deb17ae121074d0f17125?s=70)](http://twitter.com/mathias "Follow @mathias on Twitter") |
|---|
| [Mathias Bynens](http://mathiasbynens.be/) |