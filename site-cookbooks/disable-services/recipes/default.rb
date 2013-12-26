#
# Cookbook Name:: disable-services
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{anacron atd autofs avahi-daemon avahi-dnsconfd irqbalance iscsi iscsid ip6tables netfs nfslock portmap rawdevices rpcgssd rpcidmapd named bluetooth hidd ip6tables kudzu messagebus pcscd xfs yum-updatesd mcstrans firstboot gpm auditd}.each do |service_name|
  service service_name do
    action [:disable, :stop]
  end
end

