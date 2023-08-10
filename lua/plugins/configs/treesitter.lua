local options = {
  ensure_installed = { "lua", "scss", "svelte", "rust" },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },

  query_injections = {
    enable = true,
    queries = {
      injections = {
        ["postcss_injection"] = [[
          ((style_element
            (start_tag
              (attribute
                (attribute_name) @_lang
                (quoted_attribute_value (attribute_value) @_scss)))
            (#eq? @_lang "lang")
            (#any-of? @_scss "scss" "less" "postcss")
            (raw_text) @scss))
        ]]
      }
    }
  }
}

return options
