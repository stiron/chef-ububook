# Description

This is a Chef Solo project for my Ubuntu 12.04 notebook setup.
It is based on my good friend's [DebTop](https://github.com/gregf/chef-debtop) project.

# What does it install?

* It installs the followings
  * Packages (misc packages for my distro)
  * VirtualBox (5.x series)

# How to use it?

You can edit `config/ububook.json` to add remove items from the run list.

After which all you have to do is run `bootstrap.sh`. The bootstrap script installs the
chef-client, it will clone this repository and run Chef Solo.

If you make changes to `config/ububook.json` you'll want to fork this repository 
and edit bootstrap.sh to clone your repository.
