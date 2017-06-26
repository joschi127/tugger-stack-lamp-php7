name              "app"
maintainer        "Mathias Hansen"
maintainer_email  "me@codemonkey.io"
description       "Main entry point for installing and configuring a dead-simple LAMP stack"
version           "1.0.0"

recipe "app", "Main entry point for installing and configuring a dead-simple LAMP stack"

depends "apache2"
depends "php"
depends "composer"
depends "apt"
depends "openssl"
depends "mysql", "~> 8.2.0"
#depends "postgresql"
depends "chef-sugar"
depends "elasticsearch"
depends "hostsfile"
depends "git", "~> 6.0.0"

%w{ debian ubuntu }.each do |os|
  supports os
end
