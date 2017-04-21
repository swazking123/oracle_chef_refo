# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "swazking123"
client_key               "#{current_dir}/swazking123.pem"
chef_server_url          "https://api.chef.io/organizations/swastik"
cookbook_path            ["#{current_dir}/../cookbooks"]
knife[:editor]="notepad"
http_proxy               "http://www-proxy.us.oracle.com:80"
https_proxy              "https://www-proxy.us.oracle.com:80"
