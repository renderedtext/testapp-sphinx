class Product < ActiveRecord::Base
  attr_accessible :name, :price

  define_index do
    # fields
    indexes name, :sortable => true

    # attributes
    has created_at, updated_at
  end
end
