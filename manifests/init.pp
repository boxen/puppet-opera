# Public: Install Opera to /Applications.
#
# Examples
#
#   include opera
class opera {
  package { 'Opera':
    provider => 'appdmg_eula',
    source   => 'http://www.opera.com/download/get/?id=35909&location=360&nothanks=yes&sub=marine'
  }
}
