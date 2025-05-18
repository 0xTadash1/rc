THIS_DIRECTORY="$(dirname "${BASH_SOURCE:-$0}")"
THIS_FILENAME='main.sh'

while read -r script; do
	[[ "$script" == *"$THIS_FILENAME" || "$script" == *".plugin.zsh" ]] && continue
	. "$script"
done < <(find "$THIS_DIRECTORY" -type f -regex "$(
	pat='.*\.sh'
	[[ -n "$ZSH_VERSION" ]] && pat="${pat}\|.*\.zsh"
	echo "${pat}\$"
)" | sort)

unset THIS_DIRECTORY THIS_FILENAME script
