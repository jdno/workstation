# 💻 Workstation Setup

This repository contains my [Ansible] playbook to automatically provision new
workstations and servers. It is very opinionated and tailored to my own needs.

Feel free to use it as inspiration and fork it.

## Getting Started

The repository contains a [bootstrap script](bin/bootstrap) for macOS that can
be run on a fresh machine. It installs [Homebrew] and [Ansible], installs the
required roles from [Ansible Galaxy](https://galaxy.ansible.com), and then runs
the playbook with `ansible-pull`.

Open a terminal and run the following command. You will be prompted for your
password once so that [Homebrew] can be installed.

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/jdno/workstation/HEAD/bin/bootstrap)"
```

## Requirements

Running the playbook has a few external dependencies that must be satisfied
before Ansible can succeed. The [bootstrap script](bin/bootstrap) and the
[Ansible script](bin/ansible-playbook) ensure that these conditions are met. If
you run the playbook directly, ensure that the following resources exist:

- The user must be signed into the Mac App Store.
- The `gpg` executable must be in the `$PATH`.

## License

This project is licensed under the terms of the [MIT License][mit]. See
[LICENSE](./LICENSE) for more information.

[ansible]: https://www.ansible.com/
[homebrew]: https://brew.sh/
[mit]: https://opensource.org/licenses/MIT
