Description
===========

A Package that installs php-cli
Fully customizable php.ini

Requirements
============

 * Chef 0.10+
 * PHP Cookbook

Platforms
=========

 * Debian, Ubuntu
 * CentOS, Red Hat, Fedora

Tested on:

 * Ubuntu 12.04, Ubuntu 13.04

Attributes
==========

See the `attributes/default.rb` for default values.

 * `node['php_cli']['package']` - The package name to install php-cli

Usage
=====

```json
{ "run_list": ["recipe[php-cli]"] }
```

This will install php-cli on the system
