module Vagrant
  module Chakraos
    module Host
      module Cap
        SYSTEMCTL_PATH="/usr/bin"

        class NFS
          def self.nfs_check_command(env)
            return "#{Vagrant::Chakraos::Host::Cap::SYSTEMCTL_PATH}/systemctl status --no-pager nfs-server.service"
          end

          def self.nfs_start_command(env)
            return "#{Vagrant::Chakraos::Host::Cap::SYSTEMCTL_PATH}/systemctl start nfs-server.service"
          end

          def self.nfs_installed(env)
            Kernel.system("#{Vagrant::Chakraos::Host::Cap::SYSTEMCTL_PATH}/systemctl --no-pager --no-legend --plain list-unit-files --all --type=service | grep --fixed-strings --quiet nfs-server.service")
          end
        end
      end
    end
  end
end
