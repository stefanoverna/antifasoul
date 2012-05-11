class HalfShippingCalculator< ::Calculator

  def self.description
    I18n.t("half_free_shipping")
  end

  def self.register
    super
    Promotion.register_calculator(self)
  end

  def compute(object)
    if object.is_a?(Array)
      return if object.empty?
      order = object.first.order
    else
      order = object
    end

    order.ship_total * 0.5
  end

end
