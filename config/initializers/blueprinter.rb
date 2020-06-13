# frozen_string_literal: true

require 'blueprinter'
require 'oj'

Blueprinter.configure do |config|
  config.generator = Oj
end
