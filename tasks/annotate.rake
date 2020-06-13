# frozen_string_literal: true

desc 'Update model annotations'
task :annotate do
  model_files = Dir['../models/*.rb']
  model_files.each { |file| require_relative file }

  require 'sequel/annotate'
  Sequel::Annotate.annotate(model_files)
end
