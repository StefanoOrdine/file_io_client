require "json"
require 'open3'

require "file_io_client/version"
require "file_io_client/upload"
require "file_io_client/file"

module FileIoClient
  class CurlError < StandardError; end

end
