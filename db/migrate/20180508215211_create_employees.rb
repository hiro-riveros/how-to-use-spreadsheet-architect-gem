class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :last_name
      t.string :first_name
      t.string :address
      t.string :phone
      t.integer :company_id

      t.timestamps
    end
    add_index :employees, :company_id
  end
end
