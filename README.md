jquery-final_countdown-rails
============================

[![Gem Version](http://img.shields.io/gem/v/jquery-final_countdown-rails.svg)][gem]

[jQuery.countdown (aka The Final Countdown)][jquery-final-countdown] for Rails Asset Pipeline or
standalone sprockets applications.

[gem]: https://rubygems.org/gems/jquery-final_countdown-rails

Installation
------------

:warning: jQuery.countdown needs jQuery. That is, you need to have `'jquery-rails'` in your Gemfile.

### Rails 3.1+

Add this line to your application's Gemfile:

    gem 'jquery-final_countdown-rails'

And then execute:

    $ bundle

Add following directive to your JavaScript manifest file (`app/assets/javascripts/application.js`):

```js
//= require jquery.countdown
```

That's it!

### Rails < 3.1 (or greater with asset pipeline *disabled*)

This gem adds a single generator: `jquery:final_countdown:install`. Running the generator will copy `jquery.countdown.js` and `jquery.countdown.min.js` to `public/javascripts` directory.

This gem contains the minified and un-minified versions of `jquery.countdown`, only the minified versions will be included in the `:defaults` when Rails is in `production` or `test` mode  (un-minified versions will be included when Rails is in `development` mode).

To invoke the generator, run:

```sh
rails generate jquery:final_countdown:install
```

That's it!

Versions
--------

*The jquery-final_countdown-rails version is the same as jQuery.countdown version.*

If a bug in gem is discovered, a 4th version identifier will be added. Like `2.0.4.1`.

Contributing
------------

See [CONTRIBUTING.md](CONTRIBUTING.md).

Thanks
------

I gemify this gem by mock the [jquery-rails](https://github.com/rails/jquery-rails).

[jquery-final-countdown]: https://github.com/hilios/jQuery.countdown

License
-------

MIT License. Please see [LICENSE](/LICENSE).
