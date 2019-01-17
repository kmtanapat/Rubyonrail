json.extract! invoice, :id, :id, :amount, :company, :contragent, :currency, :date, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
