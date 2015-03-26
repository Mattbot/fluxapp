define [
  'es6-shim',
  'react'
], (_shim, React) ->

  {div, a} = React.DOM
  console.log 'woot hey!!!!!'

  Tooltip = React.createFactory(require 'react-bootstrap/lib/Tooltip')
  OverlayTrigger = React.createFactory(require 'react-bootstrap/lib/OverlayTrigger')

  Page = React.createFactory(
    React.createClass
      render: ->
        console.log 'props: ', @props
        tooltip = div style: height: 50,
          Tooltip placement: 'right', "This is a tooltip!"

        OverlayTrigger placement: 'right', overlay: tooltip, delayShow: 300, deplayHide: 150, placement: 'right',
          div {},
            a href: '#', 'hover here to trigger'
  )
