maintainer       "Kepeh yoyo"
maintainer_email "ice_tkey@yahoo.com"
license          "All rights reserved"
description      "Installs/Configures couchbase"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

recipe "couchbase::default", "Install couchbase server and sets up default attributes"
recipe "couchbase::join_cluster","add a couchbase server to a cluster "

attribute "couchbase/package_url",
  :display_name => "Package Url",
  :description => "Http Url to download package from",
  :required  => 'required',
  :recipes => ["couchbase::default"]



attribute "couchbase/package",
  :display_name => "Couchbase Server Package ",
  :description => "couchbase .deb server package to be installed",
  :required => 'required',
  :recipes => ["couchbase::default"]


attribute "couchbase/user",
  :display_name => "Couchbase Server User",
  :description => "couchbase  server user",
  :required => "required",
  :recipes => ["couchbase::join_cluster"]

attribute "couchbase/password",
  :display_name => "Couchbase Server  Password ",
  :description => "The password of the couchbase server user with admin privileges",
  :required => 'required',
  :recipes => ["couchbase::join_cluster"]

attribute "couchbase/cluster_address",
  :display_name => "Couchbase Server  Cluster  Adrress",
  :description => "The password of the couchbase server user with admin privileges",
  :required => 'optional',
  :recipes => ["couchbase::join_cluster"]

