# MacRuby Module for Boxen
[![Build Status](https://travis-ci.org/cpetersen/puppet-macruby.png?branch=master)](https://travis-ci.org/cpetersen/puppet-macruby)

Install [MacRuby](http://macruby.org/), Ruby for the Objective-C Runtime. Currently at version 0.12.

## Usage

```puppet
include macruby
```

Once installed, you can add

```
macruby-0.12
```

to any .ruby-version file to use MacRuby within that directory.

## Required Puppet Modules

* `boxen`

## How it works

There are 5 steps to the installation.

 * Download - Download the MacRuby zip file to /tmp
 * Extract - Extract the downloaded zip file
 * Install - Install the pkg that was included in the zip file
 * Plugin - Add the rbenv macruby plugin (https://github.com/brettg/rbenv-macruby)
 * Init - Init the plugin
