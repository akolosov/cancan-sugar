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

$:.push File.expand_path("../lib", __FILE__)

require "cancan-sugar/version"

Gem::Specification.new do |s|
  s.name = %q{cancan-sugar}
  s.version = CanCanSugar::VERSION::STRING
  s.platform = Gem::Platform::RUBY
  s.summary = %q{Syntax sugar for gem CanCan. Inspired by gem Padrino-CanCan.}
  s.email = %q{alexey.kolosov@gmail.com}
  s.homepage = %q{http://github.com/akolosov/cancan-sugar}
  s.description = %q{Syntax sugar for gem CanCan. Inspired by gem Padrino-CanCan.}
  s.authors = ['Alexey Kolosov']

  s.files = `git ls-files`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency('cancan')
  s.add_development_dependency('rake')
end
