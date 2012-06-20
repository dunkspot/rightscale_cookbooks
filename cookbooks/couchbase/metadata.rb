maintainer       "Kepeh yoyo"
maintainer_email "ice_tkey@yahoo.com"
license          "All rights reserved"
description      "Installs/Configures couchbase"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

recipe "couchbase::default", "Install couchbase server and sets up default attributes"

attribute "couchbase/bucket",
  :display_name => "Couchbase Server  Package Bucket",
  :description => "S3 bucket contain couchbase server  package",
  :required  => 'required',
  :recipes => ["couchbase::default"]



attribute "couchbase/package",
  :display_name => "Couchbase Server Package ",
  :description => "S3 bucket contain couchbase server  package",
  :required => 'required',
  :recipes => ["couchbase::default"]

attribute "aws/secret_access_key",
  :display_name => "AWS SECRET ACCESS KEY ",
  :description => "Set Ass secret  access key",
  :required => 'required',
  :recipes => ["couchbase::default"]
  
  
attribute "aws/access_key_id",
  :display_name => "Aws ACCESS KEY ID ",
  :description => "Set Aws Access Key ID",
  :required => 'required',
  :recipes => ["couchbase::default"]



