Phaser  = require 'phaser'
Config  = require './config'
Boot    = require './states/boot'
Preload = require './states/preload'
Menu    = require './states/menu'
Main    = require './states/main'

class Game extends Phaser.Game

  constructor : ->
    super Config.width, Config.height, Phaser.AUTO, 'game-content'

    @state.add 'boot', Boot
    @state.add 'preload', Preload
    @state.add 'menu', Menu
    @state.add 'main', Main

    @state.start 'boot'


window.onload = ->
  game = new Game()
