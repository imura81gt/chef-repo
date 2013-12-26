#
# Cookbook Name:: su
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template 'su' do
  path '/etc/pam.d/su'
  source 'su.erb'
  mode '0644'
end

