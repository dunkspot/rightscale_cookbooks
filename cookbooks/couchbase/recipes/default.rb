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
<<<<<<< HEAD

couchbase "install couchbase" 
=======
  
 execute "wget" do
 cwd "/tmp"
  command "wget #{node[:couchbase][:package_url]}"
  
 end
dpkg_package "couchabse_server" do
  source "/tmp/#{node[:couchbase][:package]}"
>>>>>>> 43ae1d6e24a066210d916f403dd4e8bf04a02f31
     


#rightscale_marker :end