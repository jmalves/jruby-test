# encoding: utf-8

module Test
  include_package "fi.relex"

  Foo.to_s # This is what makes it work
  class Foo
    class << self
      alias_method :_bar, :bar

      def bar
        2
      end

    end
  end

  p Java::fi.relex::Foo._bar
  p Java::fi.relex::Foo.bar

  p Foo._bar
  p Foo.bar

end