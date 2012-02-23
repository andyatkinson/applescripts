Opening the VPN dialog from the command line
=====
Description
----
OS X has a built-in VPN client, the process name is "racoon". We have to re-connect often at work, so this script pops up the UI dialog from the command line in order to skip opening it with the mouse. The alias first kills the racoon process, since it may be in a bad state, then pops the dialog.

Install
----
  - `cp config.sample.yml config.yml`
  - From the OS X Network preferences, supply the name of your VPN network name in `config.yml`
  - `chmod +x generate.rb` and `./generate.rb`. This should generate a `openvpn.applescript` file with your VPN network name in it.
  - Copy contents of `aliases` to your ~/.profile, ~/.bash_profile etc.
  - run `openvpn`