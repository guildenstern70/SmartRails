#
# Project SmartRails
# Copyright (c) 2023-26 Alessio Saltarin
# License MIT - see LICENSE
#

class AddCurrentPageToSessions < ActiveRecord::Migration[8.1]
  def change
    add_column :sessions, :currentpage, :string, :default => "home"
  end
end
