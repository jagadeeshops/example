#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package node['apache']['package'] do
  action :install
end

service node['apache']['package'] do
  action :start
end

