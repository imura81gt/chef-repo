#
# Cookbook Name:: admin-tools
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{ nmap sysstat tcpdump traceroute bind-utils }.each do |pkg|
  package pkg do
    action :install
  end
end

