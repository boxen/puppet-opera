require 'spec_helper'

describe 'opera' do
  it do
    should contain_class('opera')
    should contain_package('Opera').with({
      :provider => 'appdmg_eula',
      :source   => 'http://get.geo.opera.com/pub/opera/desktop/19.0.1326.59/mac/Opera_19.0.1326.59_Setup.dmg'
    })
  end
end
