require 'minitest/autorun'
require 'url_parser'

class UrlParserTest < Minitest::Test

  def test_hostname
    url = UrlParser.new "http://vives.be"
    assert_equal "vives.be" , url.host
  end


end
