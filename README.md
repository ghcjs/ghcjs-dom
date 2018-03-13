# Web Browser Bindings

The `ghcjs-dom` package contains bindings for most of the functions provided
by modern web browsers.

Applications should use the `ghcjs-dom` package and the `GHCJS.DOM.*` modules
it contains to get the best mix of protability and performance (rather than
using the `jsaddle-dom`, `ghcjs-dom-jsaddle` and `ghcjs-dom-jsffi` directly).

The best documentation though is for the
[jsaddle-dom](https://hackage.haskell.org/package/jsaddle-dom)
package (scroll down to find the modules with doumentation).
This documentation should be accurate for `ghcjs-dom`
appart from the module names:

* Add `ghcjs-dom` to your `build-depends:` (not `jsaddle-dom`).
* Import `GHCJS.DOM.*` instead of `JSDOM.Custom.*`, `JSDOM.Generated.*` or `JSDOM.*`.

## Debug

This feature makes it easier to identify the code responsible for the creating
DOM Elements. To enable it:

* Enable the `debug` cabal flag for the `ghcjs-dom` package

* Call `GHCJS.DOM.Debug.addDebugMenu` at the start of your application

To view the stack traces hold down the shift key and right click on
an element.  A menu listing the element selected and its parents should apear.
Sub menus will show the stack frames for the `createElement` calls that
created them.

### Adding DomHasCallStack Constraint

To include more stack info add the `GHCJS.DOM.DomHasCallStack` constraint to functions
that should show up in the stack trace.  Once added the stack trace should reveal where
the function was called.

When the debug flag is disabled `DomHasCallStack` will have no affect (it becomes `()`).

### Opening Source Code

When you click on a stack item the source location is written to stderr like this:

```
OPEN src/Reflex/Dom/Widget/Basic.hs:(166,41)-(166,71) in reflex-dom-core-0.4-inplace:Reflex.Dom.Widget.Basic
```

If you are running the code in Leksah's ghci mode it will open the file and select
the call site (assuming the package is in the project).

### Linking to Source Code on the Web

When publishing open source applications online you can enable debug mode to make
it easier to navigate to the code used for different pares of your application.

The `GHCJS.DOM.Debug.addDebugMenu'` function is like `addDebugMenu`, but it also
takes a function to convert a `GHC.Stack.SrcLoc` to a link (`SrcLoc -> Maybe String`).
If a link is returned it is set as the `href` on the submenu item.  It should
be possible to link to github or hackage.

## Generating the Bindings

Bindings are generated from [webkitgtk-2.17.2 idl files](https://webkitgtk.org/releases/webkitgtk-2.17.2.tar.xz) using [domconv-webkit](https://github.com/ghcjs/domconv-webkit).

Make sure to not use any newer webkitgtk as the more recent versions use incompatible new features.

