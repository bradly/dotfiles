alias be='bundle exec'
alias c='bundle exec rails c'
alias r='touch tmp/restart.txt'
alias t='tail -n 500 -f log/development.log'
alias rake='bundle exec rake'
alias rspec='bundle exec rspec'
alias autotest='bundle exec autotest'
alias migrate='bundle exec rake db:migrate && RAILS_ENV=test bundle exec rake db:migrate; RAILS_ENV=development'
