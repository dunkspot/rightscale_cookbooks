#
# Cookbook Name:: couchbase
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#rightscale_marker :begin


 
log "Downloading couchbase package from #{node[:couchbase][:package_url]}"
  
 execute "wget" do
 cwd "/tmp"
  command "wget #{node[:couchbase][:package_url]}"
  
 end
dpkg_package "couchabse_server" do
  source "/tmp/#{node[:couchbase][:package]}"
     
end

#rightscale_marker :end