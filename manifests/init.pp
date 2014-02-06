# Public: Install Opera to /Applications.
#
# Examples
#
#   include opera
class opera {
  package { 'Opera':
    provider => 'appdmg_eula',
    source   => 'http://get.geo.opera.com/pub/opera/desktop/19.0.1326.59/mac/Opera_19.0.1326.59_Setup.dmg'
  }
}
