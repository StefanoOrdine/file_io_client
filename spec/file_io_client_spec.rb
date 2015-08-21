require 'spec_helper'

describe FileIoClient do
  it 'has a version number' do
    expect(FileIoClient::VERSION).not_to be nil
  end

  it "actually works" do
    expect{FileIoClient::Upload.file('Rakefile')}.not_to raise_error
  end
end
