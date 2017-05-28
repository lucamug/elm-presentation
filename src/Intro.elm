module Intro exposing (world, frames)

import Color
import Dive exposing (..)
import Parts.PartIntro as PartIntro
import Parts.PartElm as PartElm


introPosX =
    0


introPosY =
    0


introWidth =
    3000


introHeight =
    3000


archPosX =
    0


archPosY =
    200


archWidth =
    10


archHeight =
    10


updatePosX =
    70


updatePosY =
    40


updateWidth =
    2


updateHeight =
    2


viewPosX =
    100


viewPosY =
    -250


viewWidth =
    10


viewHeight =
    10


modelPosX =
    0


modelPosY =
    0


modelWidth =
    10


modelHeight =
    10


archFrames =
    List.map
        (transformFrame ( archWidth, archHeight ) ( archPosX, archPosY ))
        PartElm.frames


modelFrame =
    frame ( modelWidth, modelHeight ) ( modelPosX, modelPosY ) |> duration 1000


introFrame dur =
    frame ( (introWidth + 5000), (introHeight + 5000) ) ( introPosX, (introPosY - 500) ) |> duration dur


intermediateFrame =
    frame ( 500, 500 ) ( (middle viewPosX updatePosX), (middle viewPosY updatePosY) ) |> duration 1000


middle pos1 pos2 =
    (pos1 + pos2) / 2


frames =
    [ introFrame 0
    ]
        ++ archFrames
        ++ [ introFrame 1000
           ]


world =
    [ transformObject ( introWidth, introHeight )
        ( introPosX, introPosY )
        PartIntro.world
    , transformObject ( archWidth, archHeight )
        ( archPosX, archPosY )
        PartElm.world
    ]
