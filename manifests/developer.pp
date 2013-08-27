# Public: Install Opera Developer to /Applications.
#
# Examples
#
#   include opera::developer
class opera::developer {
  package { 'Opera-Developer':
    provider => 'appdmg_eula',
    source   => 'http://get.geo.opera.com/pub/opera-developer/17.0.1240.0/mac/Opera_Developer_17.0.1240.0_Setup.dmg'
  }
}
