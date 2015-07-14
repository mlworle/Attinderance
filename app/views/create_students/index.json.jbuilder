json.array!(@create_students) do |create_student|
  json.extract! create_student, :id, :first_name, :last_name
  json.url create_student_url(create_student, format: :json)
end
