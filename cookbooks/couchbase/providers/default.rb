



action :install do
       execute "wget" do
         cwd "/tmp"
         command "#{node[:couchbase][:package_url]}"
     end
     
    dpkg_package "couchabse_server" do
      source "/tmp/#{node[:couchbase][:package]}"
      end
end

action :join_cluser do
    execute "curl" do
      command "curl  -u #{new_resource.user}:#{new_resource.password}  -d clusterMemberPort=8091  -d user=#{new_resource.user}  -d password=#{new_resource.password}  http://localhost:8091/node/controller/doJoinCluster 2> /dev/null"
    end
end