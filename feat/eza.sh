# Aliases for @eza-community/eza

# The default with overridable options
# NOTE:
#   Don't include `-G` as it disables `-@`. This allows `-@` to be used as `eza -l@` or `e -l@`.
alias eza='eza -bF --time-style=long-iso --smart-group --hyperlink --color-scale --icons --git'

alias e='eza --group-directories-first'
alias ea='e -a'
alias el='eza -lG --group-directories-first'
alias ela='el -a'

alias eg='eza -l --group-directories-first --git-ignore'
alias ega='eza -la --group-directories-first --ignore-glob=".git"'

alias et='eza -l --sort=age'
alias eta='et -a'

alias es='eza -l --sort=size'
alias esa='es -a'

# Set aliases for Tree view
set _cmd _i
for _cmd in {e,el,eg,et,es}{,a}; do
	alias ${_cmd}0="${_cmd} --tree"
	for _i in 1 2 3 4 5 6 7 8 9; do
		alias ${_cmd}${_i}="${_cmd} --tree --level=${_i}"
	done
done
unset _cmd _i
