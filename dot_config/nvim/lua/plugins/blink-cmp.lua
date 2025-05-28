return {
    "saghen/blink.cmp",
    opts = function(_, opts)
        -- don't show the menu automatically
        opts.completion.menu.auto_show = false
        -- don't show documentation automatically
        opts.completion.documentation.auto_show = false
        -- don't display the preview text
        -- enabled = vim.g.ai_cmp
        opts.completion.ghost_text.enabled = false
        opts.keymap.preset = "enter"
        opts.keymap["<Tab>"] = {"select_next", "fallback"}
        opts.keymap["<S-Tab>"] = {"select_prev", "fallback"}
        opts.keymap["<C-d>"] = {"show_documentation", "hide_documentation", "fallback"}
        opts.keymap["<C-m>"] = { "show", "hide", "fallback"}
        opts.keymap["<C-y>"] = { "select_and_accept" }
    end,
}