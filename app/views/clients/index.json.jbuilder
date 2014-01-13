json.array!(@clients) do |client|
  json.extract! client, :id, :user_id, :street, :number, :complement, :bairro, :uf, :city, :country, :cep, :doc, :doc2, :name, :tel, :cel, :date_born, :sex, :news
  json.url client_url(client, format: :json)
end
