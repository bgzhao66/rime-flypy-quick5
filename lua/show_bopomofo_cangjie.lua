-- Include module bopomofo
local bopomofo = require("bopomofo")

local function filter_func(input, env)
  local ctx = env.engine.context
  local user_input = ctx.input

  for cand in input:iter() do
    local N = utf8.len(cand.text) or 1
    local total_len = #user_input
    local py_len = math.min(2*N, total_len)
    local py_code = user_input:sub(1, py_len)
    local cj_code = user_input:sub(2*N+1, total_len)

    local zhuyin = bopomofo.shuangpin_to_zhuyin_full(py_code)
    local cj = bopomofo.to_cangjie(cj_code)
    cand.preedit = string.format("%s%s", zhuyin, cj)

    yield(cand)
  end
end

return { func = filter_func }

