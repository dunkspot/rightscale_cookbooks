
if
   if  node[:couchbase][:password] &&  node[:couchbase][:user]
    if  node[:couchbase][:cluster_address] 
  
        couchbase "add to cluster" do
           user            node[:couchbase][:user]
           password        node[:couchbase][:password]
           cluster_address node[:couchbase][:cluster_address]
           action          :join_cluster
     end
    end
  end
end
