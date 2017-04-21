Chef::Log.info("my new  recipe I am in oracle new recipe")
Chef::Log.debug("my new  recipe I am in oracle new recipe debug")

directory "#{node['swastik_cookbook_17042017']['directory']}" do
  owner "#{node['swastik_cookbook_17042017']['owner']}"
  group "#{node['swastik_cookbook_17042017']['group']}"
  mode "#{node['swastik_cookbook_17042017']['mode']}"
  recursive true
  action :create
end

cookbook_file "#{node['swastik_cookbook_17042017']['directory']}/index.html" do
  source 'index.html'
  owner "#{node['swastik_cookbook_17042017']['owner']}"
  group "#{node['swastik_cookbook_17042017']['group']}"
  mode "#{node['swastik_cookbook_17042017']['mode']}"
  action :create
end
