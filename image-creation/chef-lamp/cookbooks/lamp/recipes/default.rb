#
# Cookbook Name:: lamp
# Recipe:: default
#
# Copyright 2017, Jisto, Inc
#
# All rights reserved - Do Not Redistribute
#
#
include_recipe "apache2"
include_recipe "php"
include_recipe "php::module_mysql"
include_recipe "apache2::mod_php5"

web_app "lamp" do
    template 'lamp.conf.erb'
    cookbook 'lamp'
end

apache_site "lamp" do
    enable true
end

apache_module "mpm_event" do
    enable false
end

apache_module "mpm_prefork" do
    enable true
end

service "apache2" do
    action [:enable, :start]
end

mysql_service 'default' do
    port '3306'
    bind_address '0.0.0.0'
    version '5.5'
    initial_root_password 'jisto'
    service_manager 'systemd'
    action [:create, :start]
end

cookbook_file '/var/www/html/index.php' do
    source 'index.php'
    owner 'root'
    group 'root'
    mode '0644'
end

cookbook_file '/var/www/html/jisto.png' do
    source 'jisto.png'
    owner 'root'
    group 'root'
    mode '0644'
end

file '/var/www/html/index.html' do
    action :delete
end
