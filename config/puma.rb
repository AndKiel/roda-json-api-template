# frozen_string_literal: true

max_threads_count = Integer(ENV.fetch('MAX_THREADS') { 5 })
min_threads_count = Integer(ENV.fetch('MIN_THREADS') { max_threads_count })
threads min_threads_count, max_threads_count

environment ENV.fetch('RACK_ENV') { 'development' }
port        Integer(ENV.fetch('PORT') { 3000 })
workers     Integer(ENV.fetch('WEB_CONCURRENCY') { 1 })

preload_app!
