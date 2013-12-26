#
# Cookbook Name:: awscli
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "pip::default"

execute 'pip install awscli --upgrade' do
  command 'pip install awscli --upgrade'
  action :run
end
