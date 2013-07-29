# Public: Install Opera to /Applications.
#
# Examples
#
#   include opera
class opera {
  $download_url = 'http://www.opera.com/download/get/?id=35909&location=360&nothanks=yes&sub=marine'
  $install_file = '/tmp/opera.dmg'

  # Download Opera using cURL to prevent failure from dynamic url
  exec { 'Download Opera':
    command     => "/usr/bin/curl -o ${install_file} -C - -k -L -s --url '${download_url}'",
    logoutput   => 'on_failure',
    creates     => '/var/db/.puppet_appdmg_installed_Opera'
  }
  ~> package { 'Opera':
    provider => 'appdmg_eula',
    source   => $install_file
  }
  ~> file { $install_file:
    ensure => 'absent'
  }
}
