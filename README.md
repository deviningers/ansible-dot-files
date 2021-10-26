# ansible-dot-files
## plan
I either need to get a setup file made (which shouldn't be too hard right?)
or I can go based off of a presetup arch distro (just write down the steps) ez OR copy someones sorta

okay, maybe pull script to setup arch linux beforehand, playbook can't install

## Steps
- update system
- run setup playbook

1. Run through [install guide](https://wiki.archlinux.org/title/Installation_guide) real quick and only pacstrap the basics 
2. install ansible + git
3. clone repo
4. update system
5. run my playbook, ez


## Notes: 
After installing Ansible on an arch based machine, just run this command:
```ansible-pull -U https://gitserver.com/this_repo.git```
This will look for and run the local.yum file.



##### Links:
- [Most helpful Video - By LearnLinuxTV](https://youtu.be/gIDywsGBqf4)
