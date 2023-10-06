#
# Project SmartRails
# Copyright (c) 2023 Alessio Saltarin
# License MIT
#

class User < ApplicationRecord
  has_secure_password

  validates :username, uniqueness: true
end
