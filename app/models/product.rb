class Product < ApplicationRecord
  require 'csv'

  def self.to_csv(column_names, products, options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      products.each do |product|
        csv << product.column_values
      end
    end
  end
  end
