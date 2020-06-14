# frozen_string_literal: true

Sequel.migration do
  up do
    run 'CREATE EXTENSION IF NOT EXISTS citext'
    run 'CREATE EXTENSION IF NOT EXISTS pgcrypto'
    run 'GRANT ALL ON TABLE schema_info TO app'
    run 'GRANT ALL ON TABLE schema_info TO app_password'
  end

  down do
    run 'REVOKE ALL ON TABLE schema_info TO app_password'
    run 'REVOKE ALL ON TABLE schema_info TO app'
    run 'DROP EXTENSION IF EXISTS pgcrypto'
    run 'DROP EXTENSION IF EXISTS citext'
  end
end
