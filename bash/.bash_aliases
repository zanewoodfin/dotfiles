# some more ls aliases
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Rails aliases
alias rspec='bundle exec rspec'
alias rake='bundle exec rake'
alias rails='bundle exec rails'

# Kill sidekiq workers
alias xsidekiq="ps -ef | grep sidekiq | grep -v grep | awk '{print \$2}' | xargs kill -9"
