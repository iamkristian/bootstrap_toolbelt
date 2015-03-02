module IconHelper
  # Takes an icon class from bootstrap see {bootstrap icons}[http://getbootstrap.com/components/#glyphicons-glyphs]
  # Just feed the method the name, except all the 'glyphicon glyphicon-' stuff
  #
  def bs_icon(icon)
    markup = content_tag :span, class: "glyphicon glyphicon-#{icon}" do "" end
    markup.html_safe
  end
end
