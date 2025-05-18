LESS="${LESS:+$LESS }--RAW-CONTROL-CHARS --quit-if-one-screen"
LESS="${LESS:+$LESS }--chop-long-lines"
#LESS="${LESS:+$LESS }--wordwrap"
LESS="${LESS:+$LESS }--rscroll='*n…'"
LESS="${LESS:+$LESS }--jump-target=.5 --incsearch --search-options=W --ignore-case"
LESS="${LESS:+$LESS }--tilde"
LESS="${LESS:+$LESS }--shift=4"

#LESS="${LESS:+$LESS }--no-search-headers"
#LESS="${LESS:+$LESS }--no-number-headers"

LESS="${LESS:+$LESS }--use-color"
LESS="$LESS -DCK-\$"  # Control characters -- bright-Black
LESS="$LESS -DEkR\$"  # Errors and Messages -- Black / bright-Red
LESS="$LESS -DPBk\$"  # Prompts -- bright-Blue / Black
LESS="$LESS -DMCk\$"  # Mark letters in the status column -- Cyan / Black
LESS="$LESS -DNK-\$"  # Line numbers -- bright-Black
LESS="$LESS -DSkY\$"  # Search results -- Black / bright-Yellow
LESS="$LESS -DWkM\$"  # Highlight by `-w` or `-W` -- Black / bright-Magenta
LESS="$LESS -DRK-\$"  # `--rscroll` char -- bright-Black
LESS="$LESS -Dd+B-\$"  # Bold text -- (bold+) bright-Blue
LESS="$LESS -Du+Y-\$"  # Underlined text -- (underline+) bright-Yellow
