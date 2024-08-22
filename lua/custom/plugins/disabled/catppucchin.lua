return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha', -- latte, frappe, macchiato, mocha
        color_overrides = {
          all = {
            --text = '#ffffff',
          },
          latte = {
            base = '#ff0000',
            mantle = '#242424',
            crust = '#474747',
          },
          frappe = {},
          macchiato = {},
          mocha = {
            --[[ vscode -- not so nice
            base = '#1c1917',
            blue = '#22d3ee',
            green = '#86efac',
            flamingo = '#D6409F',
            lavender = '#DE51A8',
            pink = '#f9a8d4',
            red = '#fda4af',
            maroon = '#f87171',
            mauve = '#D19DFF',
            text = '#E8E2D9',
            sky = '#7ee6fd',
            yellow = '#fde68a',
            rosewater = '#f4c2c2',
            peach = '#fba8c4',
            teal = '#4fd1c5',
            --]]
            --[[  mocha with more contrast src: https://github.com/catppuccin/nvim/discussions/323#discussioncomment-6488799
            rosewater = '#ffc9c9',
            flamingo = '#ff9f9a',
            pink = '#ffa9c9',
            mauve = '#df95cf',
            lavender = '#a990c9',
            red = '#ff6960',
            maroon = '#f98080',
            peach = '#f9905f',
            yellow = '#f9bd69',
            green = '#b0d080',
            teal = '#a0dfa0',
            sky = '#a0d0c0',
            sapphire = '#95b9d0',
            blue = '#89a0e0',
            text = '#e0d0b0',
            subtext1 = '#d5c4a1',
            subtext0 = '#bdae93',
            overlay2 = '#928374',
            overlay1 = '#7c6f64',
            overlay0 = '#665c54',
            surface2 = '#504844',
            surface1 = '#3a3634',
            surface0 = '#252525',
            base = '#151515',
            mantle = '#0e0e0e',
            crust = '#080808',
            --]]
            --[ mocha w/o bluish bg :+1: https://github.com/catppuccin/nvim/discussions/323#discussioncomment-8105066
            rosewater = '#ffc0b9',
            flamingo = '#f5aba3',
            pink = '#f592d6',
            mauve = '#c0afff',
            red = '#ea746c',
            maroon = '#ff8595',
            peach = '#fa9a6d',
            yellow = '#ffe081',
            green = '#99d783',
            teal = '#47deb4',
            sky = '#00d5ed',
            sapphire = '#00dfce',
            blue = '#00baee',
            lavender = '#abbff3',
            text = '#cccccc',
            subtext1 = '#bbbbbb',
            subtext0 = '#aaaaaa',
            overlay2 = '#999999',
            overlay1 = '#888888',
            overlay0 = '#777777',
            surface2 = '#666666',
            surface1 = '#555555',
            surface0 = '#444444',
            base = '#202020',
            mantle = '#222222',
            crust = '#333333',
            --]]
          },
        },
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = '',
          },
        },
      }
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
