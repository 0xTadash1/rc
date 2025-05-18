# Disables colorization by the formatters (nroff, troff, groff). 
# May be necessary when using LESS_TERMCAP_xx or sharkdp/bat.
export MANROFFOPT='-c'

man() (
    # Require `PAGER=less`
    # Require to `less` with `-R` or `--RAW-CONTROL-CHARS`

    # Some variables would be overridden if `--use-color` were passed to `less`,
    # which colors the `less` interfaces such as prompts and status columns.

    # cf. termcap(5)
    export LESS_TERMCAP_mb='[5;33m'  #blink,fg3(yellow)
    export LESS_TERMCAP_md='[1;34m'  #bold,fg4(blue)
    export LESS_TERMCAP_me='[0m'  #reset
    export LESS_TERMCAP_so='[33;44m'  #fg3,bg4(lightBlue)
    export LESS_TERMCAP_se='[0m'  #reset
    export LESS_TERMCAP_us='[1;3;33m'  #bold,italic,fg3(yellow)
    export LESS_TERMCAP_ue='[0m'  #reset
    export LESS_TERMCAP_mr='[7m'  #reverse
    export LESS_TERMCAP_mh='[2m'  #dim
    command man "$@"
)
