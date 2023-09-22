#Using Puppet, create a manifest that kills a process named killmenow

exec {'killmenow':
  command   =>  '/usr/bin/pkill killmenow',  #path
  provider  =>  'shell',  #provider
  returns   =>  [0, 1],  #return value
}
