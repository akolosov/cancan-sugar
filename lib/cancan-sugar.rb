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

module CanCanSugar
  require "cancan-sugar/version"
  require "cancan-sugar/cancan-sugar"
end

module CanCan
  module Ability
    class << self
      include ::CanCan::Ability
    end
  end
end