require 'spec_helper'

describe 'opera::developer' do
  it do
    should contain_class('opera::developer')
    should contain_package('Opera-Developer').with({
      :provider => 'appdmg_eula',
      :source   => 'http://get.opera.com/pub/opera-developer/19.0.1326.0/mac/Opera_Developer_19.0.1326.0_Setup.dmg'
    })
  end
end
