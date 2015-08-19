#
# Cookbook Name:: perl5
# Recipe:: default
#
# Copyright 2015 Tamas Molnar
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

execute 'install perlbrew' do
  command 'curl -kL http://install.perlbrew.pl | bash'
end

execute 'initialize perlbrew' do
  command 'perlbrew init'
end
