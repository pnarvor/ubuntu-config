# This cleanly add a path to either an empty or an already filled environement
# variable.
prepend-path() {
    local variable=$1
    if [ -z "${!variable}" ]; then
        export $1=$2;
    else
        export $1=$2:"${!variable}";
    fi
}
append-path() {
    local variable=$1
    if [ -z "${!variable}" ]; then
        export $1=$2;
    else
        export $1="${!variable}":$2;
    fi
}


alias tmuxl='tmux list_sessions'
alias ll='ls -alFh'
alias diff='git diff --no-index'
function diff-dirs {
    tree $1 > ~/tree1.txt
    tree $2 > ~/tree2.txt
    # diff ~/tree1.txt ~/tree2.txt
    diff ~/tree1.txt ~/tree2.txt
    rm ~/tree1.txt ~/tree2.txt
}
function diff-files {
    find $1 -type f -exec cat {} > ~/files1.txt \;
    find $2 -type f -exec cat {} > ~/files2.txt \;
    diff ~/files1.txt ~/files2.txt
    rm ~/files1.txt ~/files2.txt
}

temp-monitor() {
    while [ 1 ] ; do sensors; sleep 1; done
}

alias dewa='ssh arv@62.210.75.34'

alias ipython3='ipython3 -i'
