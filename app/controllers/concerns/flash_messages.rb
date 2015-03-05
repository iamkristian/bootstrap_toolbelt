module FlashMessages
  extend ActiveSupport::Concern

  included do
    def create_message(model)
      t('flash.create', { model: t("#{model}.one") } )
    end
    def update_message(model)
      t('flash.update', { model: t("#{model}.one") } )
    end
    def destroy_message(model)
      t('flash.destroy', { model: t("#{model}.one") } )
    end
  end
end
