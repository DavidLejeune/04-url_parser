require 'minitest/autorun'
require 'url_parser'

class UrlParserTest < Minitest::Test

  def test_hostname
    url = UrlParser.new "http://vives.be"
    assert_equal "vives.be" , url.host
  end
  def test_scheme
    url = UrlParser.new "https://labict.be"
    assert_equal "https" , url.scheme
  end
  def test_path
    url = UrlParser.new "http://youtube.com/skrimbler"
    assert_equal "skrimbler" , url.path
  end
  def test_long_path
    url = UrlParser.new "http://youtube.com/skrimbler/views/0"
    assert_equal "skrimbler/views/0" , url.path
  end


end
