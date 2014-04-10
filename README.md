torei-rpg
=========

A role-playing game set on [Torei](http://torei.wikia.com), inspired by [Dogs in the Vineyard](https://en.wikipedia.org/wiki/Dogs_in_the_Vineyard) by way of its somewhat simpler horror-themed variant, *Afraid*.

This project builds a rulebook as a single HTML file complete with all embedded images and style information.  In order to build this from source, you must have the following tools installed:

 * [Pandoc](http://johnmacfarlane.net/pandoc/) to build the special dialect of markdown into HTML.
 * [Less](http://lesscss.org/) to build the customised Twitter Bootstrap CSS.
     * [YUI compressor](https://github.com/yui/yuicompressor) (theoretically optional) to keep the size of the bundled CSS down.
 * [Make](https://www.gnu.org/software/make/) to run the build commands for you.

This repository has [Twitter Bootstrap](http://github.com/twitter/bootstrap) as a submodule, along with the [Junction](http://github.com/theleagueof/junction) and [Orbitron](http://github.com/theleagueof/orbitron) fonts from [The League of Movable Type](https://www.theleagueofmoveabletype.com/).

In addition, it includes a copy of the excellent SVG icons from <http://game-icons.net/>.  Unfortunately they're [not yet available as a git repository](http://forum.game-icons.net/github), but at some point I hope to be able to make this a submodule as well.

Published Copy
--------------

There's a copy of the HTML output semi-regularly published to <http://www.asstr.org/~Gospodin/rules.html>.  Despite being hosted on the Web, it is a self-contained file that will work even when offline.  Because of that, it tends to clock in at just under 700KB, so have patience when loading!
