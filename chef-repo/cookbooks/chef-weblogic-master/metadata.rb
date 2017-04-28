name             'weblogic'
maintainer       'AI'
maintainer_email 'ai@derby.ac.uk'
license          'Apache 2.0'
description      'Installs/Configures fusion-middleware family of products'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '2.1.5'
source_url 'https://github.com/universityofderby/chef-weblogic'
issues_url 'https://github.com/universityofderby/chef-weblogic/issues'

depends 'java'
depends 'oracle-inventory'
depends 'chef-sugar'
depends 'compat_resource'
