# ansible-dot-files
## plan
I either need to get a setup file made (which shouldn't be too hard right?)
or I can go based off of a presetup arch distro (just write down the steps) ez

## Todo:
- setup system and document steps
- copy documented steps into local.yml file

## Setup Steps:
1. Install distro (Arch: [install guide](https://wiki.archlinux.org/title/Installation_guide), or Ubuntu/Debian)
2. install ansible (ansible-pull) + git
- `sudo pacman install `
- `sudo apt-get install ansible git`
3. run ansible-pull command to run through playbook

## Notes:
After installing Ansible pull on a machine, just run this command:
`ansible-pull -U https://gitserver.com/this_repo.git`
This will look for and run the local.yaml file.


##### Links:
- [Most helpful Video - By LearnLinuxTV](https://youtu.be/gIDywsGBqf4)
