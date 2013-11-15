#
# Cookbook Name:: php-cli
# Recipe:: default
#
# Copyright 2013, Protec Innovations
#
# Licened under BSD Licence
#

pkgs = [ node['php_cli']['package'] ]
pkgs.each do |pkg|
    package pkg do
        action :upgrade
    end
end

template "#{node['php_cli']['conf_dir']}/php.ini" do
  source "php.ini.erb"
  owner "root"
  group "root"
  mode "0644"
end

directory "/etc/php5/conf.d" do
    action :create
    mode 00755
    owner "root"
    group "root"
end
