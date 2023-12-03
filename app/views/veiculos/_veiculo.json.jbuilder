json.extract! veiculo, :id, :modelo, :placa, :cor, :dono, :created_at, :updated_at
json.url veiculo_url(veiculo, format: :json)
