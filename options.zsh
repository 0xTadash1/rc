# Settings for Zshell Options
# https://zsh.sourceforge.io/Doc/Release/Options.html

# 16.2.1 Changing Directories

#setopt AUTO_CD  # Enable via main.sh
setopt AUTO_PUSHD
setopt CDABLE_VARS  # If `cd` arg is not a directory, perform Tilde Expansion like `~varname`
setopt PUSHD_IGNORE_DUPS

# 16.2.2 Completion

setopt AUTO_NAME_DIRS  # Auto-register vars with absolute paths as named directories
setopt GLOB_COMPLETE  # Filter completion menu if current word is a glob
setopt LIST_PACKED  # Pack completions in minimal lines
#setopt LIST_ROWS_FIRST  # like `ls -x`
# NOTE `AUTO_MENU`, `MENU_COMPLETE`
#   `AUTO_MENU` (default)
#     Menu complete after two consecutive completion requests.
#     This is Default; This is overridden by `MENU_COMPLETE`.
#   `MENU_COMPLETE`
#     Enter completion suggestions instantly; This overrides `AUTO_MENU`.
setopt MENU_COMPLETE


# 16.2.3 Expansion and Globbing
# (Several options can be individually controlled by the Glob Qualifier)

#setopt GLOB_DOTS  # Glob also matches hidden files. Enabled as dotglob in main.sh
setopt GLOB_STAR_SHORT  # Add Syntax: **/* -> **, ***/* -> ***; **/*.c == **.c
# NOTE `MAGIC_EQUAL_SUBST`
#   Enable path completion for named args. I.e. `baz` part of `foo --bar=~/baz`.
#   To be precise, it is as follows. -- Filename Expansion is also done by all
#   unquoted args of the form `foo=bar` appearing after a command. For example
#   `echo foo=~/bar:~/rod`. This also happens with `typeset` and similar.
setopt MAGIC_EQUAL_SUBST


# 16.2.4 History

setopt HIST_EXPIRE_DUPS_FIRST  # Deletes the oldest duplicate when history exceeds HISTSIZE.
setopt HIST_FCNTL_LOCK  # Try a better locking method to write out the history
setopt HIST_FIND_NO_DUPS  # In search, Hide dups shown once, even if separated
#setopt HIST_IGNORE_ALL_DUPS  # Remove all old ones
setopt HIST_IGNORE_DUPS  # Put consecutived histories into one
setopt HIST_IGNORE_SPACE  # Ignore commands starting with space, but accessible until next input
# NOTE `HIST_LEX_WORDS`
#   Don't split quoted words with spaces. This makes the preference to
#   arguments in a history line more accurate.
#   However, it may slow down the loading of large history file.
#setopt HIST_LEX_WORDS
setopt HIST_NO_STORE  # Ignore `history` / `fc -l`, but accessible in memory until next input
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS  # Older dups are omitted when writing out the history
# NOTE `SHARE_HISTORY`
#   Does the same work as `INC_APPEND_HISTORY`. Don't use them together.
#   And timestamps are also stored in `EXTENDED_HISTORY` format.
#   The prefore, `EXTENDED_HISTORY` should not be used at the same time.
setopt SHARE_HISTORY


# 16.2.6 Input/Output

# NOTE `CORRECT`
#   Try to correct the spelling of commands.
#   If `HASH_LIST_ALL` is unset or there are unreadable directories in the path,
#   some commands may be incorrectly reported for spelling errors on first use.
#setopt CORRECT
#setopt CORRECT_ALL  # Try to correct the spelling of all arguments in a line
#setopt INTERACTIVE_COMMENTS  # Enable via main.sh
setopt RM_STAR_SILENT  # Don't query the user before `rm *` or `rm path/*`


# 16.2.10 Shell Emulation
setopt CSH_JUNKIE_LOOPS  # Allow `list; end` form instead of `do list; done`

# 16.2.12 Zle
setopt NO_BEEP
