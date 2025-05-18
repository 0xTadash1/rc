# Prevent Subversion from making the config directory at home.
svn() {
	if [[ "$#" -gt 0 ]]; then
		local _one="$1"
		shift
		'command' 'svn' \
			"$_one" --config-dir="$XDG_CONFIG_HOME/subversion" "$@"
	else
		'command' 'svn'
	fi
}
