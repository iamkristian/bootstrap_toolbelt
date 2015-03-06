module NavigationHelper
  def nav_link(text, link_path, options = {}, &block)
    link_options = options.fetch(:link_options, {})
    link_options[:class] = link_classes(link_path, link_options)
    list_options = options.fetch(:list_options, {})

    inner = capture(&block)
    content_tag(:li, list_options) do
      concat(link_to(text, link_path, link_options)).concat( block_given? ? inner : "" )
    end
  end

  def active_if_current_page(path, class_name = 'active')
    current_page?(path) ? class_name : ""
  end

  private

  def link_classes(link_path, options)
    classes = options.fetch(:class, "")
    active_class = active_if_current_page(link_path, options.fetch(:active, "active"))
    "#{classes} #{active_class}".strip
  end
end
