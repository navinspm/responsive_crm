class AddCarToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :car, :string
  end
end
