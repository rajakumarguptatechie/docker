Thisi is light weight conatiner for ansible.

Keep all your ansible tasks/roles on local host in <someDirectory>.
Run below docker command to spin up ansible container which will map current host directory into container at /var/workspace.

cd <someDirectory>
docker run -it -v ${PWD}:/var/workspace ansible:latest bash
