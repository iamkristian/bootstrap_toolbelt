module FlashHelper
  def flash_helper
    markup = flash.map do |name, msg|
      content_tag :div, class: "flash alert alert-#{flash_type_to_class(name)} alert-dismissable", role: 'alert' do
        render partial: 'shared/flash', locals: { message: msg, type: flash_type_to_class(name) }
      end
    end
    flash.clear
    markup.join.html_safe
  end


  private

  def flash_type_to_class(type)
    flash_types = {
      notice: 'success',
      alert: 'warning',
      error: 'danger'
    }
    flash_types[type.to_sym]
  end
end
