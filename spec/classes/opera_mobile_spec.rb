require 'spec_helper'

describe 'opera::mobile' do
  it do
    should contain_class('opera::developer')
    should contain_package('Opera-Opera').with({
      :provider => 'appdmg_eula',
      :source   => 'http://get.geo.opera.com/pub/opera/sdlbream/1210/Opera_Mobile_Emulator_12.1_Mac.dmg'
    })
  end
end
