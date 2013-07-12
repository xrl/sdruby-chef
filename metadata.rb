name             'sdruby-prism'
maintainer       'Xavier Lange'
maintainer_email 'xrlange@gmail.com'
license          'All rights reserved'
description      'Installs/Configures sdruby-prism'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "git"
depends "application"
depends "application_nginx"
depends "application_ruby"
depends "postgresql"
depends "database"