#Using Puppet, create a manifest that kills a process named killmenow
#Use the exec Puppet resource
#Use pkill

exec { 'kill_killmenow':
  command     => 'pkill killmenow',
  path        => '/usr/bin',  #Path to the command
  refreshonly => true,
  onlyif      => 'pgrep killmenow',  #Does the process exist?
}
