Phaser  = require 'phaser'

class Player extends Phaser.Sprite
  constructor: (game, x, y)->
    super game, x, y, 'player'

    @animations.add 'walk-n', [60..68]
    @animations.add 'walk-w', [69..77]
    @animations.add 'walk-s', [78..86]
    @animations.add 'walk-e', [87..95]
    @animations.add 'stand' , [14..20]
    @anchor.set 0.5
    @game.physics.arcade.enable this
    @enableBody = true
    @collideWorldBounds = true
    @game.add.existing this


  update: ->
    if @game.physics.arcade.distanceToPointer(this, @game.input.activePointer) > 8
      dir =  Phaser.Math.radToDeg @game.physics.arcade.angleToPointer(this)
      @game.physics.arcade.moveToPointer this, 300
      if dir > -45 and dir < 45
        @animations.play 'walk-e', 10, true
      else if dir > 45 and dir < 135
        @animations.play 'walk-s', 10, true
      else if dir < -135 or dir > 135
        @animations.play 'walk-w', 10, true
      else if dir < -45 and dir > -135
        @animations.play 'walk-n', 10, true
    else
      @body.velocity.set 0
      console.log @animations.name
      if @animations.name != 'stand'
        @animations.play 'stand' , 10, true

module.exports = Player
