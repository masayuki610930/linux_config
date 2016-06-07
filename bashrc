#alias
alias la='ls -la'
alias rm='rm -i'
alias ssh='ssh -A'
alias grep='grep --color'

#prompt
PS1='\h[$PWD]$ '

#bind
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# [History]
HISTSIZE=5000
HISTFILESIZE=5000

# コマンド入力時間を記録
HISTTIMEFORMAT='%y/%m/%d %H:%M:%S  '

# historyに記録しないコマンド
HISTIGNORE=ls:la:ll:lla:history:h:pwd
HISTCONTROL=ignoreboth
