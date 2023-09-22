#Using puppet to create a file in the tmp directory
file { '/tmp/school':
  ensure  => 'file',        
  mode    => '0744',         
  owner   => 'www-data',    
  group   => 'www-data',     
  path    => '/tmp/holberton',
  content => 'I love Puppet',
}
