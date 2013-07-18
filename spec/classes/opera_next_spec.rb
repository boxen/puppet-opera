require 'spec_helper'

describe 'opera::next' do
  let(:facts) { default_test_facts }

  it do
    should include_class('boxen::config')
    should contain_class('opera::next')

    should contain_exec('Download Opera-Next').with({
      :command     => "/usr/bin/curl -o /test/boxen/cache/opera-next.dmg -C - -k -L -s --url 'http://www.opera.com/download/get/?id=35821&location=360&nothanks=yes&sub=marine'",
      :logoutput   => 'on_failure',
      :creates     => '/var/db/.puppet_appdmg_installed_Opera-Next'
    })

    should contain_package('Opera-Next').with({
      :provider => 'appdmg_eula',
      :source   => '/test/boxen/cache/opera-next.dmg'
    })

    should contain_file('/test/boxen/cache/opera-next.dmg').with({
      :ensure => 'absent'
    })
  end
end
