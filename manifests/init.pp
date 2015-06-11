# Public: Install Opera to /Applications.
#
# Examples
#
#   include opera
class opera {
  package { 'Opera':
    provider => 'appdmg_eula',
    source   => 'http://get.geo.opera.com/pub/opera/desktop/30.0.1835.59/mac/Opera_30.0.1835.59_Setup.dmg'
  }
}
