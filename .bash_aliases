# Put aliases here. 
# example:
# alias gs='git status'


#ips 
alias frigg='192.168.86.34'
alias odin='192.168.86.55'

#git
alias g-ru='git remote update'
alias config='/usr/bin/git --git-dir=/home/tim/.cfg/ --work-tree=/home/tim'

#commands
alias open='xdg-open'

##work specific: 
#scripts
alias clear-tests='bash ~/Scripts/clear_tests_html.sh'

#lando
alias l-st='lando start && lando install-telus && lando create-test-content'
alias l-cr='lando drush cr'
alias l-it='lando install-telus && lando create-test-content'
alias l-pt='clear-tests && lando paratest'
alias l-pu='clear-tests && lando phpunit'
alias l-cx='lando drush cex'
alias l-ci='lando drush cim'
alias l-rb='lando rebuild -y'
alias l-if='lando info'
alias l-db='lando info | grep "external_connection: { host: "127.0.0.1", port:"'

