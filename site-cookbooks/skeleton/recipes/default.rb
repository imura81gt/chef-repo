#
# Cookbook Name:: skeleton
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
directory '/etc/skel/.ssh/' do
  owner  'root'
  group  'root'
  mode   '0755'
  action :create
  only_if 'test ! -d /etc/skel/.ssh/'
end

template "/etc/skel/.ssh/authorized_keys" do
  path "/etc/skel/.ssh/authorized_keys"
  source "authorized_keys.erb"
  owner "root"
  group "root"
  mode 0644
end

