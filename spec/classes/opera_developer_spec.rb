require 'spec_helper'

describe 'opera::developer' do
  it do
    should contain_class('opera::developer')
    should contain_package('Opera-Developer').with({
      :provider => 'appdmg_eula',
      :source   => 'http://get.geo.opera.com/pub/opera-developer/20.0.1387.9/mac/Opera_Developer_20.0.1387.9_Setup.dmg'
    })
  end
end
