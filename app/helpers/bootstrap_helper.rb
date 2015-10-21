module BootstrapHelper
  def grid_helper
    markup = render partial: 'shared/grid_helper'
    markup.html_safe
  end
end
