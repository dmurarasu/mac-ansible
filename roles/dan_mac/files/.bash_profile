PS1='$(gbt $?)'
export GBT_CARS='Status, Os, Hostname, Dir, Git, Sign'
export GBT__SOURCE_MD5_LOCAL='md5'
export GBT__SOURCE_MD5_CUT_LOCAL='4'
export GBT__HOME='/usr/local/share/gbt-git'
source "$GBT__HOME/sources/gbts/cmd/local.sh"
alias docker='gbt_docker'
alias mysql='gbt_mysql'
alias screen='gbt_screen'
alias ssh='gbt_ssh'
alias su='gbt_su'
alias sudo='gbt_sudo'
alias vagrant='gbt_vagrant'

for f in /usr/local/etc/bash_completion.d/*; do source $f; done
export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

_complete_ssh_hosts ()
{
        COMPREPLY=()
        cur="${COMP_WORDS[COMP_CWORD]}"
        comp_ssh_hosts=`cat ~/.ssh/known_hosts | \
                        cut -f 1 -d ' ' | \
                        sed -e s/,.*//g | \
                        grep -v ^# | \
                        uniq | \
                        grep -v "\[" ;
                cat ~/.ssh/config | \
                        grep "^Host " | \
                        awk '{print $2}'
                `
        COMPREPLY=( $(compgen -W "${comp_ssh_hosts}" -- $cur))
        return 0
}
complete -F _complete_ssh_hosts ssh

complete -C /usr/local/bin/terraform terraform
