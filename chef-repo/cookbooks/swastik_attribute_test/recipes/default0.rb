#
# Cookbook Name:: swastik_attribute_test
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#This is for Default attribute in /attributes/default.rb
Chef::Log.info("This is precedence in default0.rb file : ")
Chef::Log.info(node['swastik_attribute_test']['dir'])
