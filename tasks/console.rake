# frozen_string_literal: true

desc 'Open pry console'
task :console do
  require_relative '../app'
  require 'pry'

  Pry.start
end
