alias ls='lsd'
alias vi='vim'

function fish_prompt
    set_color brblue 
    date "+{%H:%M:%S @ %a, %d %b %Y}"
    set_color brgreen  
    echo "[drwho @ windbringer " (pwd) "] \$ "
    end

set PATH /usr/local/sbin /usr/local/bin /usr/bin /usr/lib/jvm/default/bin /usr/bin/site_perl /usr/bin/vendor_perl /usr/bin/core_perl /home/drwho/.rvm/bin /home/drwho/bin /home/drwho/go/bin

