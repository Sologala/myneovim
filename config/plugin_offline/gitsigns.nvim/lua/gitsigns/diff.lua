local config = require('gitsigns.config').config
local Hunk = require('gitsigns.hunks').Hunk

return function(a, b)
   local diff_opts = config.diff_opts
   local f
   if diff_opts.internal then
      f = require('gitsigns.diff_int').run_diff
   else
      f = require('gitsigns.diff_ext').run_diff
   end
   return f(a, b, diff_opts.algorithm, diff_opts.indent_heuristic)
end
