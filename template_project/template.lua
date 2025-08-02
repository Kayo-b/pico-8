function _init()
    cls()
    posx = 65
    posy = 65
end

function _update()
    if(btn(0)) then
        posx = posx - 1
    elseif(btn(1)) then
        posx = posx + 1
    elseif(btn(2)) then
        posy = posy - 1
    elseif(btn(3)) then
        posy = posy + 1
    end
end

function _draw()
    cls()
    spr(0, posx, posy)
end
