# Colorize ls
alias ls='ls --color=auto'

# Kill sidekiq workers
alias xsidekiq="ps -ef | grep sidekiq | grep -v grep | awk '{print \$2}' | xargs kill -9"
