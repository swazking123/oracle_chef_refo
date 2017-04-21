#
# Cookbook Name:: swastik_attribute_test
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
# This is for Default attribute in node object in recipe
node.default['swastik_attribute_test']['dir'] = '/etc/apache2'

# This is for Default attribute in node object in recipe
node.force_default['swastik_attribute_test']['dir'] = '/etc/apache6'

# This is for Normal attribute set in a recipe
node.normal['swastik_attribute_test']['dir'] = '/etc/apache8'

#This is for Override attribute in a node object (from a recipe)
node.override['swastik_attribute_test']['dir'] = '/etc/apache10'

#This is for force Override attribute in a node object (from a recipe)
node.force_override['swastik_attribute_test']['dir'] = '/etc/apache14'

Chef::Log.info("This is precedence in default1.rb file : ")
Chef::Log.info(node['swastik_attribute_test']['dir'])
