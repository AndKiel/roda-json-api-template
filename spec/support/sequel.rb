# frozen_string_literal: true

abort('Test database does not end with test!') unless DB.opts[:database].end_with?('test')

RSpec.configure do |config|
  config.around do |example|
    DB.transaction(rollback: :always, auto_savepoint: true) { example.run }
  end
end
