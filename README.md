# smarter git completions

Adds completions for the following git commands:

* `git add` -- Completes to all unstaged additions (including new files)
* `git checkout` -- Completes to all files that have been modified, and all branches that you have checked out locally
* `git reset` -- Completes to all files that have been modified

---

## Easy installation on OSX

```bash
brew tap demands/tap
brew install smarter-git-completion
```

and add the following to your `.profile`:

```bash
# bash completion for all installed homebrew binaries
if [ -f $BREW_PREFIX/etc/bash_completion ]; then
  source $BREW_PREFIX/etc/bash_completion
fi
```


---

## Credit

With thanks to [@cheerfulstoic](https://github.com/cheerfulstoic)
