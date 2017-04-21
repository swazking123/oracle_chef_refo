if node['platform'] == 'windows'
  default['swastik_cookbook_17042017']['directory'] = 'C:\chef\node'
  default['swastik_cookbook_17042017']['owner'] = 'Administrator'
  default['swastik_cookbook_17042017']['group'] = 'Administrator'
  default['swastik_cookbook_17042017']['mode'] = '0755'
end

if node['platform'] == 'ubuntu'
  default['swastik_cookbook_17042017']['directory'] = '/var/www/customers/public_html'
  default['swastik_cookbook_17042017']['owner'] = 'root'
  default['swastik_cookbook_17042017']['group'] = 'root'
  default['swastik_cookbook_17042017']['mode'] = '0755'
end

if node['platform'] == 'oracle'
  default['swastik_cookbook_17042017']['directory'] = '/var/www/customers/public_html'
  default['swastik_cookbook_17042017']['owner'] = 'root'
  default['swastik_cookbook_17042017']['group'] = 'root'
  default['swastik_cookbook_17042017']['mode'] = '0755'
end
