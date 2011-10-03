if Spree::Config.instance
  Spree::Config.set(:default_locale => 'it')
end

I18n.available_locales = [:it, :en]
