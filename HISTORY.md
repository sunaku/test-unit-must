Version 0.1.0 (2011-04-30)
==========================

  * Support more Test::Unit 2 assertions to be 100% feature complete:

        def must_be_truth message=nil
            assert, self, message

        def must_yield_truth message=nil
            assert_block message, &self

        def must_fail message=nil
            assert_fail_assertion message, &self

        def must_exist_in_filesystem message=nil
            assert_path_exist self, message

        def must_not_exist_in_filesystem message=nil
            assert_path_not_exist self, message

        def must_predicate predicate, message=nil
            assert_predicate self, predicate, message

        def must_not_predicate predicate, message=nil
            assert_not_predicate self, predicate, message


Version 0.0.2 (2011-04-04)
==========================

* Define missing negative versions of positive assertion programatically.

  Do not use method_missing() because when we previously defined it in the
  `Test::Unit::Must::Assertions` module and included that into the global
  `Object` class, every missing method *anywhere* in Ruby was being handled
  by our method_missing() handler!!!  This made test execution *very* slow.

  Thanks to Wilson Freitas for suggesting that I use "profile" standard
  library to find out what was slowing down my "must" assertions!

Version 0.0.1 (2011-03-29)
==========================

* First public release.  Enjoy!
