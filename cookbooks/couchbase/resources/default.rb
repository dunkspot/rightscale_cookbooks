#General attributes
attribute :user, :kind_of => String , :default =>"root"
attribute :password, :kind_of => String, :default => ""

actions :install, :join_cluster, :leave_cluster, :set_dns 
