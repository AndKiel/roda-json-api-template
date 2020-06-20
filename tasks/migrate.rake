# frozen_string_literal: true

desc 'Migrate the database'
task :migrate, [:target] do |_task, args|
  require 'sequel'

  target = args.target ? Integer(args.target) : nil

  DB = Sequel.connect(ENV.fetch('DATABASE_URL'))

  Sequel.extension :migration
  Sequel::Migrator.apply(DB, 'migrate', target)
end
