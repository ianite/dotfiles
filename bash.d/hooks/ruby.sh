[[ -n $@ ]] || return 1

return 0

export PATH=$(
  IFS=':' read -a gempath <<< $(gem environment gempath)
  gempath=$(printf ":%s" "${gempath[@]/%//bin}")
  echo ${gempath:1}
):${PATH}
