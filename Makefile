docker-run:
	docker run --name ansible -it -v ~/remote.pem:/root/.ssh/id_rsa -v ~/nova.rc:/root/nova.rc -v ${PWD}:/ansible/playbooks datelco/ansible /bin/bash
docker-start:
	docker start ansible