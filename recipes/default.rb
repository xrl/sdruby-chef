#
# Cookbook Name:: sdruby-prism
# Recipe:: default
#
# Copyright (C) 2013 Xavier Lange
# 
# All rights reserved - Do Not Redistribute
#

include_recipe "sdruby-prism::ruby"

include_recipe "sdruby-prism::database"
include_recipe "sdruby-prism::deploy"