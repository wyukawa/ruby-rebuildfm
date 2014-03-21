require "rebuildfm"
require 'thor'
require 'rss'

module Rebuildfm

  class CLI < Thor

    URL = 'http://feeds.rebuild.fm/rebuildfm'

    desc "list", "list rebuildfm"
    def list()
      rss = RSS::Parser.parse(URL)
      rss.items.each{|item|
        puts item.title
      }
    end
    
    desc "play 0", "play rebuildfm"
    def play(index)
      rss = RSS::Parser.parse(URL)
      system("osascript -e \'tell application \"iTunes\"\' -e 'open location \"#{rss.items[index.to_i].enclosure.url}\" play' -e 'end tell'")
    end

    desc "stop", "stop rebuildfm"
    def stop()
      system("osascript -e \'tell application \"iTunes\"\' -e 'stop' -e 'end tell'")
    end

  end
end
