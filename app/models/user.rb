#
# SmartRails
# Ruby on Rails Project
# (C) Alessio Saltarin 2020
# MIT License
#

class User < ApplicationRecord
  has_secure_password

  validates :username, uniqueness: true
end
