module Parts.PartElm exposing (world, frames)

import Dive exposing (..)
import Color exposing (black, white, red, blue)
import Params
import Dive.ElmLogo exposing (logo)


text1 =
    """
# What is Elm

- Purely functional programming language
  that compile to Javascript

# Benefits of Elm

- No runtime errors     , no null, no undefined
- Easy Refactoring and good Maintainability
- Friendly error messages at compile time
- Well architected code that stays well architected
"""


text2 =
    """
# What Elm include (otherwise you need...)

- Pure functions (Purescript.js)
- Immutable data structures (Immutable.js)
- Currying (Ramda.js)
- Static type checking (Flow)
- No concept of Null (Folktale)
- The Elm Architecture (Redux)
- Declarative UI (React.js)
- Virtual DOM (React.js)
"""


text3 =
    """
# Embedded HTML in Elm

a [ href "http://example.com" ]
    [ img [ src "product.jpg" ] []
    , p [ class "description" ] [ text "Text" ]
    ]

<a href="http://example.com">
  <img src="product.jpg">
  <p class="description">Text</p>
</a>
"""


slide1X =
    -5


slide1Y =
    5


slide2X =
    -8


slide2Y =
    -33


slide3X =
    18


slide3Y =
    -23



{-
   Elm Colors:

   Orange: #f57900 245 121 0, Dark: #7c3d00 (124 61 0)
   Green: #73d216, Dark: #264706 (38 71 6)
   Light Blue: #729fcf (114 159 207): Dark #3b5168 (59 81 104)
   Blue: #204a87



-}


darkOrange =
    Color.rgb 124 61 0


darkGreen =
    Color.rgb 38 71 6


darkBlue =
    Color.rgb 59 81 104


slide1 =
    [ text ( slide1X, slide1Y ) text1
        |> color darkOrange
        |> fontFamily Params.fontCode
        |> height 0.6
        |> leftAligned
        |> lineHeight 1.3
    ]


slide2 =
    [ text ( slide2X, slide2Y ) text2
        |> color darkBlue
        |> fontFamily Params.fontCode
        |> height 0.6
        |> leftAligned
        |> lineHeight 1.3
    ]


slide3 =
    [ text ( slide3X, slide3Y ) text3
        |> color darkGreen
        |> fontFamily Params.fontCode
        |> height 0.6
        |> leftAligned
        |> lineHeight 1.3
    ]


frame1 =
    frame ( 12, 12 ) ( (slide1X + 8), (slide1Y - 5) ) |> duration 1000


frame1_1 =
    frame ( 0.8, 0.8 ) ( (slide1X + 7.9), (slide1Y - 6.21) ) |> duration 1000


frame1_2 =
    frame ( 0.8, 0.8 ) ( (slide1X + 15.7), (slide1Y - 7.8) ) |> duration 1000


frame2 =
    frame ( 12, 12 ) ( (slide2X + 8), (slide2Y - 5) ) |> duration 1000


frame3 =
    frame ( 12, 12 ) ( (slide3X + 8), (slide3Y - 5) ) |> duration 1000


frame4 =
    frame ( 131.6, 72.6 ) ( -220, 0 ) |> duration 1000


frame5 =
    frame ( 80.0, 50.0 ) ( -220, 70 ) |> duration 1000


world =
    [ image ( 131.6, 72.6 ) ( -220, 0 ) "images/maintainability-usability-reversed.png"
    , image ( 80.0, 50.0 ) ( -220, 70 ) "images/performances-reversed.png"
    , image ( (1360 / 1000), (574 / 1000) ) ( 2.9, -1.25 ) "images/runtime-error.png"
    , image ( (1208 / 1000), (468 / 1000) ) ( 10.7, -2.8 ) "images/compiler-error.png"
    ]
        ++ slide1
        ++ slide2
        ++ slide3
        |> group


frames =
    [ frame1
    , frame1_1
    , frame1
    , frame1_2
    , frame1
    , frame2
    , frame3
    , frame4
    , frame5
    ]
