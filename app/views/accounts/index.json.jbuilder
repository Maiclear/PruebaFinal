json.array!(@accounts) do |account|
  json.extract! account, :id, :descrition, :amount, :client, :account_type, :date, :balance
  json.url account_url(account, format: :json)
end
