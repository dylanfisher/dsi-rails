json.array!(@admin_students) do |admin_student|
  json.extract! admin_student, :id, :first_name, :middle_name, :last_name, :country, :bio, :class_year
  json.url admin_student_url(admin_student, format: :json)
end
