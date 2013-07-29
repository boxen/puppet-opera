# Public: Install Opera Next to /Applications.
#
# Examples
#
#   include opera::next
class opera::next {
  $download_url = 'http://www.opera.com/download/get/?id=35821&location=360&nothanks=yes&sub=marine'
  $install_file = '/tmp/opera-next.dmg'

  # Download Opera using cURL to prevent failure from dynamic url

  exec { 'Download Opera-Next':
    command     => "/usr/bin/curl -o ${install_file} -C - -k -L -s --url '${download_url}'",
    logoutput   => 'on_failure',
    creates     => '/var/db/.puppet_appdmg_installed_Opera-Next'
  }
  ~> package { 'Opera-Next':
    provider => 'appdmg_eula',
    source   => $install_file
  }
  ~> file { $install_file:
    ensure => 'absent'
  }
}
