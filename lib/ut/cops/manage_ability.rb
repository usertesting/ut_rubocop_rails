# frozen_string_literal: true

module RuboCop
  module Cop
    module UT
      class ManageAbility < ::RuboCop::Cop::Cop

        MSG = "Do not use `:manage` when checking abilities"

        def on_send(send_node)
          return unless send_node.method?(:can?) || send_node.method?(:authorize!)
          ability = send_node.first_argument
          return unless ability.sym_type? && ability.source == ":manage"
          add_offense send_node, location: send_node.first_argument.loc.expression
        end
      end
    end
  end
end
