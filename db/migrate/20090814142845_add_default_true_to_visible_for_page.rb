# -*- encoding : utf-8 -*-
class AddDefaultTrueToVisibleForPage < ActiveRecord::Migration
  def self.up
    change_column :pages, :visible, :boolean, :default=> true
  end

  def self.down
  end
end
