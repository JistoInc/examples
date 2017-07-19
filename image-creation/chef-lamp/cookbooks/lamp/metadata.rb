name             'lamp'
maintainer       'Jisto, Inc'
maintainer_email 'support@jisto.com'
license          'All rights reserved'
description      'Installs/Configures lamp'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'apache2'
depends 'mysql', '~> 8.0'
depends 'php'
depends "database"
