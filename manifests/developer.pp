# Public: Install Opera Developer to /Applications.
#
# Examples
#
#   include opera::developer
class opera::developer {
  package { 'Opera-Developer':
    provider => 'appdmg_eula',
    source   => 'http://get.geo.opera.com/pub/opera-developer/20.0.1387.9/mac/Opera_Developer_20.0.1387.9_Setup.dmg'
  }
}
