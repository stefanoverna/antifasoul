if Spree::Config.instance
  Spree::Config.set(:default_locale => 'it')
  Spree::Config.set(:allow_ssl_in_production => false)
end

I18n.available_locales = [:it, :en]
