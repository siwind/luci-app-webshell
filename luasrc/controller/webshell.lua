module("luci.controller.webshell", package.seeall)
  

function index()
    local page
    page = entry({"admin", "services", "webshell"}, form("webshell"), _("Web Shell"), 100)
    page.i18n = "webshell"
    page.dependent = true
end
