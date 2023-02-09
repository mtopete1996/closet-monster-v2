# frozen_string_literal: true

models = [Cloth]

def resource_json(model)
  file = model.to_s.pluralize.downcase
  path = File.join(Rails.root, 'db', 'seeds', "#{file}.json")
  JSON.parse(File.read(path))
end

models.each do |model|
  model_name = model.to_s.pluralize.downcase
  puts("Creating #{model_name}...")
  model.create(resource_json(model))
end

puts('Done!')
