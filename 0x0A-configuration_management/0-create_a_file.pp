#Using Puppet to create a file named school in the tmp directory
#file is the file name
#Content of the file is I love Puppet
#Mode is 0744
#Owner is www-data
#Group is www-data

file {'/tmp/school':
  ensure  =>  file,
  content =>  'I love Puppet',
  mode    =>  '0744',
  owner   =>  'www-data',
  group   =>  'www-data',
}
