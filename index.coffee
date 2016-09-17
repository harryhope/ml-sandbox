# linear-regression.coffee
cost = require './lib/squared-error-cost'

set = [
  [1, 1],
  [2, 2],
  [3, 3],
]

hypothesis = (x, theta0, theta1) ->
  (theta1 * x)

#(1,0) = 2.3333333333
#(1, 0.5) = 5.8333333333
#(1, 1) = 0

console.log cost
  theta0: 1
  theta1: 0
  set: set
  hypothesis: hypothesis
