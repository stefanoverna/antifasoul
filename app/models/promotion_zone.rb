class PromotionZone < PromotionRule
  preference :zone, :string

  def eligible?(order)
    order.ship_address.country.zone.name == preferred_zone
  rescue
    false
  end

end

