module FileIoClient
  class Upload
    class << self
      def file(path, options = {})
        json_response, result_status = Open3.capture2("curl --silent --form 'file=@#{path}' https://file.io")

        raise CurlError unless result_status == 0

        Response.new(json_response)
      end
    end
  end
end
