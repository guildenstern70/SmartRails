#
# Project SmartRails
# Copyright (c) 2023-26 Alessio Saltarin
# License MIT - see LICENSE
#

module ApplicationHelper
  def current_nav_page
    Current.session&.currentpage || session[:currentpage]
  end

  def navbar_item_class(page_name)
    class_names("navbar-item", "is-active" => current_nav_page == page_name)
  end
end
