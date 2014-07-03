# Usage:
# source iterm2.zsh
 
# iTerm2 window/tab color commands
#   Requires iTerm2 >= Build 1.0.0.20110804
#   http://code.google.com/p/iterm2/wiki/ProprietaryEscapeCodes
tab-color() {
    echo -ne "\033]6;1;bg;red;brightness;$1\a"
    echo -ne "\033]6;1;bg;green;brightness;$2\a"
    echo -ne "\033]6;1;bg;blue;brightness;$3\a"
}
tab-reset() {
    echo -ne "\033]6;1;bg;*;default\a"
}
 
# Change the color of the tab when using SSH
# reset the color after the connection closes
color-cd() {
    cd $*
    currentpath=`pwd`
    if [[ -n "$ITERM_SESSION_ID" ]]; then
        if [[ $currentpath =~ "config/locales/common" ]]; then
            # Red
            tab-color 255 0 0
        else
            if [[ $currentpath =~ "goldenmanager/desktop" ]]; then
                # Orange
                tab-color 239 159 61
            else
                if [[ $currentpath =~ "goldenmanager/mobile" ]]; then
                    # Purple
                    tab-color 157 111 179
                else
                    tab-reset
                fi
            fi
        fi
    fi
}
 
alias cd=color-cd
