# frozen_string_literal: true

desc 'Migrate the database'
task :migrate, [:target] do |_task, args|
  Sequel.extension :migration
  Sequel::Migrator.apply(DB, 'migrate', args.target)
end
