# Public: Install Opera to /Applications.
#
# Examples
#
#   include opera
class opera {
  package { 'Opera':
    provider => 'appdmg_eula',
    source   => 'http://get.geo.opera.com/pub/opera/desktop/15.0.1147.153/mac/Opera_15.0.1147.153_Setup.dmg'
  }
}
