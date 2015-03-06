module NavigationHelper
  def nav_link(text, link_path, options = {}, &block)
    active_class_name = current_page?(link_path) ? options.fetch(:active_class_name, 'active') : ''
    inner = capture(&block)
    content_tag(:li, class: options.fetch(:class_name, '')) do
      concat(link_to(text, link_path, class: active_class_name)).concat( block_given? ? inner : "" )
    end
  end
end
