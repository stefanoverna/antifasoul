# -*- encoding : utf-8 -*-
if Spree::Config.instance
  Spree::Config.set(:default_locale => 'it')
  Spree::Config.set(:allow_ssl_in_production => false)
  Spree::Config.set(:logo => '/images/custom/logo.png')
  Spree::Config.set(:html_invoice_logo_path => "/images/custom/logo.png")
end

def euro_price_filter
  conds = [ [ "Sotto i €10",  "price             <= 10" ],
            [ "€10 - €15",    "price between 10 and 15" ],
            [ "€15 - €18",    "price between 15 and 18" ],
            [ "€18 - €20",    "price between 18 and 20" ],
            [ "€20 o più",    "price             >= 20" ] ]
  { :name   => "Filtra per Prezzo",
    :scope  => :price_range_any,
    :conds  => Hash[*conds.flatten],
    :labels => conds.map {|k,v| [k,k]}
  }
end

::Taxon.class_eval do
  def applicable_filters
    [euro_price_filter]
  end
end

I18n.available_locales = [:it, :en]

