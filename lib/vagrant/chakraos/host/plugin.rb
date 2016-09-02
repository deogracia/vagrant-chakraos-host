begin
  require 'vagrant'
rescue LoadError
  raise "The Vagrant Chakraos-host plugin must be run within Vagrant."
end

module Vagrant
  module Chakraos
    module Host
      class Plugin < Vagrant.plugin("2")
        name "Chakraos Host"
        description "Chakraos Host support"

        host("chakraos", "arch") do
          require_relative "host"
          Host
        end

        host_capability("chakraos", "nfs_installed") do
          require_relative "cap/nfs"
          Cap::NFS
        end

        host_capability("chakraos", "nfs_check_command") do
          require_relative "cap/nfs"
          Cap::NFS
        end

        host_capability("chakraos", "nfs_start_command") do
          require_relative "cap/nfs"
          Cap::NFS
        end
      end
    end
  end
end
