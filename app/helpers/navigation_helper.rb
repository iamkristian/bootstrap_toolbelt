module Navigation
 def nav_link(text, link_path, options = {})
    class_name = current_page?(link_path) ? options.fetch(:class_name, 'active') : ''

    content_tag(:li, class: class_name) do
      link_to text, link_path, options
    end
  end
end
