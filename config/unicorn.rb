root = "/home/deployer/apps/gerenciador_espectros/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.gerenciador_espectros.sock"
worker_processes 2
timeout 30