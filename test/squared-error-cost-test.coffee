{expect} = require 'chai'
cost = require '../lib/squared-error-cost'

describe 'Squared Error Cost Function', ->
  it 'should return correct values.', ->

    set = [
      [1, 1],
      [2, 2],
      [3, 3],
    ]

    hypothesis = (x, theta0, theta1) ->
      (theta1 * x)

    costFunc = (theta1) ->
      cost
        theta0: 1
        theta1: theta1
        set: set
        hypothesis: hypothesis

    expect(costFunc(1)).to.equal 0
    expect(costFunc(.5)).to.equal 0.5833333333333333
    expect(costFunc(0)).to.equal 2.333333333333333
