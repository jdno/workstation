# Workstation

This repository contains an [Ansible] playbook that sets up a new workstation.
The setup is highly customized for my own, personal needs.

The playbook has been designed to support two different environment:

- A macOS workstation with a desktop interface
- Ubuntu virtual machines with a terminal interface

The repository contains two playbooks: `terminal.yml` and `desktop.yml`. The
first contains only roles that are relevant for terminal environments, while the
latter installs desktop applications that require a graphical user interface.
Both are included by `workstation.yml`, which can be run to set up a full
environment.

## Getting Started

It is highly recommended to [fork](https://github.com/jdno/workstation/fork)
this repository, so that you can customize the playbook to your own needs. If
you're just curious, spin up a virtual machine and clone the repository.

To run the playbook, [Ansible] must be installed first. Installation
instructions can be found in the [installation guide](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html).

The playbook requires `variables.yml` file. Copy the example file, and change
the values in the file:

    cp variables.example.yml variables.yml

After that, you can run the playbook with the following command:

    ansible-playbook workstation.yml

When running the playbook on a server or in a virtual machine, install only the
roles targeting a terminal environment

    ansible-playbook terminal.yml

## Development

Changes to the playbook can be tested quickly and easily by running Ansible in a
Docker container. First, build the image:

    docker build -t workstation:latest .

Then, run Ansible to test your changes:

    docker run -v "$(pwd):/opt/ansible" workstation:latest ansible-playbook -v workstation.yml

Before committing any changes to the playbook, make sure to lint them:

    docker run -v "$(pwd):/opt/ansible" workstation:latest ansible-lint -v workstation.yml

## License

This project is licensed under the terms of the [MIT License][mit]. See the
[LICENSE](./LICENSE.txt) file for more information.

[ansible]: https://www.ansible.com/
[jdno]: https://github.com/jdno
[mit]: https://opensource.org/licenses/MIT
