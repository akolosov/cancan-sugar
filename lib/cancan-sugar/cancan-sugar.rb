# -*- encoding: utf-8 -*-
#
# CanCanSugar v0.1.1
#
# Syntax sugar for gem CanCan. Inspired by gem Padrino-CanCan.
#
# (C)opyLeft & (C)odeRight Alexey Kolosov aka mr.huNTer <alexey.kolosov@gmail.com>
#
# "CanCanSugar" released without warranty under the terms of the Artistic License 2.0
# http://www.opensource.org/licenses/artistic-license-2.0
#

module CanCan
  module Ability

    def permissions_for user, roles, &block
      if roles.is_a? Array
        roles.each do |role|
          set_premissions user, role, &block
        end
      elsif roles.is_a? Hash
        if roles[:as].is_a? Array
          roles[:as].each do |role|
            set_premissions user, role, &block
          end
        else
          set_premissions user, roles[:as], &block
        end
      else
        set_premissions user, roles, &block
      end
    end

    private

    def set_premissions user, role, &block
      block.call if user.has_role? role
    end

  end

end