define [
  'es6-shim',
  'react'
], (_shim, React) ->

  {div, a} = React.DOM
  console.log 'woot hey'

  Tooltip = React.createFactory(require 'react-bootstrap/lib/Tooltip')
  OverlayTrigger = React.createFactory(require 'react-bootstrap/lib/OverlayTrigger')

  Page = React.createFactory(
    React.createClass
      render: ->
        tooltip = Tooltip className: 'hint-container', placement: 'right', @props.tooltip

        OverlayTrigger overlay: tooltip, delayShow: 300, deplayHide: 150,
          div className: 'hint-icon-container',
            a className: 'gg-icon-tooltip hint-icon', href: '#', 'hover here to trigger'
  )
