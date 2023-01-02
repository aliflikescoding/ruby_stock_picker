def stock_picker(array)
    arr = Array.new()
    buy_idx = 0
    min = array.max
    array.each_with_index do |elm, idx|
        x = elm - idx
        if x > 0 then # if its less than or 0 it is too big we aren't going to buy there 
            if x < min then
                min = x
                buy_idx = idx
            end
        end
    end
    arr.push(buy_idx)
    max = array.min
    sell_idx = 0
    array.each_with_index do |elm, idx|
        x = elm - idx
        if idx > buy_idx then # we can't sell before we buy
            if x > max then
                max = x
                sell_idx = idx
            end
        end
    end
    arr.push(sell_idx)
    arr
end

stock_picker([17,3,6,9,15,8,6,1,10])