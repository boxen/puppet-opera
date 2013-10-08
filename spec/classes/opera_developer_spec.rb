require 'spec_helper'

describe 'opera::developer' do
  it do
    should contain_class('opera::developer')
    should contain_package('Opera-Developer').with({
      :provider => 'appdmg_eula',
      :source   => 'http://get.geo.opera.com/pub/opera-developer/18.0.1277.0/mac/Opera_Developer_18.0.1277.0_Setup.dmg'
    })
  end
end
