maintainer       "Kepeh yoyo"
maintainer_email "ice_tkey@yahoo.com"
license          "All rights reserved"
description      "Installs/Configures couchbase"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

recipe "couchbase::default", "Install couchbase server and sets up default attributes"

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


