# Public: Install Opera Next to /Applications.
#
# Examples
#
#   include opera::next
class opera::next {
  package { 'Opera-Next':
    provider => 'appdmg_eula',
    source   => 'http://www.opera.com/download/get/?id=35821&location=360&nothanks=yes&sub=marine'
  }
}
