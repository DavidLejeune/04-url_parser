
require 'uri'

class UrlParser


private
attr_accessor :url
public
def initialize url
  @url = url
end

def host
  parts = url.split "://"
  parts[1]
end

end
