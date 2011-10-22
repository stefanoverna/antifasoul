# -*- encoding : utf-8 -*-
class RenameCouponsToPromotions < ActiveRecord::Migration
  def self.up
    execute "DROP TABLE IF EXISTS promotions"
    rename_table :coupons, :promotions
  end

  def self.down
    rename_table :promotions, :coupons
  end
end
