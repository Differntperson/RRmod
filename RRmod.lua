--- STEAMODDED HEADER
--- MOD_NAME: RRmod
--- MOD_ID: RRmod
--- MOD_AUTHOR: [Agora]
--- MOD_DESCRIPTION: REROLL

----------------------------------------------
------------MOD CODE -------------------------

local keyupdate_ref = Controller.key_press_update

function Controller.key_press_update(self, key, dt)
  keyupdate_ref(self, key, dt)
end

local mouseref = love.mousepressed
function love.mousepressed(x, y, button, istouch, presses)
  mouseref(x, y, button, istouch, presses)
  if button == 2 then
    if G.STATE == G.STATES.SHOP and G.shop and ((G.GAME.dollars - G.GAME.bankrupt_at) - G.GAME.current_round.reroll_cost >= 0) or G.GAME.current_round.reroll_cost == 0 then
      G.FUNCS.reroll_shop()
    end
    return
  end
end

----------------------------------------------
------------MOD CODE END----------------------
-- Much of the code was """"""""""borrowed"""""""""" from (an older version of) FlushHotkeys. The newest version of the mod is avalible here: https://github.com/Agoraaa/FlushHotkeys