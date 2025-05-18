alias -- -='cd -'

alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'

alias ls='ls -hF --time-style=long-iso --hyperlink=auto --color=auto'

alias l='ls --group-directories-first'
alias la='l -A'
alias ll='ls -o --group-directories-first'  # -o  `-l` without group
alias lla='ll -A'

alias lt='ls -ot'
alias lta='lt -A'

alias lS='ls -oS'  # -S  sort by size
alias lSa='lS -A'

# `--open-tty` is useful for interactive apps
alias xargs='xargs --verbose --open-tty --max-procs=0'
alias grep='grep --color'
alias mkdir='mkdir -pv'

alias mv='mv -iv'
alias cp='cp -riv'"$(
	# Use CoW if possible
	case "$(uname -s)" in
	'Linux')
		echo '--reflink=auto' ;;
	'Darwin')
		echo '-c' ;;
	*)
		: ;;
	esac
)"
alias rm='rm -rIv'  # `-I` == `--interactive=once`

alias wget='wget --hsts-file="$XDG_DATA_HOME/wget/.wget-hsts"'

alias suod='sudo'
alias sduo='sudo'
alias sodu='sudo'
alias soud='sudo'

alias g='git'
alias gti='git'

alias c='code'
alias n='nvim'

alias initlua='(cd "${XDG_CONFIG_HOME:-$HOME}/nvim" && n init.lua)'
alias pluginslua='(cd "${XDG_CONFIG_HOME:-$HOME}/nvim" && n lua/plugins.lua)'

alias profile='(cd "$HOME" && $EDITOR .profile)'

alias sshconf='(cd "$HOME/.ssh" && $EDITOR config)'
alias gitconf='(cd "$XDG_CONFIG_HOME/git" && $EDITOR config)'

# Parameter substitution is not used for compatibility reasons
alias path='echo "$PATH" | tr ":" "\n"'
