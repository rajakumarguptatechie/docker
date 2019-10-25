This is light weight conatiner for Ansible.

Keep all your ansible tasks/roles on host machine in <someDirectory>.
Run below docker command to spin up ansible container which will map current host's ansible directory into container at /var/workspace.

cd <someDirectory>
docker run -it -v ${PWD}:/var/workspace rajakumargupta/ansible:latest
ANS_USER=ansible
ANS_PASSWORD='myRemotePassword'

#Simple run
ansible-playbook task-name.yml -i inventory

#Smart run
ansible-playbook task-name.yml -vv -i hosts.py -e ansible_user="$ANS_USER" -e ansible_ssh_pass="$ANS_PASSWORD"
