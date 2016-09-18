# linear-regression.coffee
_ = require 'lodash'
cost = require './lib/squared-error-cost'
costMulti = require './lib/squared-error-cost-multi'

set = [
  [1, 1],
  [2, 2],
  [3, 3],
]

hypothesis = (x, theta0, theta1) ->
  (theta1 * x)

console.log cost
  theta0: 1
  theta1: 0
  set: set
  hypothesis: hypothesis

hypothesisMulti = (xs, thetas) ->
  thetas = _.drop thetas, 1
  _
    .zip(xs, thetas)
    .reduce (prev, current) ->
      prev + (current[0] * current[1])
    , 0

console.log costMulti
  thetas: [1, 0]
  set: set
  hypothesis: hypothesisMulti
