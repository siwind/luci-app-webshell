m = SimpleForm("webshell", translate("A simple Web Shell"),
    translate("Used to execute simple shell command with return values."))

m.submit = translate("Run")
m.reset  = false

s = m:section(SimpleSection)

vCmd = s:option(Value, "cmd", translatef("Command :"),"")
vCmd.datatype = "string"
vCmd.size = 40

vLabel = s:option(DummyValue,"result", translatef("Result :"), translate("command execution return values.") .. "<br/>" .. translate("Do not execute commands such as <b><font color=\"blue\">ping, top</font></b>, etc. which do not return values immediately!") )

function vCmd.write(self, s, val)
	local re = ""
	local runcmd = val

	local shellpipe = io.popen(runcmd.." 2>&1","rw")
	re = shellpipe:read("*a")
	shellpipe:close()
	if not re then
		re=""
	end

	m.message = "<b># &ensp;" .. "<font color=\"red\">" .. val .."</font></b>" .. "<br/><pre>" .. re .. "</pre>"
end

--m.message="Hello, Web Shell!"

return m
