#
# Cookbook Name:: java
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
%W(
  java-1.8.0-openjdk
  java-1.8.0-openjdk-devel
  java-1.8.0-openjdk-src
).each do |package_name|
  package package_name do
    action :install
  end
end
