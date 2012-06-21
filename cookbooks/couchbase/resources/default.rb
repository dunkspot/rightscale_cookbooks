#General attributes
attribute :user, :kind_of => String , :default =>"root"
attribute :password, :kind_of => String, :default => ""
attribute :cluster_address, :kind_of =>String


actions :install, :join_cluster, :leave_cluster,:set_dns 


def initialize(*args)
  super
  @action = :install
end