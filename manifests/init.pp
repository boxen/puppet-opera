# Public: Install Opera to /Applications.
#
# Examples
#
#   include opera
class opera {
  package { 'Opera':
    provider => 'appdmg_eula',
    source   => 'http://get.opera.com/pub/opera/desktop/18.0.1284.49/mac/Opera_18.0.1284.49_Setup.dmg'
  }
}
