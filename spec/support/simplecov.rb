# frozen_string_literal: true

require 'simplecov'

SimpleCov.start do
  load_profile 'test_frameworks'

  add_filter %r{^/config/}
  add_filter %r{^/migrate/}

  add_group 'Models', 'models'
  add_group 'Routes', 'routes'
  add_group 'Serializers', 'serializers'

  track_files '**/*.rb'

  enable_coverage :branch
end
