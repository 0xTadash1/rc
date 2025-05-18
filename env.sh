# 0 or greater, in 8-byte signed int.
export HISTSIZE=100000  # Max num of the internal (memory) history
export SAVEHIST=100000  # Max num of history to be saved in `HISTFILE`

export SUDO_PROMPT='Password for [1;3;32m%p[m 🔐: '  # Bold;Italic;Green>%p

export GNUPGHOME="${GNUPGHOME:-"$XDG_DATA_HOME/gnupg"}"
