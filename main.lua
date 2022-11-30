-- local function main()
--     local f <close> = io.open("input.mp4", "rb")
--     f:seek("set", 3)
--     local data = f:read("*a")
--     local o <close> = io.open("out.mp4", "w+b")
--     o:write(data)
-- end

local function get_input_file()
    local path = ""
    if #arg ~= 0 then
        for i = 1, #arg do
            path = path .. arg[i]
        end
    else
        print("drag your file that need to be processed down here")
        path = io.stdin:read("*l")
        --#region process path
        if string.sub(path, 1, 1) == "\"" then
            path = string.sub(path, 2, #path)
        end
        if string.sub(path, -1) == "\"" then
            path = string.sub(path, 1, #path - 1)
        end
        --#endregion
    end

    return (
        {
            xpcall(
                function()
                    local f = io.open(path, "rb")
                    if type(f) =="userdata" then
                        print("please wait...")
                    else
                        error()
                    end
                    return f
                end,
                function(err)
                    print("check the file path you've input.")
                    os.execute("pause")
                    os.exit()
                end
            )
        }
    )[2]
end



local function main(f)
    local t0 <const> = os.clock()
    local data = f:read("*a")
    local needprocess = true
    local head = {string.byte(data, 1, 3)}
    for i, v in ipairs(head) do
        if v ~= 255 then
            needprocess = false
            break
        end
    end
    if needprocess then
        local o <close> = io.open("out.mp4", "w+b")
        o:write(string.sub(data, 4, #data))
    else
        print("your video should not being processed by this program.")
        os.execute("pause")
        os.exit()
    end
    local dt <const> = os.clock() - t0
    print(string.format("done!\nproc time: %.fms", dt * 1000))
    os.execute("pause")
end

main(get_input_file())
