-- import sha1 module. Downloaded from https://github.com/kikito/sha1.lua
sha1 = require 'sha1'

-- this is the sha1 hash we are trying to find.
crack = '5491aec0206e6dd40b9f8d86fce427d66b188dfe'

-- total lowercase alphabet plus numbers and special characters.
c = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4',
        '5', '6', '7', '8', '9', '!', '@', '#', '$', '%', '^', '&', '*', '?'}

-- looking for a 4 length word, so 4 for loops. There are 45 characters in the array above.
-- may refactor at some point and use an iteration but still need to learn how to use that.
for i = 1, 45 do
    for j = 1, 45 do
        for k = 1, 45 do
            for l = 1, 45 do
                -- look through every combination of 4 characters above.
                -- concatenate together along with the letter 'v' in the front and the symbol '-' at the end.
                pass = 'v' .. c[i] .. c[j] .. c[k] .. c[l] ..'-'
                -- print(pass)

                -- then turn string into a sha1 hash.
                hash = sha1(pass)

                -- compare the combination hash with the sha1 hash we are trying crack.
                if hash == crack then print(pass .. hash) end
            end
        end
    end
end
