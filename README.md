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

## Secrets

Some roles in the playbook require access to secrets, for example to restore the
private SSH keys. These secrets are stored inside a [1Password] vault and
[looked up](https://docs.ansible.com/ansible/latest/collections/community/general/onepassword_lookup.html)
at runtime when the playbook is executed.

The credentials for the 1Password vault are taken from an Ansible vault file,
which is encrypted using a GPG key.

## License

This project is licensed under the terms of the [MIT License][mit]. See
[LICENSE](./LICENSE) for more information.

[1password]: https://1password.com/
[ansible]: https://www.ansible.com/
[homebrew]: https://brew.sh/
[mit]: https://opensource.org/licenses/MIT
