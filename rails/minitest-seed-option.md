### Make minitest run in a specific order

Sometimes you come across a failing test that is unfortunately order
dependent. In your minitest output you should see something like

`# Running tests with run options --seed 46150:`

This seed can be reused so that your tests continue to run in that random order.

```ruby
rake test TESTOPS="--seed=46150"
```
