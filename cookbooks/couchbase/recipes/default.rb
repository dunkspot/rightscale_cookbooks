#
# Cookbook Name:: couchbase
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#rightscale_marker :begin


 log "S3 bucket is #{node[:couchbase][:bucket]}"
 log "S3 tar package name is #{node[:couchbase][:package]}"
 log "package name is #{node[:couchbase][:appname]}"
 
r=gem_package "s3sync" do
  action :nothing
end
r.run_action(:install)
 bash "set_Environment_variables" do
   user "root"
   code <<-EOH
   export AWS_ACCESS_KEY_ID=node[:aws][:access_key_id] 
   export AWS_SECRET_ACCESS_KEY=node[:aws][:secret_access_key] 
   export AWS_CALLING_FORMAT=SUBDOMAIN
   mkdir  /tmp/couchbase_files
   s3cmd get node[:couchbase][:bucket]}:node[:couchbase][:package]}  /tmp/couchbase_files
    EOH
end


execute "tar" do
  command  " -xzf /tmp/couchbase_files/#{node[:couchbase][:package]}"  
 end 


#rightscale_marker :end