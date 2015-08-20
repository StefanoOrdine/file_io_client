require "file_io_client/version"

module FileIoClient
  class CurlError < StandardError; end

  class File
    attr_reader :file_path

    def initialize(file_path)
      @file_path = file_path
    end

    def upload!
      system("curl -F 'file=@#{file_path}' https://file.io").tap do |result_status|
        raise CurlError unless result_status
      end
    end
  end
end
