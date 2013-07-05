require 'spec_helper'

describe 'opera' do
  it do
    should contain_package('Opera').with({
      :provider => 'appdmg',
      :source   => 'http://get.geo.opera.com/pub/opera/desktop/15.0.1147.132/mac/Opera_15.0.1147.132_Setup.dmg',
    })
  end
end
