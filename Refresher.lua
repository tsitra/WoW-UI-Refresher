Refresher = LibStub("AceAddon-3.0"):NewAddon("Refresher", "AceConsole-3.0");
Refresher:RegisterChatCommand("refresher", "RefresherSlashProcesserFunc");
Refresher:RegisterChatCommand("ref", "RefresherSlashProcesserFunc");

local addonVersion = GetAddOnMetadata('Refresher', 'Version');


function Refresher:OnInitialize()
	Refresher:Print("Loading version " .. addonVersion);
	Refresher:Print("Type /ref or /refresher to reload the UI.");
end

function Refresher:OnEnable()
end

function Refresher:OnDisable()
end

function Refresher:RefresherSlashProcesserFunc(input)
	ConsoleExec( "reloadui" );
end