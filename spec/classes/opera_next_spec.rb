require 'spec_helper'

describe 'opera::next' do
  it do
    should contain_class('opera::next')
    should contain_package('Opera-Next').with({
      :provider => 'appdmg_eula',
      :source   => 'http://get.geo.opera.com/pub/opera-next/16.0.1196.41/mac/Opera_Next_16.0.1196.41_Setup.dmg'
    })
  end
end
