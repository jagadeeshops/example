#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package 'Install Apache' do
  case node[:platform]
  when 'centos'
    package_name 'httpd'
  when 'ubuntu'
    package_name 'apache2'
  else
    log 'Unsupported platform' do
      message 'Apache installation is not yet defined for this platform'
      level :fatal
    end
  end
end