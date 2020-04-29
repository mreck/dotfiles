local config = import("micro/config")
local shell = import("micro/shell")

function init()
    -- true means overwrite any existing binding to CtrlR
    -- this will modify the bindings.json file
	-- config.TryBindKey("CtrlR", "lua:initlua.gorun", true)
end

function gorun(bp)
    local buf = bp.Buf
    if buf:FileType() == "go" then
        -- the true means run in the foreground
        -- the false means send output to stdout (instead of returning it)
        shell.RunInteractiveShell("go run " .. buf.Path, true, false)
    end
end
