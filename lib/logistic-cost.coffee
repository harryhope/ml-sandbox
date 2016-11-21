# logistic-cost.coffee
# Logistic cost function.

cost = ({thetas, set, hypothesis}) ->
  (1/(2 * set.length)) * sum(thetas, set, hypothesis)

sum = (thetas, set, hypothesis) ->
  set.reduce (prev, [xs..., y]) ->
    if y is 1
      curr = Math.log(hypothesis(xs))
    else
      curr = Math.log(1 - hypothesis(xs))
    prev - curr
  , 0

module.exports = cost
