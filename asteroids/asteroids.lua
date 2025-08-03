function _init()
    cls()
    posx = 65
    posy = 65
    vel_x = 0
    vel_y = 0
    facing_axis = 1 --1 == x , 2 == y
    print("test")
end

function accelerate(dir)
    --  facing direction should change the velocity direction
    if(dir == 1) then
        vel_x = vel_x + 0.1
        vel_y = vel_y + 0.1
    end
    if(dir == 2) then
        vel_y = vel_y + 0.1
        print("vel y", dir)
    end
    if(dir == -1) then
        vel_x = vel_x - 0.1
        vel_y = vel_y - 0.1
        print("vel x", dir)
    end
    if(dir == -2) then
        vel_y = vel_y - 0.1
        print("vel y", dir)
    end

end

function _update()
    if(btn(❎)) then accelerate(facing_axis) end
    if(btn(0)) then
        facing_axis = -1
        print(facing_axis, "facing -2x")
    end
    if(btn(1)) then
        facing_axis = 1
        print(facing_axis, "facing 2x")
    end
    if(btn(2)) then
        facing_axis = 2
        print(facing_axis, "facing 2y")
    end
    if(btn(3)) then
        facing_axis = -2
        print(facing_axis, "facing -2y")
    end

    posx = posx + vel_x
    poxy = posy + vel_y
end

function _draw()
    -- cls()
    cls()
    spr(0, posx, posy, 1, 1, true)
end
