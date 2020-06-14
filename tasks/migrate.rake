# frozen_string_literal: true

desc 'Migrate the database'
task :migrate, [:target] do |_task, args|
  target = args.target ? Integer(args.target) : nil

  Sequel.extension :migration
  Sequel::Migrator.apply(DB, 'migrate', target)
end
