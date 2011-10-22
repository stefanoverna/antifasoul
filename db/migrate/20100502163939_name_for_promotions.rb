# -*- encoding : utf-8 -*-
class NameForPromotions < ActiveRecord::Migration
  def self.up
    add_column "promotions", "name", :string
  end

  def self.down
    remove_column "promotions", "name"
  end
end
