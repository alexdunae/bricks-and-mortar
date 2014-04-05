window.BAM ?= {}

BAM.initDebug = ->
  document.onkeypress = (evt) ->
    evt = evt || window.event;
    if evt.keyCode
      document.documentElement.classList.toggle('debug')

window.onload = ->
  BAM.initDebug()
