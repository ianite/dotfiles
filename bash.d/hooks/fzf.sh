# vim: set ft=sh:ts=4:sw=4:noet:nowrap # bash

# this script should only ever be sourced
[[ ${BASH_SOURCE[0]} != ${0} ]] || exit 1

# bail if executable is not present
[[ -x ${HOME}/.fzf/bin/fzf ]] || return 1

# add fzf bin directory to path
[[ "$PATH" == *${HOME}/.fzf/bin* ]] || \
  export PATH="$PATH:${HOME}/.fzf/bin"

# add to MANPATH
[[ "${MANPATH}" == *${HOME}/.fzf/man* && -d "${HOME}/.fzf/man" ]] || \
  export MANPATH="$MANPATH:${HOME}/.fzf/man"

# auto-completion
source "${HOME}/.fzf/shell/completion.bash" 2> /dev/null

# key bindings
source "${HOME}/.fzf/shell/key-bindings.bash" 2> /dev/null
