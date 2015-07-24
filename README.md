privoxy Cookbook
==============
This cookbook installs privoxy software

Requirements
------------
### Supported Operating Systems
- Debian-family Linux Distributions
- RedHat-family Linux Distributions

### Cookbooks
- Depends on `checkinstall` cookbook
- When running on Rhel based systems, the node must include the `yum-epel` cookbook

Attributes
----------
### Recommended tunables

* `privoxy['install_method']`
  - String. Defaults to `source`. Can be `source` or `package`
  - `source` downloads source codes and compile them, then executes checkinstall to install as package
  - `package` installs package from the existing repo via apt or yum, depending on the distribution

* `privoxy['url']`
  - String. Points to the privoxy source codes archive location

* `privoxy['version']`
  - String. Privoxy version to be compiled

* `privoxy['checksum']`
  - String. Source codes archive checksum

* `privoxy['adblockplus_subscription']`
  - Bool. Flag to use AdBlock Plus subscriptions for ad blocking
  - Defaults to false

* `privoxy['url']['list']`
  - Array. List of AdBlock Plus subscription URLs

* `privoxy['ip']`
  - String. IP for Privoxy to listen to
  - Defaults to localhost

* `privoxy['port']`
  - String. Port for Privoxy to listen
  - Defaults to 8090

* `privoxy['toggle']`
  - Integer. 0 to start with all the features toggled off, 1 to start toggled on
  - Defaults to 1

### Source specific

* `privoxy['prefix_dir']`
  - String. The path to prefix dir
  - Defaults to `/`

* `privoxy['exec_prefix_dir']`
  - String. The path to exec_prefix dir
  - Defaults to `/usr`

* `privoxy['config_dir']`
  - String. The path to configuration file dir
  - Defaults to `/etc/privoxy`

* `privoxy['doc_dir']`
  - String. The path to docs dir
  - Defaults to `/usr/share`

Usage
-----
#### privoxy::default
Just include `privoxy` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[privoxy]"
  ]
}
```

License and Authors
-------------------

- Author:: Rostyslav Fridman (rostyslav.fridman@gmail.com)

```text
Copyright 2014, Rostyslav Fridman

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
