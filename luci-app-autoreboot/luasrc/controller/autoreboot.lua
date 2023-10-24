module("luci.controller.autoreboot", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/autoreboot") then
		return
	end

	entry({"admin", "services", "autoreboot"}, cbi("autoreboot"), _("Scheduled Reboot"),88)
end
