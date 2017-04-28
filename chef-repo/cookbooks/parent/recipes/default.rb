#
# Cookbook Name:: parent
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

=begin
directory '/home/vagrant/book1/book2/book3' do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end

template '/home/vagrant/book1/book2/book3/sudoers' do
  source 'sudoers.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    sudoers_groups: node['swastik_cookbook_17042017']['sudo']['groups'],
    sudoers_users: node['swastik_cookbook_17042017']['sudo']['users'],
    passwordless: true
  })
end
=end

testing"working_dir" do
  
end
