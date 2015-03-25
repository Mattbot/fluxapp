define [
  'jquery',
  'es6-shim',
  'react',
  './components/page'
], ($, _shim, React, Page) ->

  page = Page {}

  React.render page, document.body
