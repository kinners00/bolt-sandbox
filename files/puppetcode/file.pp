    file { '/Users/myuser/bolt_sandbox/puppetcodetest.txt':
      ensure  => file,
      content => 'this file contains sample content to prove this functionality works'
    }
