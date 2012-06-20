#
# Cookbook Name:: couchbase
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
rightscale_marker:begin


 log"S3 bucket is #{node[:couchbase][:bucket]}"
 log"S3 tar package name is #{node[:couchbase][:package]}"
 log"package name is #{node[:couchbase][:appname]}"
  action :run
r = gem_package "s3sync" do
  action :nothing
end
r.run_action(:install)
 
execute "s3cmd" do
  command "s3cmd get #{node[:couchbase][:bucket]}:#{node[:couchbase][:package]}  /tmp/couchbase_files"
  action :run
end




rightscale_marker:end