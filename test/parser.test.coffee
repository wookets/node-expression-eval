assert = require 'assert'

Parser = require '../lib/parser'

describe 'Parser', ->

  it 'should do basic addition', (done) ->
    calc = "1 + 1"
    expr = Parser.parse(calc)
    variableMap = {} # create a map of the variables in the calc and actual values
    result = expr.evaluate()
    done()

  it 'should do variable replacement', (done) ->
    calc = "meow + 1"
    expr = Parser.parse(calc)
    variableMap = {meow: 3} # create a map of the variables in the calc and actual values
    result = expr.evaluate(variableMap)
    assert.equal(result, 4)
    done()
