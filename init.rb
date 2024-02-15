# Redmine Holidays Plugin
# Copyright (C) 2014 Toshio Takiguchi
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

require 'holidays/core_extensions/date'
class Date
  include Holidays::CoreExtensions::Date
end

Redmine::Plugin.register :redmine_holidays_plugin do
  name 'Redmine Holidays Plugin'
  author 'Toshio Takiguchi'
  description 'This is a holiday calendar plugin for Redmine'
  version '0.0.2'
  url 'https://github.com/taktos/redmine_holidays_plugin'

  settings :default => {
    'region' => :jp
  }, :partial => 'settings/holidays_settings'
end

Holidays.load_all
