json.extract! cliente, :id, :nome, :telefone, :cpf, :rg, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
