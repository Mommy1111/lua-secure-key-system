
_G.k = 'i love your mom' --key that user enters



function check_key()
    local key = 'i love your mom' --correct key
local ma = math.random(1,100000)
local to_table = function(key)return {function()
    local is_done = false
    local final = {}
    local letter = 1
    while is_done == false do
        if letter == #key + 1 then
            return {1,final,ma}
        end
        table.insert(final,string.byte(string.sub(key,letter,letter))+ma)
        letter = letter + 1
    end
end}
end
--if not in roblox
if not pcall(wait) then
    function wait(time)
        local duration = os.time() + time
        while os.time() < duration do end
    end
end

return(function ()
    local idk1 = to_table(_G.k)
    local idk = to_table(key)
    local tab = idk[1]()
    local tab2 = idk1[1]()
    if tab[1] == 1 and tab2[1] == 1 then
        table.insert(idk,1)
        table.insert(idk1,1)
    end
    wait(1)
    if idk[2] == 1 and idk1[2] == 1 then
        local final = {}
        local final1 = {}
        local final2 = ''
        local final3 = ''
        local final4 = ''
        local final5 = ''
        local is_g = {['check1'] = true,['check2'] = true,['check3'] = true,['check4'] = true,['check5'] = false,['check6'] = false}
        if #tostring(tab[2]) == #tostring(tab2[2]) then
            for i,v in pairs(tab[2]) do
                if v == tab2[2][i] then
                    table.insert(final,tonumber(v)-tonumber(ma))
                else
                    is_g['check1'] = false
                end
            end
            for i,v in pairs(tab2[2]) do
                if v == tab[2][i] then
                    table.insert(final1,tonumber(v)-tonumber(ma))
                else
                    is_g['check2'] = false
                end
            end
            for i,v in pairs(final) do
                if v == final1[i] then
                    final4 = final4..tostring(v)
                    final2 = final2..string.char(v)
                else
                    is_g['check3'] = false
                end
            end
            for i,v in pairs(final1) do
                if v == final[i] then
                    final5 = final5..tostring(v)
                    final3 = final3..string.char(v)
                else
                    is_g['check4'] = false
                end
            end
            if final2 == final3 then
                is_g['check5'] = true
            end
            if final4 == final5 then
                is_g['check6'] = true
            end
        end
        if is_g['check1'] == true and is_g['check2'] == true and is_g['check3'] == true and is_g['check4'] == true and is_g['check5'] == true and is_g['check6'] == true then
            return(function()
                -- //code after correct key
                print('correct key')
            end)()
        else
            return(function()
                -- //code after incorrect key
                print('incorrect key')
            end)()
        end
    end
end)()
end


--check key function
check_key()
