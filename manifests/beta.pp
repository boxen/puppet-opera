# Public: Install Opera Beta to /Applications.
#
# Examples
#
#   include opera::beta
class opera::beta {
  package { 'Opera-Beta':
    provider => 'appdmg_eula',
    source   => 'http://get.geo.opera.com/pub/opera-beta/30.0.1835.49/mac/Opera_beta_30.0.1835.49_Setup.dmg'
  }
}