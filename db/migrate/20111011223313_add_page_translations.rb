# -*- encoding : utf-8 -*-
class AddPageTranslations < ActiveRecord::Migration
  def self.up
    Page.create_translation_table! :title => :string, :body => :text, :meta_description => :string, :meta_keywords => :string
  end

  def self.down
  end
end
