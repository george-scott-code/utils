local filename = arg[1]

if not filename then 
    print("enter filename:")
    filename = io.read()
end

handle, error = io.open(filename)
if handle == nil then
    print(error)
else
    io.input(handle)
    
    local content = io.read("*all")
    
    for tag in string.gmatch(content, "(#%a+)") do
        io.write(tag, " ") 
    end
    io.write("\n")
end
