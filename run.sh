# socket issue https://ttl255.com/ansible-fixing-issues-with-control-socket/
DIR="/root/.ansible/pc/"
if [ -d "$DIR" ]; then
  echo "Removing previous socket connections in ${DIR}..."
  rm -rf ${DIR}/*
fi

# Start
ansible-playbook ./ansible/lab_start.yml -i hosts

# End
# ansible-playbook ./ansible/lab_stop.yml -i hosts
