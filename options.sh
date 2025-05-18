# cf. https://www.gnu.org/software/bash/manual/html_node/The-Shopt-Builtin.html
# cf. https://zsh.sourceforge.io/Doc/Release/Options.html#Option-Aliases

[[ -n "${BASH_VERSION}" ]] && alias setopt='shopt -e'

setopt autocd
setopt interactive_comments
setopt dotglob
