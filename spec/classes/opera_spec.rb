require 'spec_helper'

describe 'opera' do
  let(:facts) { default_test_facts }

  it do
    should include_class('boxen::config')
    should contain_class('opera')

    should contain_exec('Download Opera').with({
      :command     => "/usr/bin/curl -o /test/boxen/cache/opera.dmg -C - -k -L -s --url 'http://www.opera.com/download/get/?id=35909&location=360&nothanks=yes&sub=marine'",
      :logoutput   => 'on_failure'
    })

    should contain_package('Opera').with({
      :provider => 'appdmg_eula',
      :source   => '/test/boxen/cache/opera.dmg'
    })

    should contain_file('/test/boxen/cache/opera.dmg').with({
      :ensure => 'absent'
    })
  end
end
