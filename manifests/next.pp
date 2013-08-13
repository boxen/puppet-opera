# Public: Install Opera Next to /Applications.
#
# Examples
#
#   include opera::next
class opera::next {
  package { 'Opera-Next':
    provider => 'appdmg_eula',
    source   => 'http://get.geo.opera.com/pub/opera-next/16.0.1196.41/mac/Opera_Next_16.0.1196.41_Setup.dmg'
  }
}
