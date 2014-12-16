#
# Cookbook Name:: privoxy
# Attributes:: default
# Author:: Rostyslav Fridman (<rostyslav.fridman@gmail.com>)
#
# Copyright 2014, Rostyslav Fridman
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['privoxy']['user'] = "privoxy"
default['privoxy']['group'] = "privoxy"
default['privoxy']['install_method'] = "source"
default['chef']['secretpath'] = "/opt/chef_secret_key"

default['privoxy']['adblockplus_subscription'] = false
default['privoxy']['created']['file'] = "adblocklists.created"
default['privoxy']['url']['list'] = [
"https://easylist-downloads.adblockplus.org/easylist.txt",
"https://easylist-downloads.adblockplus.org/easylistgermany.txt",
"https://adblock-chinalist.googlecode.com/svn/trunk/adblock.txt",
"https://ruadlist.googlecode.com/svn/trunk/advblock.txt"
]

default['privoxy']['port'] = "8090"

default['privoxy']['url'] = "http://iweb.dl.sourceforge.net/project/ijbswa/Sources/3.0.21%20%28stable%29"
default['privoxy']['version'] = "3.0.21"
default['privoxy']['checksum'] = "5ec7e601948d2bd0ebf0ebe90eed7d49e7663c395ce16d0403e91ea2d459ddb8"
default['privoxy']['prefix_dir'] = "/"
default['privoxy']['exec_prefix_dir'] = "/usr"
default['privoxy']['log_dir'] = "/var/log/privoxy"
default['privoxy']['config_dir'] = "/etc/privoxy"
default['privoxy']['doc_dir'] = "/usr/share"
default['privoxy']['config_dir'] = "/etc/privoxy"
default['privoxy']['configure_options'] = %W{
--prefix=#{privoxy['prefix_dir']}
--exec-prefix=#{privoxy['exec_prefix_dir']}
--datarootdir=#{privoxy['doc_dir']}
--sysconfdir=#{privoxy['config_dir']}
}

default['privoxy']['toggle'] = 1