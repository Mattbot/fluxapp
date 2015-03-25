define [
  'jquery',
  'es6-shim',
  'react'
], ($, _shim, React) ->
  document.write("test");
  React.render React.createElement('h1', null, 'Hello, world!'), document.getElementById('page')


