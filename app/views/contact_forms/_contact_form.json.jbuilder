json.extract! contact_form, :id, :first_name, :last_name, :phone_number, :email, :message, :created_at, :updated_at
json.url contact_form_url(contact_form, format: :json)
