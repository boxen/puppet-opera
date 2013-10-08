# Public: Install Opera Developer to /Applications.
#
# Examples
#
#   include opera::developer
class opera::developer {
  package { 'Opera-Developer':
    provider => 'appdmg_eula',
    source   => 'http://get.geo.opera.com/pub/opera-developer/18.0.1277.0/mac/Opera_Developer_18.0.1277.0_Setup.dmg'
  }
}
