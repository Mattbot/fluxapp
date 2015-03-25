var path = require("path");
var webpack = require("webpack");

module.exports = {
  context: __dirname + '/app',
  entry: './application.js.coffee',
  output: {
      path: __dirname + '/public/',
      filename: 'bundle.js',
      chunkFilename: "[chunkhash].bundle.js"
  },
  resolve: {
    root: [
      path.join(__dirname, "app")
    ],
    extensions: ['', '.js', '.coffee', '.js.coffee', '.jst.hamlc']
  },
  module: {
      loaders: [
          { test: /\.css$/, loader: "style!css" },
          { test: /\.coffee$/, loader: "../node_modules/coffee-loader" },
          { test: /templates/, loader: "hamlc-loader" },
      ]
  },
  plugins: [
    new webpack.ProvidePlugin({
        $: "jquery",
        jQuery: "jquery",
        "window.jQuery": "jquery",
        "_": "underscore"
    }),
    new webpack.ContextReplacementPlugin(/^templates\/fields/),
    new webpack.ContextReplacementPlugin(/^modules/),
    new webpack.HotModuleReplacementPlugin(),
    new webpack.NoErrorsPlugin()
  ],
};
