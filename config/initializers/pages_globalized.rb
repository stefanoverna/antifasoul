require 'globalize3'

::Page.class_eval do
  translates :title, :body, :meta_description, :meta_keywords
  accepts_nested_attributes_for :translations
end
