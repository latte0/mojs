h      = require './helpers'
Bubble = require './bits/Bubble'
Burst  = require './bits/Burst'

class Charites
  Bubble: Bubble
  Burst:  Burst

charites = new Charites

if (typeof define is "function") and define.amd
  define "charites", [], -> charites

# TODO
#  add size option
#  make bubble work
  
wrapper = document.getElementById 'js-wrapper'
bubble = new charites.Burst
  parent:   wrapper
  radius:    {10: 100}
  lineWidth: { 3: 10 }
  shape:     'line'
  duration: 2000
  cnt:      5
  color:    'deeppink'
  angle: {0: 20}
  fillEnd: '#f0f'
  bitRadius: {10: 2  }

for i in [0..20]
  a = h.rand(1,20)
  r = h.rand(-20,20)
  bubble.chain
    lineWidthEnd: a
    angleEnd:     r
    # position: x:e.x, y:e.y
    # bitSpikes: 3
    duration: 2000
    fillEnd: '#0F0'
    color: 'green'
    colorEnd: 'black'
    bitRadiusEnd: 20

# window.addEventListener 'click', (e)->
#   # bubble.setPosition e.x, e.y
#   a = h.rand(1,20)
#   r = h.rand(-20,20)
#   # console.log a
#   bubble.chain
#     lineWidthEnd: a
#     angleEnd:     r
#     position: x:e.x, y:e.y
#     bitSpikes: 3
#     duration: 10000
#     fillEnd: '#0F0'
#     colorEnd: 'black'
#     bitRadiusEnd: 20


















