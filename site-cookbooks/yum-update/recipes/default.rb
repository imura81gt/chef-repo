#
# Cookbook Name:: yum-update
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute "yum -y update" do
  command "yum -y update"
  action :run
end

