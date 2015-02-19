#
# Cookbook Name:: java
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
%W(
  java-#{node['java']['version']}-openjdk
  java-#{node['java']['version']}-openjdk-devel
  java-#{node['java']['version']}-openjdk-src
).each do |package_name|
  package package_name do
    action :install
  end
end

bash "java_home" do
  #user 'vagrant'
  #environment "JAVA_HOME" => '/usr/lib/jvm/jre'
  code <<-SHELL
    echo "export JAVA_HOME=/usr/lib/jvm/jre" >> /home/vagrant/.bash_profile
  SHELL
  not_if "grep JAVA_HOME /home/vagrant/.bash_profile"
end

#template ".bash_profile" do
#  user 'vagrant'
#  owner 'vagrant'
#  group 'vagrant'
#  not_if "grep JAVA_HOME /home/vagrant/.bash_profile"
#end
#file "~/.bash_profile" do
#  content <<-EOS
#    export JAVA_HOME=/usr/lib/jvm/jre
#  EOS
#end
