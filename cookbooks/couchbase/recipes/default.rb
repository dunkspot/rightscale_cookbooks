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
 
gem_package "s3sync" do
  action :install
end
 

 
execute "s3cmd" do
  command "s3cmd get #{node[:couchbase][:bucket]}:#{node[:couchbase][:package]}  /tmp/couchbase_files"
    environment ({ 'AWS_ACCESS_KEY_ID'  => node[:aws][:access_key_id] , 
    'AWS_SECRET_ACCESS_KEY' => node[:aws][:secret_access_key] ,
    'AWS_CALLING_FORMAT'  => 'SUBDOMAIN'})
end  

execute "tar" do
  command  " tar -xzf /tmp/couchbase_files/#{node[:couchbase][:package]}"  
 end 


#rightscale_marker :end