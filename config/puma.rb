workers(ENV.fetch('WEB_CONCURRENCY') { 2 })
threads_count = ENV.fetch('RAILS_MAX_THREADS') { 5 }
threads(threads_count, threads_count)

preload_app!

# Router keepalive idle timeout + 5 seconds
persistent_timeout(95)

# Turn off keepalive support for better long tails response time with Router 2.0
# Remove this line when https://github.com/puma/puma/issues/3487 is closed, and the fix is released
enable_keep_alives(false) if respond_to?(:enable_keep_alives)

# Support IPv6 by binding to host `::` instead of `0.0.0.0`
port(ENV.fetch("PORT") { 3000 }, "::")
environment(ENV.fetch("RAILS_ENV") { "development" })

# Allow puma to be restarted by `rails restart` command.
plugin(:tmp_restart)
