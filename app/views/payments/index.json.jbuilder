json.array!(@payments) do |payment|
  json.extract! payment, :amount, :transaction_id, :user_id
  json.url payment_url(payment, format: :json)
end
