class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :p_type
      t.string :city
      t.string :place
      t.integer :price
      t.string :status
      t.string :image
      t.text :short_desc
      t.references :User, null: false, foreign_key: true

      t.timestamps
    end
  end
end
