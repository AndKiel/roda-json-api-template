# frozen_string_literal: true

desc 'Update model annotations'
task :annotate do
  require 'sequel'

  Sequel.connect(ENV.delete('DATABASE_URL'))

  model_files = Dir['./models/*.rb'].sort
  model_files.each { |file| require file }

  require 'sequel/annotate'
  Sequel::Annotate.annotate(model_files)
end
