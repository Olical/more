# more

More is a framework for [LESS](http://lesscss.org/), which is a dynamic stylesheet language that builds on CSS. More contains bucket loads of useful code to provide things such as normalisation and a adjustable grid system.

The normalisation is provided by [normalize.css](https://github.com/necolas/normalize.css). An amazing stylesheet. I admire the developers behind it. All I did to normalize was convert the comments and layout of the syntax and use LESS style syntax where ever I could.

The clear fix is from [Skeleton](https://github.com/dhgamache/Skeleton), an amazing responsive grid system. This is also where the grid the syntax is inspired from.

## Loading

You can either import the core file, which will load the other source files or you can load up the plain compiled CSS version as you would any other framework. Both examples presume that the framework is located in the `more` directory, next to the file you are including it with.

Using the import statement into another LESS file:

	@import 'more/more';

Using the compiled CSS:

	<link rel='stylesheet' type='text/css' href='more/more.min.css' />

## Using the grid

The grid works just like any other, [960](http://960.gs/) for example. And like the other grid systems you need to specify a container.

	<div class='container'>
		
	</div>

You then place your columns within the container specifying how wide they are, how many columns to prefix or suffix with and whether they should be flush with one of the sides.

	<div class='span-4 prefix-1'>
		<p>This is the parent column.</p>
		
		<div class='span-2 alpha'>
			<p>And this is a child.</p>
		</div>
		
		<div class='span-2 omega'>
			<p>Columns that are nested within another column require alpha and omega classes on the first and last ones. If they are direct children of the container you do not need to apply them.</p>
		</div>
	</div>
	
	<div class='span-1 suffix-2'>
		<p>This does not need alpha or omega because it is a direct child of the container.</p>
	</div>

For more in depth syntax examples check out the `test` directory. There are a lot of different things being used in there.

## Configuring the grid

Now this is my favorite thing about more's grid, you can customise it however you want. Heres how.

Just after you include more, you can specify three variables as configuration. Here they are with their default values, so if you don't set them it will be as if you wrote this.

	@import 'more/more';
	
	@grid-columns: 16;
	@grid-gutter-width: 20;
	@grid-width: 960;

Now, you can change these to whatever you want with one limitation, the maximum amount of columns is 16. Any smaller and there is not much point in using a grid. I don't know about you, but I have never seen a grid system that can do that!

	// Load the more framework
	@import 'more/more';
	
	// Configure the grid
	@grid-columns: 12;
	@grid-width: 1024;
	@grid-gutter-width: 50;

Play about with it until you find something you like. I personally prefer a sixteen column grid, that's why it defaults to it.

## Using the mixins

Some people call them functions, some call them mixins. I don't care, they do the job of a function and mixin properties. More adds quite a few mixins under the `#more` package to aid you with a lot of your tasks. Namely CSS3 vendor prefixes and IE compatibility. Because lets be honest, no one ever wants to write `filter: dropshadow(...);` but you have to because Microsoft said so. So just let more do the work for you.

To find the full list please open up `src/helpers.less` or `src/vendors.less`, but I am going to show you how to use them. Say you wanted your button to have rounded corners, you can use the following mixin.

	a.button {
		#more .border-radius(5px);
	}

You see how we access the mixin, via `#more`. This acts as a namespace to stop it messing with any of your current mixins. Clever eh.

As well as vendor prefixes more includes a few helpers, one of my favorite ones is `.circle`. It turns your element into a perfect circle! I bet you thought that kind of thing was difficult, well it is, but let more worry about that, you just get on with your styling.

	div.profile-picture {
		#more .circle(50px); // 50px is the size of our circle (width and height)
	}

## Customisation

The beauty of this is that only the helper module depends on the vendor menu, the rest are completely separate. So you can either include all of them via the core file or individual files so you can leave what you don't need. Say you only wanted the grid for example, you would use the following line.

	@import 'more/src/grid';

## Building

You do this as you would any other LESS script, with `lessc`. I have written a quick makefile to run it for you, so all you have to do is run `make`. Providing you have [make](http://www.gnu.org/s/make/), [node.js](http://nodejs.org/), [lessc](https://github.com/cloudhead/less.js) and [clean-css](https://github.com/GoalSmashers/clean-css) installed. I would use [npm](http://npmjs.org/) for that (`npm install less -g; npm install clean-css -g`). Or you can use less.js to compile in your browser, what ever works best for you.

Once compiled you can even include it in normal CSS projects, it does not have to be written in LESS to use it. You can find a pre compiled version in `more.min.css`.

## Author

Written by [Oliver Caldwell](http://olivercaldwell.co.uk/).

## Licence (MIT)

Copyright (c) 2011 Oliver Caldwell

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.