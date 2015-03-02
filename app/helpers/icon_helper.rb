module IconHelper
  def bs_icon(icon)
    markup = content_tag :span, class: "glyphicon glyphicon-#{icon}" do "" end
    markup.html_safe
  end
end
