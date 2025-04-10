local filename = arg[1]

if not filename then 
    print("enter filename:")
    fileName = io.read()
end

io.input(filename)
local content = io.read("*all")

for tag in string.gmatch(content, "(#%a+)") do
    print(tag)
end

