require 'spec_helper'

describe 'opera::beta' do
  it do
    should contain_class('opera::beta')
    should contain_package('Opera-Beta').with({
      :provider => 'appdmg_eula',
      :source   => 'http://get.geo.opera.com/pub/opera-beta/30.0.1835.49/mac/Opera_beta_30.0.1835.49_Setup.dmg'
    })
  end
end
