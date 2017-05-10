# vim: set ft=sh:ts=2:sw=2:noet:nowrap # bash

# this script should only ever be sourced
[[ ${BASH_SOURCE[0]} != ${0} ]] || exit 1

[[ -n ${1} ]] || return 1

# pick the best recursive grep option available
for prg in 'rg' 'ag'; do
  inpath ${prg} && alias g="${prg} --ignore-case" && break
done ; unset prg

# use a function wrapper if we are stuck with plain grep
if ! alias g > /dev/null 2>&1; then
  function g() { grep -inRHI "$@" .; }
fi
