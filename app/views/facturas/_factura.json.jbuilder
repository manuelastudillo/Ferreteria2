json.extract! factura, :id, :nombre, :fecha, :numero, :monto, :cantidad, :total, :text, :created_at, :updated_at
json.url factura_url(factura, format: :json)