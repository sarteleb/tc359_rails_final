json.array!(@animal_licenses) do |animal_license|
  json.extract! animal_license, :id, :name, :number_of_pets, :all_licensed
  json.url animal_license_url(animal_license, format: :json)
end
