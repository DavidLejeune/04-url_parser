
require 'uri'

class UrlParser


private
attr_accessor :url


public

def initialize url
  @url = url
end

def host
  #  using dry method split
  (split "://").last
end

def scheme
  # before the dry method split
  # parts = url.split "://"
  # parts[0]

  #  this would be too 'easy' :/
  # URI.parse(url).scheme

  #  using dry method split
    (split "://").first
end

def path
    # this doesn't correctly display a path consiting of multiples slashes
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
