function mkcd take() {
	[[ $# > 0 ]] || {
		printf '%s\n' \
			"$0: At least one operand is required" \
			"Usage: $0 <DIR_TO_CREATE_AND_ENTER>" \
			"       $0 [DIRS_TO_CREATE]... <DIR_TO_ENTER>"
		return 1
	}
	mkdir -p "$@" && cd "${@: -1}"
}
