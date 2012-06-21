



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


end