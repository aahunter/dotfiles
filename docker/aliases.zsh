alias docker-clean='docker-stopped || true && docker-untagged'
alias docker-kill-all='docker kill $(docker ps -q)'
alias docker-stopped='printf "\n>>> Deleting stopped containers\n\n" && docker rm $(docker ps -a -q)'
alias docker-untagged='printf "\n>>> Deleting untagged images\n\n" && docker rmi $(docker images -q -f dangling=true)'
