
require 'uri'

class UrlParser


private
attr_accessor :url
public
def initialize url
  @url = url
end

def host
  (split "://").last
end

def scheme
  # parts = url.split "://"
  # parts[0]
  # URI.parse(url).scheme
    (split "://").first
end


private
def split delimiter
  url.split delimiter
end


end
