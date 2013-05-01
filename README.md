# yetibot-cli

A CLI to your YetiBot

## Configuration

Set a `YETIBOT_ENDPOINT` env var pointing to wherever your YetiBot is running.

```
export YETIBOT_ENDPOINT=http://yetibot.foo.io
```

## Installation

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
