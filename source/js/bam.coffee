window.BAM ?= {}

BAM.initDebug = ->
  document.onkeypress = (evt) ->
    evt ?= window.event;
    if evt.keyCode == 96
      document.documentElement.classList.toggle('debug')

BAM.page = null

BAM.resizeFrame = ->
  BAM.page ?= document.getElementById('page')
  margin = parseInt(document.defaultView.getComputedStyle(BAM.page, null).getPropertyValue('margin-top'), 10) * 2
  page.style.minHeight = "#{window.innerHeight - margin}px"

window.onload = ->
  BAM.initDebug()

  if Modernizr.flexbox
    window.onresize = ->
      BAM.resizeFrame()

    BAM.resizeFrame()
    window.setTimeout(BAM.resizeFrame, 600)
