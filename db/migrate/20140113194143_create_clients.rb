class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :user_id
      t.string :street
      t.integer :number
      t.string :complement
      t.string :bairro
      t.string :uf
      t.string :city
      t.string :country
      t.integer :cep
      t.integer :doc
      t.integer :doc2
      t.string :name
      t.integer :tel
      t.integer :cel
      t.date :date_born
      t.string :sex
      t.boolean :news

      t.timestamps
    end
  end
end
