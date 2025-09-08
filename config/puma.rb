# Processes count, allows better CPU utilization when executing Ruby code.
workers(ENV.fetch('WEB_CONCURRENCY') { 2 })

# Thread per process count, allows context switching on IO bound tasks for better CPU utilization.
threads_count = ENV.fetch('RAILS_MAX_THREADS') { 5 }
threads(threads_count, threads_count)

# Reduce memory usage on copy on write (CoW) systems.
preload_app!

# Support IPv6 by binding to host `::` instead of `0.0.0.0`.
port(ENV.fetch("PORT") { 3000 }, "::")
# Ruby buildpack sets RAILS_ENV in production.
rails_env = ENV.fetch("RAILS_ENV") { "development" }
environment(rails_env)

# Allow puma to be restarted by `rails restart` command locally.
plugin(:tmp_restart)

# Heroku strongly recommends upgrading to Puma 7+. If you cannot upgrade,
# please see the Puma 6 and prior configuration section below.
#
# Puma 7+ already supports PUMA_PERSISTENT_TIMEOUT natively. Older Puma versions set:
#
# ```
# persistent_timeout(ENV.fetch("PUMA_PERSISTENT_TIMEOUT") { 95 }))
# ```
#
# Puma 7+ fixes a keepalive issue that affects long tails response time with Router 2.0.
# Older Puma versions set:
#
# ```
# enable_keep_alives(false) if respond_to?(:enable_keep_alives)
# ```
