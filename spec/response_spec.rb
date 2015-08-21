require 'spec_helper'

describe FileIoClient::Response do
  let(:success) { true }
  let(:success?) { success }
  let(:key) { 'RgcjXc' }
  let(:expiry) { '14 days' }
  let(:url) { "https://file.io/#{key}" }

  let(:json) { %Q[{"success":#{success},"key":"#{key}","link":"#{url}","expiry":"#{expiry}"}] }
  let(:response) { FileIoClient::Response.new(json) }

  %w{success success? key expiry url}.each do |method|
    it "##{method}" do
      expect(response.send(method)).to eq(send(method))
    end
  end
end
