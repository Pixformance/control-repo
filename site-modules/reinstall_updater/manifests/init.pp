# == Class: reinstall_updater
# Class to manage the updater directory with the contents stored in puppet
#
# === Parameters
#
# [*$updater_dir*]
#   Path where the verified downloads are placed, Station 3d

class reinstall_updater(
  $updater_dir = 'C:/Deploy/Updater',
  ){
      file { 'manage-updater-directory':
        ensure             => directory,
        path               => $updater_dir,
        source_permissions => ignore,
        source             =>"puppet:///modules/reinstall_updater/Updater",
        recurse            => true,
        purge              => false,
        backup             => false,
      }
}
