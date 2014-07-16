_git_completion_add()
{
    COMPREPLY=( $(compgen -W "$(git ls-files --other --modified --exclude-standard)" -- $1) )
    return 0
}

_git_completion_checkout()
{
    COMPREPLY=( $(compgen -W "$(git diff --name-only)" -- $1) )
    return 0
}

_git_completion_reset()
{
    COMPREPLY=( $(compgen -W "$(git diff --name-only --cached)" -- $1) )
    return 0
}

_git_completion() 
{
    local cur command
    cur="${COMP_WORDS[COMP_CWORD]}"
    command="${COMP_WORDS[1]}"

    _git
    case ${command} in
      add)
        _git_completion_add ${cur}
        ;;
      reset)
        _git_completion_reset ${cur}
        ;;
      checkout)
        _git_completion_checkout ${cur}
        ;;
    esac
    return 0
}
complete -o bashdefault -o default -F _git_completion git
