# Set GPG_TTY for gpg-agent to know the current terminal
export GPG_TTY="$(tty)"
gpg-connect-agent UPDATESTARTUPTTY /bye >/dev/null 2>&1

# Configure SSH agent
# If ssh-agent is already running, prefer it.
# Otherwise, use gpg-agent for SSH support if enabled.
if [[ -z "$SSH_AGENT_PID" ]]; then
	case "$(gpgconf --list-options 'gpg-agent' 2>/dev/null \
		| awk -F':' '$1=="enable-ssh-support" {print $10}')" in
	'1')
		if [[ "${gnupg_SSH_AUTH_SOCK_by:-0}" != "$$" ]]; then
			export SSH_AUTH_SOCK="$(gpgconf --list-dirs 'agent-ssh-socket')"
		fi
		;;
	'0')
		# Explicitly disabled by 'enable-ssh-support = 0'
		;;
	'')
		echo 'Warning: ssh-agent is not running. To use gpg-agent as your SSH agent:'
		echo '	echo "enable-ssh-support = 1" >> "${GNUPGHOME:-~/.gnupg}"/gpg-agent.conf && gpgconf --kill gpg-agent'
		echo
		echo '(This warning only shows if `enable-ssh-support` is not explicitly set, neither `0` nor `1`.)'
		;;
	esac
fi
