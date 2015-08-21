module FileIoClient
  class File
    def initialize(json)
      @parsed = JSON.parse(json)
    end

    def success
      @parsed['success']
    end
    alias_method :"success?", :success

    def key
      @parsed['key']
    end

    def expiry
      @parsed['expiry']
    end

    def download_link
      @parsed['link']
    end
  end
end
