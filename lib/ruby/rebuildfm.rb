require "ruby/rebuildfm/version"

require 'rss'

module Rebuildfm
  # Your code goes here...
  def self.run()
    url = 'http://feeds.rebuild.fm/rebuildfm'
    rss = RSS::Parser.parse(url)
    rss.items.each{|item|
      puts item.title
    }
  end
end
