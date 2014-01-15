class CreateOrdemCompras < ActiveRecord::Migration
  def change
    create_table :ordem_compras do |t|
      t.integer :order_id
      t.string :name
      t.string :email
      t.string :address_zipcode
      t.string :address_street
      t.integer :address_number
      t.string :address_complement
      t.string :address_neighbourhood
      t.string :address_city
      t.string :address_state
      t.string :address_country
      t.string :phone_area_code
      t.string :phone_number

      t.timestamps
    end
  end
end
