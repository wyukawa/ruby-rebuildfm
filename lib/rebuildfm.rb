require "ruby/rebuildfm/version"

require 'rss'

module Rebuildfm
  URL = 'http://feeds.rebuild.fm/rebuildfm'
  # Your code goes here...
  def self.list()
    rss = RSS::Parser.parse(URL)
    rss.items.each{|item|
      puts item.title
    }
  end

  def self.play()
    rss = RSS::Parser.parse(URL)
    i = 0
    command = "tell application \"iTunes\"\n  open location \"" + rss.items[i].enclosure.url + "\" play\nend tell"
    print("osascript -e \'tell application \"iTunes\"\' -e 'open location \"#{rss.items[i].enclosure.url}\" play' -e 'end tell'")
  end
end
