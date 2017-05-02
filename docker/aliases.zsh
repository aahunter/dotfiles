alias docker-clean='docker-stopped || true && docker-untagged'
alias docker-kill-all='docker kill $(docker ps -q)'
alias docker-stopped='printf "\n>>> Deleting stopped containers\n\n" && docker rm $(docker ps -a -q)'
alias docker-untagged='printf "\n>>> Deleting untagged images\n\n" && docker rmi $(docker images -q -f dangling=true)'
alias docker-rmi='printa "\n>>> Deleting all unused images\n\n" && docker rmi $(docker ps -q)'
alias docker-dangling='docker volume rm $(docker volume ls -qf dangling=true)'
alias ansible="docker run --rm --interactive --tty -v /etc/timezone:/etc/timezone -v `pwd`:/etc/ansible -v ${HOME}/.ssh:/data/.ssh -it muccg/ansible"
