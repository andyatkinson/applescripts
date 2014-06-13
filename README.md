### Applescripts

#### Opening the VPN dialog from the command line

OS X has a built-in VPN client, the process name is "racoon". We have to re-connect often at work, so this script pops up the UI dialog from the command line. The alias first kills the racoon process, since it may be in a bad state.

### Install

  1. `cp config.sample.yml config.yml`
  2. From the OS X Network preferences, supply the name of your VPN network name in `config.yml`
  3. `chmod +x generate.rb` and `./generate.rb`. This should generate a `openvpn.applescript` file with your VPN network name in it.
  4. Copy the contents of `aliases` to your `~/.bash_profile` and source it (e.g. `source ~/.bash_profile`)
  5. Now you should be able to run: `openvpn`

### Plans

The plan is to add more applescripts. Do you have any applescripts that are time savers?
