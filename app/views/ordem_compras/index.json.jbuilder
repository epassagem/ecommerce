json.array!(@ordem_compras) do |ordem_compra|
  json.extract! ordem_compra, :id, :order_id, :name, :email, :address_zipcode, :address_street, :address_number, :address_complement, :address_neighbourhood, :address_city, :address_state, :address_country, :phone_area_code, :phone_number
  json.url ordem_compra_url(ordem_compra, format: :json)
end
