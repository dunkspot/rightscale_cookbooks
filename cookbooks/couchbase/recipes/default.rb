#
# Cookbook Name:: couchbase
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#rightscale_marker :begin


 

 execute "wget" do
 cwd "/tmp"
  command "#{node[:couchbase][:package_url]}"
  log "Downloading couchbase package from #{node[:couchbase][:package_url]}"
  
 end


#rightscale_marker :end