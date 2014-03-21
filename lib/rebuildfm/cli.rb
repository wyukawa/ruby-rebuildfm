require "rebuildfm"
require 'thor'
require 'rss'

module Rebuildfm

  class CLI < Thor

    URL = 'http://feeds.rebuild.fm/rebuildfm'

    desc "list", "list rebuildfm"
    def list()
      rss = RSS::Parser.parse(URL)
      rss.items.reverse.each{|item|
        puts item.title
      }
    end
    
    desc "play [index]", "play rebuildfm"
    def play(index)
      begin
        i=Integer(index)
      rescue
        raise ArgumentError, "#{index} is not integer"
      end
      rss = RSS::Parser.parse(URL)
      if i <= 0 || i > rss.items.length then
        raise ArgumentError, "#{i} is not in [1 .. #{rss.items.length}]"
      end
      system("osascript -e \'tell application \"iTunes\"\' -e 'open location \"#{rss.items[rss.items.length - i].enclosure.url}\" play' -e 'end tell'")
    end

    desc "stop", "stop rebuildfm"
    def stop()
      system("osascript -e \'tell application \"iTunes\"\' -e 'stop' -e 'end tell'")
    end

    # comment out because I don't understand how to resume
    #desc "pause", "pause rebuildfm"
    #def pause()
    #  system("osascript -e \'tell application \"iTunes\"\' -e 'pause' -e 'end tell'")
    #end

  end
end
