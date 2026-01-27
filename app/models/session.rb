#
# Project SmartRails
# Copyright (c) 2023-26 Alessio Saltarin
# License MIT - see LICENSE
#

class Session < ApplicationRecord
  belongs_to :user
end
