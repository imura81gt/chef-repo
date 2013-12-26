#
# Cookbook Name:: yum-groupinstall
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
node['yum']['groups'].each do |group|
  execute "yum -y groupinstall '#{group[:name]}'" do
    command "yum -y groupinstall '#{group[:name]}'"
    action :run
  end
end

