# Public: Install Opera Developer to /Applications.
#
# Examples
#
#   include opera::developer
class opera::developer {
  package { 'Opera-Developer':
    provider => 'appdmg_eula',
    source   => 'http://get.geo.opera.com/pub/opera-developer/31.0.1876.0/mac/Opera_Developer_31.0.1876.0_Setup.dmg'
  }
}
