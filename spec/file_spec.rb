require 'spec_helper'

describe FileIoClient::File do
  let(:success) { true }
  let(:success?) { success }
  let(:key) { 'RgcjXc' }
  let(:expiry) { '14 days' }
  let(:download_link) { "https://file.io/#{key}" }

  let(:json) { %Q[{"success":#{success},"key":"#{key}","link":"#{download_link}","expiry":"#{expiry}"}] }
  let(:response) { FileIoClient::File.new(json) }

  %w{success success? key expiry download_link}.each do |method|
    it "##{method}" do
      expect(response.send(method)).to eq(send(method))
    end
  end
end
