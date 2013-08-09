root = "/home/deployer/apps/synaptian/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.synaptian.sock"
worker_processes 2
timeout 30
