json.array!(@user_accounts) do |user_account|
  json.extract! user_account, :id, :name, :address, :phone, :user_id
  json.url user_account_url(user_account, format: :json)
end
