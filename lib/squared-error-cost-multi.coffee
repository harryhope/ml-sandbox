# squared-error-cost-multi.coffee
# Squared Error Cost Function that accepts multiple x/theta values.

cost = ({thetas, set, hypothesis}) ->
  (1/(2 * set.length)) * sum(thetas, set, hypothesis)

sum = (thetas, set, hypothesis) ->
  set.reduce (prev, [xs..., y]) ->
    prev + Math.pow(hypothesis(xs, thetas) - y, 2)
  , 0

module.exports = cost
