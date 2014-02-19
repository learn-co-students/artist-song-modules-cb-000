---
tags: modules, oo
language: ruby
---

# Artists and Songs

This lab is all about sharing behavior between classes using modules. It also includes a logical bug that's represented by a failing test.

Already provided is the non-DRY version of the artist and song classes. These classes are similar to those that you saw in the playlister domain.  If you look at the Artist and Song class, the majority of the functionality is duplicated. Literally, there are methods that say the exact same thing.

There is also test coverage, and an environment. Finally, this lab provides a report on test coverage powered by [SimpleCov](https://github.com/colszowka/simplecov). Run `rspec` and then run `open coverage/index.html`. That file is generated every time you run your tests and will show you which lines of code are triggered when a test is run. As you can see, we're at 100%. Keep it that way.

## Tasks

### Debug the Current Failing Error

Look at your failing tests. Something is wrong. The error isn't so helpful at first. Go slow and take the code apart, use pry, find the bug, fix it. What lines of code are called?

## Extract Modules

### Memorable

Build a `Memorable` module in `concerns/memorable.rb` that consolidates the logic that allows a class to remember instances of itself in memory.

You will need to extract the following methods into that module, within a `ClassMethods` sub-module.

- `.all`
- `.reset_all`
- `.count`

#### Structuring Sub-Modules

```ruby
module Memorable
  module ClassMethods
  end
end
```

Thus you would mixin that module in the proper scope by referring to `Memorable::ClassMethods`

#### Sharing an API

It's okay for a module to rely on the class implementing a certain API, but a module will not be shareable if it relies on literals like variable names.

#### Bonus

Try to refactor the initialize method of both classes into Memorable::InstanceMethods, mix it in correctly, and use super to allow the classes to extend their own initialize methods.

### Findable

Build a `Findable` module in `concerns/findable.rb`. This module should handle the `.find_by_name` method for both classes.

### Paramable

Build a `Paramable` module in `concerns/paramable.rb`. This module should handle the `#to_param` method for both classes.

### BONUS: Refactoring the Test Suite

The test suite now has a lot of duplicate tests. RSpec provides a mechanism for shared behavior called [shared examples](https://www.relishapp.com/rspec/rspec-core/docs/example-groups/shared-examples). To use this however, you will need to make those shared examples abstract and they cannot rely on literal test subjects (provided via `let(:artist)`), but rather must use RSpec's [implicit subjects](https://www.relishapp.com/rspec/rspec-core/v/2-0/docs/subject/implicit-subject).

#### Concerns

Don't forget to modify your environment as needed.

