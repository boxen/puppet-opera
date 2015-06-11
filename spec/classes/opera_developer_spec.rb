require 'spec_helper'

describe 'opera::developer' do
  it do
    should contain_class('opera::developer')
    should contain_package('Opera-Developer').with({
      :provider => 'appdmg_eula',
      :source   => 'http://get.geo.opera.com/pub/opera-developer/31.0.1876.0/mac/Opera_Developer_31.0.1876.0_Setup.dmg'
    })
  end
end
