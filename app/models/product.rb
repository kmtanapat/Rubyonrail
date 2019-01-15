class Product < ApplicationRecord
  require 'csv'
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values
      end
    end
  end
  def self.search(term)
    where('LOWER(name) LIKE :term OR LOWER(price) LIKE :term', term: "%#{term.downcase}%")
  end
  end
