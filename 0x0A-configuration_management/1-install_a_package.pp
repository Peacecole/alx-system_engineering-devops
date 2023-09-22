# Using Puppet, install flask from pip3.
# Install flask from pip3
# Version of flask 2.1.0

package { 'flask':
  ensure   => '2.1.0',   
  provider => 'pip3',    
}
