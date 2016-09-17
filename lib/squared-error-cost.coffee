# squared-error-cost.coffee
# Squared Error Cost Function.

cost = ({theta0, theta1, set, hypothesis}) ->
  (1/(2 * set.length)) * sum(theta0, theta1, set, hypothesis)

sum = (theta0, theta1, set, hypothesis) ->
  set.reduce (prev, [x, y]) ->
    return prev + Math.pow(hypothesis(x, theta0, theta1) - y, 2)
  , 0

module.exports = cost
