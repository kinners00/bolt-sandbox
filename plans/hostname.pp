plan bolt_sandbox::hostname(
  TargetSpec $targets
) {

# Run hostname task
  run_task('bolt_sandbox::hostname', $targets)

}

# /Some examples of types of steps you can use within a plan - more can be found at https://puppet.com/docs/bolt/latest/plan_functions.html 

  # upload_file($file_local, $file_dest, $targets)
  # download_file($source_file, $local_file_dest, $win_targets)
  # run_command('hostname', $targets, '_run_as' => 'root')
  # run_task('bolt_sandbox::mytasknix', $targets, {'mytaskvar' => $mytaskvar })
  # run_script('/var/tmp/myscript', $targets, '_run_as' => 'root')
  # run_script('iis/setup.ps1', $target, 'arguments' => ['/u', 'Administrator'])
  # run_plan('bolt_sandbox::myplan', $targets, mytaskvar => 'hello')
  # ctrl::sleep(10)
  # wait_until_available($targets, wait_time => 300)
  # fail_plan("Something went wrong!")

  # /Warnings will only show when passing "--log-level=warning" - out::message will always be displayed
  # warning("Alert! My plan has came to an end...") 
  # out::message('Something went wrong')

  # /Puppet code example to create file resource. The apply_prep is neccessary to ensure puppet agent installed in dormant state on target node to allow for use of native puppet capabilities.
  # apply_prep($targets)
  # apply($targets, '_run_as' => 'root'){
  #  file { '/opt/var/test.txt':
  #    ensure  => file,
  #    content => 'this file contains sample content to prove this functionality works'
  #  }

  # $content = 'Hello, world!'
  # write_file($content, '/Users/me/hello.txt', $targets)
