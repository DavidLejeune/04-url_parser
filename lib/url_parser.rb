
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

def path
    # (host.split "/").last

    # http://stackoverflow.com/questions/5129574/ruby-regexp-capture-the-path-of-url
    # puts url[url[/.*?\/\/[^\/]*\//].size..-1]
    url[url[/.*?\/\/[^\/]*\//].size..-1]
end




private
def split delimiter
  url.split delimiter
end


end
