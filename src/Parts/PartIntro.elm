module Parts.PartIntro exposing (world)

import Dive exposing (..)
import Params
import Color
import Dive.ElmLogo exposing (logo)


slide0 =
    [ image ( (316 / 400), (90 / 400) ) ( -1.8, 0.9 ) "images/company-logo.png"
    , logo ( 0, 0 ) ( 0.9, 0.9 )
    , text ( 0, -0.7 ) "A quick introduction to Elm*"
        |> color (Color.rgb 114 159 207)
        |> fontFamily Params.font
        |> height 0.2
        |> centered
        |> lineHeight 1.2
    , text ( 0, -0.9 ) "Development Unit"
        |> color (Color.rgb 245 121 0)
        |> fontFamily Params.font
        |> height 0.1
        |> centered
        |> lineHeight 1.2
    , text ( 0, -1.33 ) "* made with Elm"
        |> color (Color.rgb 140 140 140)
        |> fontFamily Params.font
        |> height 0.06
        |> centered
        |> lineHeight 1.2
    , text ( 0, -1.41 ) "Click or press the left/right arrow keys to start"
        |> color (Color.rgb 140 140 140)
        |> fontFamily Params.font
        |> height 0.06
        |> centered
        |> lineHeight 1.2
    ]


world =
    []
        ++ slide0
        |> group
