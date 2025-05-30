local _, T = ...

-- See https://www.townlong-yak.com/addons/poff/localization

local C, z, V, K = GetLocale(), nil
V =
    C == "zhCN" and { -- 5/5 (100%)
      "可用：", "未找到匹配的订单。", "发布人/剩余时间：", "你制造/提供：", "你获得：",
    } or
    C == "ruRU" and { -- 5/5 (100%) ZamestoTV
      "Доступно:", "Нет доступных подходящих заказов.", "Заказчик / Оставшееся время:", "Вы изготавливаете/предоставляете:", "Вы получаете:",
    } or nil

K = V and {
      "Available:", "No matching patron orders available.", "Patron / Time remaining:", "You craft/provide:", "You receive:",
}

local L = K and {}
for i=1,K and #K or 0 do
	L[K[i]] = V[i]
end

T.L = L or nil