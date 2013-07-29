require 'spec_helper'

describe 'opera' do
  let(:facts) { default_test_facts }

  it do
    should contain_class('opera')

    should contain_exec('Download Opera').with({
      :command     => "/usr/bin/curl -o /tmp/opera.dmg -C - -k -L -s --url 'http://www.opera.com/download/get/?id=35909&location=360&nothanks=yes&sub=marine'",
      :logoutput   => 'on_failure',
      :creates     => '/var/db/.puppet_appdmg_installed_Opera'
    })

    should contain_package('Opera').with({
      :provider => 'appdmg_eula',
      :source   => '/tmp/opera.dmg'
    })

    should contain_file('/tmp/opera.dmg').with({
      :ensure => 'absent'
    })
  end
end
