json.extract! appointment, :id, :name, :physician_id, :patient_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
