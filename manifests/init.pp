# Public: Install Opera to /Applications.
#
# Examples
#
#   include opera
class opera {
  package { 'Opera':
    provider => 'appdmg_eula',
    source   => 'http://get.geo.opera.com/pub/opera/desktop/16.0.1196.62/mac/Opera_16.0.1196.62_Setup.dmg'
  }
}
