#
# Cookbook Name:: couchbase
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
rightscale_marker:begin

bucket= node[:couchbase][:bucket]
package_name = node[:couchbase][:package]
temp_dir = "/tmp/couchbase_files"
 
 
 log"S3 bucket is #{node[:couchbase][:bucket]}"
 log"S3 tar package name is #{node[:couchbase][:package]}"
 log"package name is #{node[:couchbase][:appname]}"
  action :run
r = gem_package "s3sync" do
  action :nothing
end
r.run_action(:install)
 
execute "s3cmd" do
  command "s3cmd get #{node[:couchbase][:bucket]}:#{node[:couchbase][:package]} #{temp_dir}"
  action :run
end


execute "tar" do
  command  " tar -xzf #{temp_dir}/#{node[:couchbase][:package]}"  
 end 
 
 dpkg_package "couchbase server" do
    source "#{temp_dir}/#{node[:couchbase][:package]}/#{[:couchbase][:appname]}"
 end
rightscale_marker:end