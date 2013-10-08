# Public: Install Opera to /Applications.
#
# Examples
#
#   include opera
class opera {
  package { 'Opera':
    provider => 'appdmg_eula',
    source   => 'http://get.geo.opera.com/pub/opera/desktop/17.0.1241.45/mac/Opera_17.0.1241.45_Setup.dmg'
  }
}
