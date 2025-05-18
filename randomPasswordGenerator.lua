-- Originally made to generate a
-- secure datastore key for my Roblox
-- experience's instance of Adonis
local pass = ""
function character()
	local code = math.random(48, 122)
	local valid = false
	while valid == false do
		code = math.random(48, 122)
		valid = true
		if code > 57 and code < 65 then valid = false end
		if code > 90 and code < 97 then valid = false end
	end
	return string.char(code)
end
for _ = 1, 10 do pass ..= character() end
pass ..= "-"
for _ = 1, 10 do pass ..= character() end
pass ..= "-"
for _ = 1, 10 do pass ..= character() end
print(pass) -- Example result: qoZ3rYZ9hA-aKyAAYQD2w-eGpcVuUtAX
