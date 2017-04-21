#
# Cookbook Name:: swastik_cookbook_17042017
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
=begin
Chef::Log.info("Hello Chef - I am Swastik")
Chef::Log.info("Version 0.1.1")
Chef::Log.debug("Hello recipe I am in Swastik for debug")

unless node['platform'] == 'ubuntu' || node['platform'] == 'oracle'
  remote_file "#{node['swastik_cookbook_17042017']['git_installer']}" do
    source 'https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/Git-2.12.2.2-64-bit.exe'
    action :create
    not_if { File.exists?("#{node['swastik_cookbook_17042017']['git_installer']}") }
  end
end

if node['platform'] == 'windows'
  execute 'install_git' do
    command "C:/chef/Git-2.12.2.2-64-bit.exe /SILENT"
    not_if { File.exists?('C:\Program Files\Git\git-cmd.exe') }
  end
end

Chef::Recipe.send(:include, OracleCorp)

directory '/home/vagrant/book1' do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end

template '/home/vagrant/book1/sudoers' do
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

mynewobj= Weblogic.new(100)

objitem = data_bag_item('user', 'oracle_user')
Chef::Log.info("The data bag item access key is #{objitem['monitor_config']['accessKey']}")
=end

admins = data_bag('my_oracle_node')
admins.each do |login|
  admin = data_bag_item('my_oracle_node', login)
  if node.name == admin.id
   Chef::Log.info("I am in #{node.name}")
  end
chef_data_bag_item 'my_oracle_node' do
attribute 'id'
Chef::Log.info("Deleting the data bag item #{node.name}")
action :delete # see actions section below
end
end
