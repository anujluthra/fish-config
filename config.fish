
setenv EDITOR "subl -w"

alias edit="subl"
alias editfish="subl ~/.config/fish/."
alias fishdir="cd ~/.config/fish/"

alias gup="git pull --rebase"
alias gcm="git checkout master"

alias rb='cd ~/projects/redbubble'
alias efe='rb and bundle exec rake workers:export_queue FILE=~/errors.json QUEUE=fulfillment_workers_errors --trace'
alias ete='rb and bundle exec rake workers:export_queue FILE=~/errors.json QUEUE=transfer_workers_errors'
alias ebe='rb and bundle exec rake workers:export_queue FILE=~/errors.json QUEUE=background_workers_errors'
alias ie='rb and bundle exec rake workers:import_queue FILE=~/errors.json'
alias rme='rm -v ~/errors.json'
alias lq='sudo rabbitmqctl list_queues'
alias lqe='sudo rabbitmqctl list_queues | grep errors'

alias be='bundle exec'
alias civnc='open vnc://jenkins.local:5010'
alias migrate='be rake db:migrate parallel:prepare[8]; RAILS_ENV=cucumber rake db:migrate'

alias gcm='git checkout master'
alias gu='git up'
alias gco='git checkout -b'

# Load the default rubies
if test -z $rvm_bin_path
  exec bash --login -c "exec fish"
end
