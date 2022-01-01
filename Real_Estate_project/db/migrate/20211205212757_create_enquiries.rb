class CreateEnquiries < ActiveRecord::Migration[6.1]
  def change
    create_table :enquiries do |t|
      t.string :name
      t.bigint :mobile
      t.string :addr
      t.text :description

      t.timestamps
    end
  end
end
