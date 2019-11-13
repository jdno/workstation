# Workstation

This repository contains an [Ansible] playbook that sets up a new workstation.

## Development

Changes to the playbook can be tested quickly and easily by running Ansible in a
Docker container. First, build the image:

    $ docker build -t workstation:latest .

Then, run Ansible to test your changes:

    $ docker run -v "$(pwd)/workstation.yml:/opt/ansible/workstation.yml" workstation:latest ansible-playbook workstation.yml

## License

This project is licensed under the terms of the [MIT License][mit]. See the
[LICENSE](./LICENSE.txt) file for more information.

[ansible]: https://www.ansible.com/
[jdno]: https://github.com/jdno
[mit]: https://opensource.org/licenses/MIT
