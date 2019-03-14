#!/usr/bin/env bash

___printversion(){
  
cat << 'EOB' >&2
i3ass - version: 2019.03.14.5
updated: 2019-03-14 by budRich
EOB
}



___printhelp(){
  
cat << 'EOB' >&2
i3ass - i3 assistance scripts


OPTIONS
-------
EOB
}


for ___f in "${___dir}/lib"/*; do
  source "$___f"
done

declare -A __o
eval set -- "$(getopt --name "i3ass" \
  --options "" \
  --longoptions "" \
  -- "$@"
)"

while true; do
  case "$1" in
    -- ) shift ; break ;;
    *  ) break ;;
  esac
  shift
done

if [[ ${__o[help]:-} = 1 ]]; then
  ___printhelp
  exit
elif [[ ${__o[version]:-} = 1 ]]; then
  ___printversion
  exit
fi

[[ ${__lastarg:="${!#:-}"} =~ ^--$|${0}$ ]] \
  && __lastarg="" 





