#!/bin/sh
ansible-galaxy install -p ./roles -r requirements.yml
ansible-playbook -i "localhost," -c local --user=$USER --ask-become-pass host.yml
pip install --user jmespath
vagrant up --provider=libvirt
