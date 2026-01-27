#
# Project SmartRails
# Copyright (c) 2023-26 Alessio Saltarin
# License MIT - see LICENSE
#

class AddUsernameToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :username, :string
    add_column :users, :name, :string
    add_column :users, :surname, :string
    remove_column :users, :email_address, :string
    add_index :users, :username, unique: true
  end
end
