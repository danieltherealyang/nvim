-- lazy.nvim plugin spec
return {
    url = "https://github.rbx.com/fobrien/rbx-luau.nvim.git",
    dependencies = {
        "lopi-py/luau-lsp.nvim",
    },

    config = function()
        local rbx_luau = require("rbx-luau")
        rbx_luau.setup({
            -- all values below are non-defaults
            autostart_sourcemap_watcher = true, -- automatically start watching lua[u] file in rbxp projects [default: false]
            notify = false -- disable notification when changes are detected/sourcemap is generated [default: true]
        })

        require("luau-lsp").setup({
            platform = {
                type = "roblox",
            },
            types = {
                roblox_security_level = "RobloxScriptSecurity", -- we have internal permissions!

                -- add component type definitiions for studio luau work
                -- uncomment (adjust path if you use a different location):
                definition_files = { "~/git/roblox/game-engine/Client/RobloxStudio/GeneratedStudioIDL/ComponentTypes.d.luau" },
            },
            sourcemap = {
                enabled = true, 
                autogenerate= false, -- disable rojo-based sourcemap gen to silence errors
            },
        })

        vim.lsp.config("luau-lsp", {
            root_markers = { "default.rbxp" }
        })

        -- we use .lua for luau files, in rbxp projects, tell nvim to consider .lua as luau files
        if rbx_luau.is_rbxp_project(vim.fn.getcwd()) then
            vim.filetype.add({
                extension = {
                    lua = function(path)
                        return path:match("%.nvim%.lua$") and "lua" or "luau"
                    end,
                },
            })
        end
    end,
}
