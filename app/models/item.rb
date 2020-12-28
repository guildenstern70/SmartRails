#
# SmartRails
# Ruby on Rails Project
# (C) Alessio Saltarin 2020
# MIT License
#
class Item < ApplicationRecord
  # Example: &#9733; &#9733; &#9733; &#9733; &#9734;
  def htmlstars
    stars = ''
    (0..self.stars).each do
      stars += '&#9733; '
    end
    (self.stars..5).each do
      stars += '&#9734; '
    end
    stars
  end
end
