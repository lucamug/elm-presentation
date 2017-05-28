### [Demo](https://lucamug.github.io/elm-presentation)
### [Demo with Time-traveling Debugger](https://lucamug.github.io/elm-presentation/index-with-time-traveling.html)

# How it works

Check out [the full article](https://medium.com/@l.mugnaini/a-ready-to-use-elm-presentation-to-impress-your-colleagues-ee71cac8fe14).

# Getting started

If you don't already have `elm` and `elm-live`:

> $ npm install -g elm elm-live

Then, to build everything:

> $ elm-live --output=presentation.js src/Main.elm --pushstate --open --debug

(Leave off the `--debug` if you don't want the time-traveling debugger.)
