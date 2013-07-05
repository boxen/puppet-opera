# Public: Install Opera to /Applications.
#
# Examples
#
#   include opera
class opera {
  package { 'Opera':
    provider => 'appdmg',
    source   => 'http://get.geo.opera.com/pub/opera/desktop/15.0.1147.132/mac/Opera_15.0.1147.132_Setup.dmg',
  }
}
