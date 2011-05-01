#         test-unit-must - Selfish "must" assertions for Test::Unit

test-unit-must is a set of assertions for [Test::Unit] that treat the receiver
of an assertion method call as the subject of the assertion.  In other words,
these are [MiniTest::Spec]-style assertions, but their names only begin with
`must_` or `must_not_`; there is no `wont_` or `refute_` prefix.

------------------------------------------------------------------------------
Compatibility
------------------------------------------------------------------------------

test-unit-must was designed for [Test::Unit] 2.2.0.  However, I found that it
works just as well with the MiniTest library bundled in Ruby 1.9.2! :-)  In
addition, it politely accommodates [Rails 3's ActiveSupport extensions to
Test::Unit](
http://rails.rubyonrails.org/classes/ActiveSupport/Testing/SetupAndTeardown/ForClassicTestUnit.html).

[Vim syntax highlighting][test-unit-must.vim] support is also available.

------------------------------------------------------------------------------
Installation
------------------------------------------------------------------------------

As a Ruby gem:

    gem install test-unit-must

As a Git clone:

    git clone git://github.com/sunaku/test-unit-must

------------------------------------------------------------------------------
Usage
------------------------------------------------------------------------------

Load the library somewhere in your test suite, such as in your test helper:

    require 'test/unit/must'

In your test methods, call `must_*` methods on any Ruby object you like:

    class ExampleTest < Test::Unit::TestCase
      def test_example
        ary = (1..10).to_a

        ary.must_not_be_empty
        assert_not_empty ary

        ary.length.must_equal 10
        assert_equal 10, ary.length

        ary.must_not_equal []
        assert_not_equal [], ary

        ary.first.must_equal 1
        assert_equal 1, ary.first

        (ary[1] * 5).must_equal ary.length
        assert_equal ary.length, (ary[1] * 5)

        # and so on ...
      end
    end

Note that you can still use traditional [Test::Unit] assertions freely.

------------------------------------------------------------------------------
Reference
------------------------------------------------------------------------------

Here is the mapping from test-unit-must assertions to [Test::Unit] assertions.

    def must_be_truth message=nil
        assert self, message

    def must_alias_method alias_name, original_name, message=nil
        assert_alias_method self, alias_name, original_name, message

    def must_yield_truth message=nil
        assert_block message, &self

    def must_be_boolean message=nil
        assert_boolean self, message

    def must_compare operator, expected, message=nil
        assert_compare expected, operator, self, message

    def must_define_constant constant_name, message=nil
        assert_const_defined self, constant_name, message

    def must_not_define_constant constant_name, message=nil
        assert_not_const_defined self, constant_name, message

    def must_be_empty message=nil
        assert_empty self, message

    def must_not_be_empty message=nil
        assert_not_empty self, message

    def must_equal expected, message=nil
        assert_equal expected, self, message

    def must_not_equal expected, message=nil
        assert_not_equal expected, self, message

    def must_fail message=nil
        assert_fail_assertion message, &self

    def must_be_false message=nil
        assert_false self, message

    def must_be_in_delta expected_float, delta=0.001, message=nil
        assert_in_delta expected_float, self, delta, message

    def must_not_be_in_delta expected_float, delta=0.001, message=nil
        assert_not_in_delta expected_float, self, delta, message

    def must_be_in_epsilon expected_float, epsilon=0.001, message=nil
        assert_in_epsilon expected_float, self, epsilon, message

    def must_not_be_in_epsilon expected_float, epsilon=0.001, message=nil
        assert_not_in_epsilon expected_float, self, epsilon, message

    def must_include member, message=nil
        assert_include self, member, message

    def must_not_include member, message=nil
        assert_not_include self, member, message

    def must_be_instance_of klass, message=nil
        assert_instance_of klass, self, message

    def must_be_kind_of klass, message=nil
        assert_kind_of klass, self, message

    def must_match pattern, message=nil
        assert_match pattern, self, message

    def must_not_match pattern, message=nil
        assert_not_match pattern, self, message

    def must_be_nil message=nil
        assert_nil self, message

    def must_not_be_nil message=nil
        assert_not_nil self, message

    def must_operate operator, argument, message=nil
        assert_operator self, operator, argument, message

    def must_exist_in_filesystem message=nil
        assert_path_exist self, message

    def must_not_exist_in_filesystem message=nil
        assert_path_not_exist self, message

    def must_predicate predicate, message=nil
        assert_predicate self, predicate, message

    def must_not_predicate predicate, message=nil
        assert_not_predicate self, predicate, message

    def must_raise *arguments
        assert_raise *arguments, &self

    def must_raise_kind_of *arguments
        assert_raise_kind_of *arguments, &self

    def must_raise_message expected, message=nil
        assert_raise_message expected, message, &self

    def must_raise_nothing *arguments
        assert_nothing_raised *arguments, &self

    def must_be expected, message=nil
        assert_same expected, self, message

    def must_not_be expected, message=nil
        assert_not_same expected, self, message

    def must_accept send_array, message=nil
        assert_send [self] + send_array, message

    def must_not_accept send_array, message=nil
        assert_not_send [self] + send_array, message

    def must_respond_to method, message=nil
        assert_respond_to self, method, message

    def must_not_respond_to method, message=nil
        assert_not_respond_to self, method, message

    def must_throw expected_object, message=nil
        assert_throw expected_object, message, &self

    def must_throw_nothing *arguments
        assert_nothing_thrown *arguments, &self

    def must_be_true message=nil
        assert_true self, message

In addition, the following negative assertions are defined for completeness:

    must_not_be_truth         is opposite of    must_be_truth
    must_not_yield_truth      is opposite of    must_yield_truth
    must_not_alias_method     is opposite of    must_alias_method
    must_not_be_boolean       is opposite of    must_be_boolean
    must_not_compare          is opposite of    must_compare
    must_not_fail             is opposite of    must_fail
    must_not_be_false         is opposite of    must_be_false
    must_not_be_instance_of   is opposite of    must_be_instance_of
    must_not_be_kind_of       is opposite of    must_be_kind_of
    must_not_operate          is opposite of    must_operate
    must_not_raise            is opposite of    must_raise
    must_not_raise_kind_of    is opposite of    must_raise_kind_of
    must_not_raise_message    is opposite of    must_raise_message
    must_not_raise_nothing    is opposite of    must_raise_nothing
    must_not_throw            is opposite of    must_throw
    must_not_throw_nothing    is opposite of    must_throw_nothing
    must_not_be_true          is opposite of    must_be_true

------------------------------------------------------------------------------
License
------------------------------------------------------------------------------

Released under the ISC license.  See the `lib/test/unit/must.rb` file.

[Test::Unit]: http://test-unit.rubyforge.org/
[MiniTest::Spec]: http://rubydoc.info/stdlib/minitest/
[test-unit-must.vim]: https://github.com/sunaku/test-unit-must.vim
