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

couchbase "install couchbase" 
     


#rightscale_marker :end