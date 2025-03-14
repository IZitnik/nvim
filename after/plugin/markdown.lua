require('render-markdown').setup({
  latex = {
    enabled    = true,
    converter  = 'latex2text.exe',
    highlight  = 'RenderMarkdownMath',
    top_pad    = 0,
    bottom_pad = 0,
  },
  code = {
    border    = 'thick',
    width     = 'block',
    left_pad  = 2,
    right_pad = 2,
  },
  heading = {
    sign     = false,
    position = 'inline',
    width    = 'full',
    left_pad = 0.5,
  },
})
