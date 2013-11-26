# Public: Install Opera Developer to /Applications.
#
# Examples
#
#   include opera::developer
class opera::developer {
  package { 'Opera-Developer':
    provider => 'appdmg_eula',
    source   => 'http://get.opera.com/pub/opera-developer/19.0.1326.0/mac/Opera_Developer_19.0.1326.0_Setup.dmg'
  }
}
