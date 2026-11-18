-- lualine theme for rex.nvim. Colors are terminal palette indices, like the
-- colorscheme itself; lualine passes numbers through as cterm colors.
local p = require("rex").palette

local function mode(color)
  return {
    a = { fg = p.bg, bg = color, gui = "bold" },
    b = { fg = p.fg, bg = p.bg3 },
    c = { fg = p.subtle, bg = p.bg2 },
  }
end

return {
  normal = mode(p.blue),
  insert = mode(p.green),
  visual = mode(p.magenta),
  replace = mode(p.red),
  command = mode(p.orange),
  terminal = mode(p.cyan),
  inactive = {
    a = { fg = p.dim, bg = p.bg1 },
    b = { fg = p.dim, bg = p.bg1 },
    c = { fg = p.dim, bg = p.bg1 },
  },
}
