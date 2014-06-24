name             'swookiee-cookbook'
maintainer       'larsp'
maintainer_email 'lars@mobilecologne.de'
license          'EPL'
description      'Installs/Configures swookiee runtime'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'

depends "java"
depends "yum", "~> 3.0"
