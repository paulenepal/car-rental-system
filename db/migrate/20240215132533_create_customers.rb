class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :full_name
      t.string :email
      t.string :address
      t.string :contact_number

      t.timestamps
    end
  end
end
