# yetibot-cli

:warning: **Not maintained.** If you're interested in this, ping me / open an issue and I'll probably make it work! :warning:

A CLI to your [Yetibot](https://github.com/devth/yetibot)

## Configuration

Set a `YETIBOT_ENDPOINT` env var pointing to wherever your YetiBot is running, and
a `YETIBOT_ACCESS_TOKEN` var set to your Campfire token.

```
export YETIBOT_ENDPOINT=http://yetibot.foo.io
export YETIBOT_ACCESS_TOKEN=
```

## Installation

Build and install yourself using instructions below, or download the prebuilt binary
for OS X:

* [yeti for OS X](http://cl.ly/2R1K1F020I0y)

## Building

> Requires the haskell platform to build. If you're on OS X and use homebrew, you can
> obtain it with `brew install haskell-platform`.

```
git clone https://github.com/devth/yetibot-cli
cd yetibot-cli
cabal install --prefix=$HOME --user
```


## Usage

```
$ yeti catfact
On average, a cat will sleep for 16 hours a day.
```

```
$ for i in {1..10}; do; foo=""; for j in {1..$i}; do; foo+=":cop:"; done; yeti echo $foo; done
```
:cop:<br />
:cop::cop:<br />
:cop::cop::cop:<br />
:cop::cop::cop::cop:<br />
:cop::cop::cop::cop::cop:<br />
:cop::cop::cop::cop::cop::cop:<br />
:cop::cop::cop::cop::cop::cop::cop:<br />
:cop::cop::cop::cop::cop::cop::cop::cop:<br />
:cop::cop::cop::cop::cop::cop::cop::cop::cop:<br />
:cop::cop::cop::cop::cop::cop::cop::cop::cop::cop:

```
$ yeti help
Use help <topic> for more details
!
<gen>that
ascii
attack
catfact
chat
cheflog
classnamer
clj
cls
complete
count
curl
ebay
echo
eval
exceptions
features
ff
gh
giftv
grep
haiku
head
help
history
hs
http
image
info
jen
join
js
keys
larry
list
mail
meme
memethat
mustachefact
notit
number
order
poke
poms
random
raw
react
reload
repeat
reverse
rhyme
s3
scala
scalex
set
signups
sort
source
ssh
status
tail
tee
twitter
update
uptime
urban
users
vals
weather
wiki
wolfram
wordnik
xargs
xkcd
```
