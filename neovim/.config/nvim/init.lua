require("a3nv")

-- Assuming additional config files are in .config/nvim/lua/
local load_config = function()
    local config_files = { "remap.lua", "packer.lua" } -- add your Lua files
    for _, file in ipairs(config_files) do
        require(file)
    end
end

load_config()
