require 'itamae'

module Itamae
  module Resource
    class Execute < Base
      define_attribute :action, default: :run
      define_attribute :command, type: String, default_name: true

      def action_run(options)
        run_command(command)
        updated!
      end
    end
  end
end

