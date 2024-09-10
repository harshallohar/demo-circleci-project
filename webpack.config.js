const path = require('path');

module.exports = {
  entry: './app.js', // Your entry point
  output: {
    filename: 'bundle.js', // Output bundle file
    path: path.resolve(__dirname, 'dist'), // Output directory
  },
  mode: 'development', // Or 'production' for optimized builds
};
