Phaser  = require 'phaser'

class Player extends Phaser.Sprite
  constructor: (game, x, y)->
    super game, x, y, 'player'

    @animations.add 'walk-n', [60..68]
    @animations.add 'walk-w', [69..77]
    @animations.add 'walk-s', [78..86]
    @animations.add 'walk-e', [87..95]

    @anchor.set 0.5
    @game.physics.arcade.enable this
    @enableBody = true
    @collideWorldBounds = true
    @game.add.existing this
    @animations.play 'walk-e', 10, true

  update: ->
    @x += 1

module.exports = Player
