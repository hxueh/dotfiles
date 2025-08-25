return {
    "saghen/blink.cmp",
    opts = function(_, opts)
        table.insert(opts.sources.default, "beancount")
        opts.sources.providers = opts.sources.providers or {}
        opts.sources.providers.beancount = {
            name = "beancount",
            module = "beancount.completion.blink",
            score_offset = 100,
            opts = {
                trigger_characters = { ":", "#", "^", '"', " " },
            },
        }
        return opts
    end,
}
