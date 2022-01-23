# ansible-dot-files
## plan
I either need to get a setup file made (which shouldn't be too hard right?)
or I can go based off of a presetup arch distro (just write down the steps) ez

## Todo:
- setup system and document steps
- copy documented steps into local.yml file
- Possibly go back through and add tags that make sense to everything

## Setup Steps:
1. Install distro (Arch: [install guide](https://wiki.archlinux.org/title/Installation_guide), or Ubuntu/Debian)
- NOTE: Need to add `localhost ansible_connection=local` to /etc/ansible/hosts if hostname is set
2. install ansible (ansible-pull) + git
- `sudo pacman install git ansible`
- `sudo apt-get install ansible git`
3. run ansible-pull command to run through playbook
- `ansible-pull -U https://github.com/deviningers/ansible-dot-files.git`
This will look for and run the local.yaml file.

##### Links:
- [Most helpful Video - By LearnLinuxTV](https://youtu.be/gIDywsGBqf4)
- [Hostname Solution](https://stackoverflow.com/questions/30782736/ansible-pull-with-no-inventory-limitations)
