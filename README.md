# rebuildfm

This program is the ruby client for rebuildfm(http://rebuild.fm/)

## Requirements
This program works on Mac OS X because it uses AppleScript and iTunes.

## Installation

```
$ gem install rebuildfm
```

## Usage

List episodes

```
$ rebuildfm list
1: Podcasting, LTSV, RubyMotion (伊藤直也)
2: Rails, Redis, VPS (Kenn Ejima)
3: MessagePack (frsyuki, kiyoto)
...
34: Snappy Links (naan)
35: You Don't Need API Version 2 (Kenn Ejima)
36: Hubot, Deploy this Pull Request (Naoya Ito)
```

Play an episode

```
$ rebuildfm play 36
伊藤直也さん (@naoya_ito) をゲストに迎えて、JAWS、Vagrant Share、CoffeeScript、コードレビューなどについて話しました。

Show Notes

* JAWS DAYS 2014、Immutable Infrastructure について
* You don't need API version 2 - yohei's diary
* Cookpad's deployment and auto scaling
* Docker 0.9: introducing execution drivers and libcontainer | Docker Blog
* Vagrant 1.5 and Vagrant Cloud - Vagrant
* ngrok - secure introspectable tunnels to localhost
* RequestBin - Collect, inspect and debug HTTP requests and webhooks
* Idobata ★
* Idobata会議01 ★
* Hubot, Chat, The Web, and Working in the Open
* Hands-on with GitHub's New Text Editor Atom
* Why coffeescript? - Atom Discussion
* 些末なコードレビュー
* cookpad/styleguide
* bbatsov/rubocop
* Deploy feature branch to Heroku with CircleCI
```

Stop an episode

```
$ rebuildfm stop
```

## Reference 
* https://github.com/mattn/rebuildfm
* https://github.com/syohex/emacs-rebuildfm

## Contributing

1. Fork it ( http://github.com/wyukawa/ruby-rebuildfm/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
