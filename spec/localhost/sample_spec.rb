require 'spec_helper'

describe command('curl -s -k -I http://alexharvey3118.s3-website-ap-southeast-2.amazonaws.com/chats.html') do
  its(:stdout) { should match /200/ }
end
