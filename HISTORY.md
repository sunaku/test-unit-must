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
