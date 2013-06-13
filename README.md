# yetibot-cli

A CLI to your [YetiBot](https://github.com/devth/yetibot)

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
