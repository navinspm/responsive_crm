class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :doorno
      t.string :street
      t.string :city
      t.integer :pincode
      t.datetime :date

      t.timestamps
    end
  end
end
