-- testing
print("enter filename:")

local fileName = io.read()
print(fileName)

io.input(fileName)
local content = io.read("*all")

tags = {}
for tag in string.gmatch(content, "(#%a+)") do
	print(tag)
end

