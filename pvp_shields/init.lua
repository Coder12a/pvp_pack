local sound_play = minetest.sound_play

minetest.register_tool("pvp_shields:shield_steel", {
    description = "Steel Shield",
    inventory_image = "pvp_shields_steel.png",
    groups = {armor_shield = 1,     -- Is a shield.
              block_pool = 50,      -- 50 guard points.
              duration = 10000000   -- 10 seconds.
             },
    on_block_activate = function(player)
        sound_play("shield_equip", {
            pos = player:get_pos(),
            gain = 0.5,
        }, true)
    end,

    on_block_deactivated = function(player)
        sound_play("shield_dequip", {
            pos = player:get_pos(),
            gain = 0.5,
        }, true)
    end,

    on_block_damage = function(player, damage)
        sound_play("shield_impact1", {
            pos = player:get_pos(),
            gain = 0.5,
        }, true)
    end,

    on_guard_break = function(player)
        sound_play("shield_guard_break", {
            pos = player:get_pos(),
            gain = 0.8,
        }, true)
    end
})
