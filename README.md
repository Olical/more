# more

More is a framework for [LESS](http://lesscss.org/), which is a dynamic stylesheet language that builds on CSS. More contains bucket loads of useful code to provide things such as normalisation and a adjustable grid system.

The normalisation is provided by [normalize.css](https://github.com/necolas/normalize.css). An amazing stylesheet. I admire the developers behind it. All I did to normalize was convert the comments and layout of the syntax and use LESS style syntax where I could.

The clearing is from [Skeleton](https://github.com/dhgamache/Skeleton), an amazing responsive grid system. The is also where the syntax is inspired from.

## Loading

You can either import the core file, which will load the other source files or you can load up the plain compiled CSS version as you would any other framework. Both examples presume that the framework is located in the `more` directory, next to the file you are including it with.

Using the import statement into another LESS file:

    @import 'more/more';

Using the compiled CSS:

    <link rel='stylesheet' type='text/css' href='more/more.min.css' />

## Author

Written by [Oliver Caldwell](http://olivercaldwell.co.uk/).

## Licence (MIT)

Copyright (c) 2011 Oliver Caldwell

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.