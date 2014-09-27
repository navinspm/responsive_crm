class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :mobileno
      t.string :email
      t.string :car
      t.integer :year
      t.text :problem

      t.timestamps
    end
  end
end
