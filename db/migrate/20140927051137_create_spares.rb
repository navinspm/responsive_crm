class CreateSpares < ActiveRecord::Migration
  def change
    create_table :spares do |t|
      t.string :spare
      t.string :car
      t.string :year
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
