plan bolt_sandbox::myplan(
  TargetSpec $targets,
  String[4] $mytaskvar,
) {

# Use puppet agent/facter to determine target OS for further actions below
  $targets.apply_prep

  $win_targets = get_targets($targets).group_by |$target| { $target.facts['kernel'] }['windows']
  $nix_targets = get_targets($targets).group_by |$target| { $target.facts['kernel'] }['Linux']

# Basic if else statement to ensure each task runs on a compatible target
  if ($win_targets) {
    run_task('bolt_sandbox::mytasknix', $win_targets, {'mytaskvar' => $mytaskvar })
  } elsif ($nix_targets) {
    run_task('bolt_sandbox::mytaskwin', $win_targets, {'mytaskvar' => $mytaskvar })
  } else  {
    fail_plan("OS is not compatible!")
  }

}
# Some examples of types of steps you can use within a plan - more can be found at https://puppet.com/docs/bolt/latest/plan_functions.html

  # upload_file($file_local, $file_dest, $targets)
  # download_file($source_file, $local_file_dest, $win_targets)
  # run_command('hostname', $targets, '_run_as' => 'root')
  # run_task('bolt_sandbox::mytasknix', $targets, {'mytaskvar' => $mytaskvar })
  # run_script('/var/tmp/myscript', $targets, '_run_as' => 'root')
  # run_script('iis/setup.ps1', $target, 'arguments' => ['/u', 'Administrator'])
  # ctrl::sleep(10)
  # wait_until_available($targets, wait_time => 300)
  # fail_plan("Something went wrong!")
