#
# Cookbook Name:: swastik_attribute_test
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
# This is for Default attribute in node object in recipe

default['swastik_attribute_test']['dir'] = '/etc/apache1'

# This is for force Default attribute in /attributes/default.rb
force_default['swastik_attribute_test']['dir'] = '/etc/apache5'

#This is for Normal attribute set as a cookbook attribute
normal['swastik_attribute_test']['dir'] = '/etc/apache7'

#This is for Override attribute in /attributes/default.rb
override['swastik_attribute_test']['dir'] = '/etc/apache9'

#This is for Force Override attribute in /attributes/default.rb
force_override['swastik_attribute_test']['dir'] = '/etc/apache13'
