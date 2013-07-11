require 'spec_helper'

describe 'opera::next' do
  it do
    should contain_class('opera::next')
    should contain_package('Opera-Next').with({
      :provider => 'appdmg_eula',
      :source   => 'http://www.opera.com/download/get/?id=35821&location=360&nothanks=yes&sub=marine'
    })
  end
end
