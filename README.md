# ghpage-auto-deploy
Use github as a web host is that easy. This template provide essential configurations to auto deploy your github repo to gh-pages via Travis CI

[![Build Status](https://travis-ci.org/gasolin/ghpage-auto-deploy.png)](https://travis-ci.org/gasolin/ghpage-auto-deploy)

## Setup

### Generate Github token
  #. Fork this project to start making your web page.

  #. Visit https://github.com/settings/tokens , click `generate new token` button at top right to
generate new token. Or use [this link](https://github.com/settings/tokens/new) directly.
Make sure you've checked `repo` permission.
![](http://i.imgur.com/Uhoa7cR.png)

  #. Tap `Generate token` button below all permissions. Then copy the generated token.

### Setup Travis integration

  #. Visit your Travis profile to enable the project integration `https://travis-ci.org/profile/[user name]`
If you haven't use Travis, don't worry about it, you can just use github account to login Travis.
![](http://i.imgur.com/Q1hDoPLm.png)

  #. Tap the gear icon near the project name or visit `https://travis-ci.org/[user name]/[project name]/settings`
Add a environment variable `GH_TOKEN` with the key you got from github `Generate Token` function.
![](http://i.imgur.com/GhMHQO6m.png)

  #. In general settings section, switch off `Build pushes` and `Build pull requests` options because the auto deploy process will `push` commit to your branch.
You can swith on them only when you know what you are doing.

### Configure .travis.yml

Check .travis.yml in the forked project and replace git related settings to fit your info.


All set! Commit anything in your project and the project will be auto deployed to gh-pages!

Visit your project web page as `https://[user name].github.io/[project name]`.
