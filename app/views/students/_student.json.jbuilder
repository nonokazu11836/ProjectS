json.extract! student, :id, :name, :login_id, :pass, :gakka_id, :created_at, :updated_at
json.url student_url(student, format: :json)
