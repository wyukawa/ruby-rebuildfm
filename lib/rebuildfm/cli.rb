require "rebuildfm"
require 'thor'
require 'rss'

module Rebuildfm

  class CLI < Thor

    URL = 'http://feeds.rebuild.fm/rebuildfm'

    desc "list"
    def list()
      rss = RSS::Parser.parse(URL)
      rss.items.each{|item|
        puts item.title
      }
    end
    
    desc "play index"
    def play(index)
      rss = RSS::Parser.parse(URL)
      print("osascript -e \'tell application \"iTunes\"\' -e 'open location \"#{rss.items[index].enclosure.url}\" play' -e 'end tell'")
    end

  end
end
