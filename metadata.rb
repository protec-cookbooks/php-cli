name             "php-cli"
maintainer       "Protec Innovations"
maintainer_email "dev@protecinnovations.co.uk"
license          "All rights reserved"
description      "Installs/Configures php-cli"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.2"

%w{ debian ubuntu mint redhat centos amazon }.each do |os|
    supports os
end

%w{ php }.each do |cb|
  depends cb
end

attribute "php_cli/package",
    :display_name => "Package name",
    :description => "The name of the Package to install php-cli",
    :default => "php5-cli"
