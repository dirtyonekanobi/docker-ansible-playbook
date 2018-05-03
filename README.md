# 'Dockerized' Ansible Playbook Runner

This repository features several examples of running an Ansible playbook within an Docker container.  This example is built with Ansible Tower/AWX in mind, but can be run from a local or shared control machine.

### Why?

The main driving forces for this approach is a need to isolate dependencies needed for running Ansible playbooks (ala virtualenv).  This is especially true when using Ansible Tower or AWX, where the server(s) involved could be shared by multiple teams.  This method also removes the need for `root` access to the server(s).  This method can also ensure consistency when creating/sharing Ansible playbooks.

...lastly, it's just cool.  Sometimes, that is enough :)

