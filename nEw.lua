
-- Faiyaz Hossain
-- 2018-05-29







local composer = require( "composer" )
 
local scene = composer.newScene()

local function showScene2( event )

	local options = {
		effect = 'zoomOutInFade',
		time = 750
	}

	composer.gotoScene( 'scene2', options )
end
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
 
end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 		

 		local background = display.newRect( display.contentCenterX, display.contentCenterY, 2048, 1536 )
 		background:setFillColor( 0, 0, 1 )
 		sceneGroup:insert( background )

		local sceneText = display.newText( 'New Scene 1', display.contentCenterX, display.contentCenterY, native.systemFont, 128 )
		sceneText:setFillColor( 1, 0, 0 )
		sceneGroup:insert( sceneText )

    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
        timer.performWithDelay( 3000, showScene2 )
 
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 		
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
 
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end

-- Scene event function listeners

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
 
return scene