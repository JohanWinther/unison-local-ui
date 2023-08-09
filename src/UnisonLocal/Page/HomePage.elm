module UnisonLocal.Page.HomePage exposing (..)

import UI.PageContent as PageContent
import UI.PageLayout as PageLayout exposing (PageFooter(..))
import UI.StatusBanner as StatusBanner
import UnisonLocal.AppDocument as AppDocument exposing (AppDocument)
import UnisonLocal.AppHeader as AppHeader
import UnisonLocal.Env exposing (Env)


type alias Model =
    ()


init : Env -> ( Model, Cmd Msg )
init _ =
    ( (), Cmd.none )


type Msg
    = NoOp


update : Env -> Msg -> Model -> ( Model, Cmd Msg )
update _ _ model =
    ( model, Cmd.none )


view : Model -> AppDocument Msg
view _ =
    let
        appHeader =
            AppHeader.appHeader

        page =
            PageLayout.centeredNarrowLayout
                (PageContent.oneColumn
                    [ StatusBanner.info "Type `ui` from within a Project in UCM to view that project."
                    ]
                )
                (PageFooter [])
                |> PageLayout.withSubduedBackground
    in
    AppDocument.appDocument
        "home-page"
        "Explore your codebase"
        appHeader
        (PageLayout.view page)