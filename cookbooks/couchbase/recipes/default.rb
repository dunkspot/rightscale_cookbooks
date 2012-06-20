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

r = gem_package "s3sync" do
  action :nothing
end
r.run_action(:install)
 
execute "s3cmd" do
  command "s3cmd get {node[:couchbase][:bucket]}:{node[:couchbase][:package]} /home/couchbase "
  action :run
end

rightscale_marker:end