#Using Puppet, create a manifest that kills a process named killmenow
#Use the exec Puppet resource
#Use pkill

exec { 'killmenow':
  command     => '/usr/bin/pkill killmenow', #command path
  provider    => 'shell',  		     #provider
}
