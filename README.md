mac-ansible
===========

I use this project to configure my macOS the way I like it. That way I can wipe
and re-install with less effort. See my
[blog post](https://adamj.eu/tech/2019/03/20/how-i-provision-my-macbook-with-ansible/).

Getting Started
---------------

1. Install [homebrew](http://brew.sh/) with the command from the site
2. `brew install pyenv`
3. `pyenv install <latest_python_version>` (Check playbook up to date)
4. Make sure pyenv's python on path (it will be after my shell settings are in place from playbook)
5. `pyenv local <latest_python_version_you_just_installed>` (might not be needed in later versions but currently next cmd would not work without)
6. python -m venv venv
7. source venv/bin/activate
8. `pip install ansible` (always the best way to install Ansible)
9. Then `ansible-playbook playbook.yml`

Fork! Copy! Adapt!
------------------

This is distributed under the Unlicense so you can do whatever you want with
it, see LICENSE.
