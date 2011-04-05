##############################################################################
#
# test-unit-must - Selfish "must" assertions for Test::Unit
#                  https://github.com/sunaku/test-unit-must
#
##############################################################################
#
# (the ISC license)
#
# Copyright 2011 Suraj N. Kurapati <sunaku@gmail.com>
#
# Permission to use, copy, modify, and/or distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
#
##############################################################################

require 'test/unit'

module Test::Unit::Must
  module CaptureCurrentTestCase
    def self.included target
      target.module_eval do
        alias ebb6cc8f_e966_4d1f_969f_530ea365eb36 run
        def run *arguments, &block
          $ebb6cc8f_e966_4d1f_969f_530ea365eb36 = self
          ebb6cc8f_e966_4d1f_969f_530ea365eb36 *arguments, &block
        end
      end
    end
  end

  module Assertions
    def must_alias_method alias_name, original_name, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_alias_method, self, alias_name, original_name, message
    end

    def must_be_boolean message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_boolean, self, message
    end

    def must_compare operator, expected, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_compare, expected, operator, self, message
    end

    def must_define_constant constant_name, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_const_defined, self, constant_name, message
    end

    def must_not_define_constant constant_name, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_not_const_defined, self, constant_name, message
    end

    def must_be_empty message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_empty, self, message
    end

    def must_not_be_empty message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_not_empty, self, message
    end

    def must_equal expected, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_equal, expected, self, message
    end

    def must_not_equal expected, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_not_equal, expected, self, message
    end

    def must_be_false message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_false, self, message
    end

    def must_be_in_delta expected_float, delta=0.001, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_in_delta, expected_float, self, delta, message
    end

    def must_not_be_in_delta expected_float, delta=0.001, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_not_in_delta, expected_float, self, delta, message
    end

    def must_be_in_epsilon expected_float, epsilon=0.001, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_in_epsilon, expected_float, self, epsilon, message
    end

    def must_not_be_in_epsilon expected_float, epsilon=0.001, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_not_in_epsilon, expected_float, self, epsilon, message
    end

    def must_include member, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_include, self, member, message
    end

    def must_not_include member, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_not_include, self, member, message
    end

    def must_be_instance_of klass, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_instance_of, klass, self, message
    end

    def must_be_kind_of klass, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_kind_of, klass, self, message
    end

    def must_match pattern, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_match, pattern, self, message
    end

    def must_not_match pattern, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_not_match, pattern, self, message
    end

    def must_be_nil message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_nil, self, message
    end

    def must_not_be_nil message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_not_nil, self, message
    end

    def must_operate operator, argument, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_operator, self, operator, argument, message
    end

    def must_raise *arguments
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_raise, *arguments, &self
    end

    def must_raise_kind_of *arguments
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_raise_kind_of, *arguments, &self
    end

    def must_raise_message expected, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_raise_message, expected, message, &self
    end

    def must_raise_nothing *arguments
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_nothing_raised, *arguments, &self
    end

    def must_be expected, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_same, expected, self, message
    end

    def must_not_be expected, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_not_same, expected, self, message
    end

    def must_receive send_array, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_send, [self] + send_array, message
    end

    def must_not_receive send_array, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_not_send, [self] + send_array, message
    end

    def must_respond_to method, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_respond_to, self, method, message
    end

    def must_not_respond_to method, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_not_respond_to, self, method, message
    end

    def must_throw expected_object, message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_throw, expected_object, message, &self
    end

    def must_throw_nothing *arguments
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_nothing_thrown, *arguments, &self
    end

    def must_be_true message=nil
      $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send \
        :assert_true, self, message
    end

    # define negative versions of positive assertion
    # methods as needed to fill the gaps in this API
    instance_methods(false).each do |method|
      if method =~ /^must_(?!not_)/
        unless method_defined? negative = 'must_not_' + $'
          define_method negative do |*arguments, &block|
            $ebb6cc8f_e966_4d1f_969f_530ea365eb36.send :assert_fail_assertion do
              __send__ method, *arguments, &block
            end
          end
        end
      end
    end
  end
end

# Rails 3 replaces Test::Unit::TestSuite with its own class, so
# the standard Test::Unit::TestCase#run() method is never called.
if defined? ActiveSupport::Testing::SetupAndTeardown::ForClassicTestUnit
  module ActiveSupport::Testing::SetupAndTeardown::ForClassicTestUnit
    include Test::Unit::Must::CaptureCurrentTestCase
  end
end

class Test::Unit::TestCase
  include Test::Unit::Must::CaptureCurrentTestCase
end

class Object
  include Test::Unit::Must::Assertions
end
