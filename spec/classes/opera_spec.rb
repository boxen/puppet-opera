require 'spec_helper'

describe 'opera' do
  it do
    should contain_package('Opera').with({
      :provider => 'appdmg_eula',
      :source   => 'http://www.opera.com/download/get/?id=35909&location=360&nothanks=yes&sub=marine',
    })
  end
end
