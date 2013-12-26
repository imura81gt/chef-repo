#
# Cookbook Name:: network
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template 'hosts' do
  path '/etc/hosts'
  source 'hosts.erb'
  mode '0644'
end

template 'network' do
  path '/etc/sysconfig/network'
  source 'network.erb'
  mode '0644'
end
