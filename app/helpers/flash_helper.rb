module FlashHelper
  def flash_helper
    markup = flash.map do |name, msg|
      content_tag :div, class: "flash alert alert-#{flash_type_to_class(name)} alert-dismissable", role: 'alert' do
        render partial: 'shared/flash', locals: { message: msg, type: flash_type_to_class(name) }
      end
    end
    markup.join.html_safe
  end

  def create_message(model)
    t('flash.create', { model: t("#{model}.one") } )
  end
  def update_message(model)
    t('flash.update', { model: t("#{model}.one") } )
  end
  def destroy_message(model)
    t('flash.destroy', { model: t("#{model}.one") } )
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
