#! /bin/bash
function set_color() {
	set +u
	if [[ "${1}" != "-" ]]; then
		fg="38;5;${1}"
	fi
	if [[ "${2}" != "-" ]]; then
		bg="48;5;${2}"
		[[ -n "${fg}" ]] && bg=";${bg}"
	fi
}
for ((i=0; i<255; i++)); do
	set_color - $i
	echo -e "\033[${fg}${bg}m              \e[0m $i"
done