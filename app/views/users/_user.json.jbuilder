json.extract! user, :id, :first_name, :middle_name, :last_name, :phone, :email, :birth_date, :gender, :created_at,
              :updated_at
json.url user_url(user, format: :json)
