# Dotfiles

created by [Steve Laskaridis](mailto:stevelaskaridis@gmail.com)

## Description

Dotfiles are configuration files that start with a '.'.
They are used to alter the behaviour of different programs, or define shortcut (aka aliases) for popular commands.

This repository contains my own setup, which can be used both on OS X and on Linux boxes.


## Aim

The aim of disclosing these filea are mainly:
* In order to easily clone them from different machines
* To improve over time
* To restore previous configurations if something goes wrong

## Deployment

For deployment, we are using [Capistrano](https://github.com/capistrano/capistrano).

In order to run:

* If you need any PATH variables, check **path.sh**.
*  If you need to run to remote machine, update **config/deploy/production.rb**:
```ruby
["#{current_user}@localhost"]

# into

["<your_user>@<your_machine>"]
```
* If your user is not steve, change **.zshrc**:
```bash

if [ `uname` = 'Darwin' ];then
  export ZSH=/Users/<your_user>/.oh-my-zsh
elif [`uname` = 'Linux' ];then
  export ZSH=/home/<your_user>/.oh-my-zsh
fi

```
* Commit you changes and push into your repo
* Change **config/deploy.rb** `repo_url` to your own remote.
* Run from the main directory
```
cap production deploy
```


## Sources

Hardly anyone knows what their environment should look like, before trying different setups and options.

Collective intelligence is really a guidance here, so I will try to maintain of the repos/sites from which I have included components in order to improve traceability.

* [.osx](https://github.com/mathiasbynens/dotfiles/blob/master/.osx) by [Mathias Bynens](https://github.com/mathiasbynens)
* [ohmyzsh](https://github.com/robbyrussell/oh-my-zsh) by [Robby Russel](https://github.com/robbyrussell)
* [dotfiles](https://github.com/henrik/dotfiles) by [Henrik Nyh](https://github.com/henrik)
