#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'ntp' do
  action :install
  options '--disablerepo=* --enablerepo=base'
end

template 'ntp.conf' do
  path '/etc/ntp.conf'
  source 'ntp.conf.erb'
  mode '0644'
  notifies :restart, "service[ntpd]"
end

service 'ntpd' do
  supports :status => true, :restart => true
  action [ :enable, :start ]
end
