-- Created By Sanjay2003rbx
-- Version: 1.5.0

local discordia = require('discordia')
local client = discordia.Client:new()

-- Settings
local Admins = { ["189513922808774656"] = true,
["179201489363795968"] = true, ["178525861476040704"] = true } 
local Creator = { ["179201489363795968"] = true }

-- Client Starts
client:on('ready', function()

	p(string.format('Logged in as %s', client.user.username))
end)

-- <Admin> Clear Command
client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Admins[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	print(cmd)
	if cmd == '>clearchat' then
		message.channel:bulkDelete(message.channel:getMessageHistory(100))
		message.channel:sendMessage(string.format(' ``` Chat messages have been cleared! ```, %s', message.author:getMentionString()))
		end
	end
end)

-- Creator Commands
client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Creator[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	print(message)
	if cmd == '>test' then
		message.channel:sendMessage(string.format(' ``` JBot:Online ```, %s', message.author:getMentionString()))
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Creator[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	print(message)
	if cmd == '>todo' then
		message.channel:sendMessage(string.format(' ``` List: RbxApi Support, Youtube Api/Imgur Api support with 18+ filter; prevents users from accessing illegal or restricted content not suited for young viewers, ability to add admins in server, more fun commands, Clear messages command. ```, %s', message.author:getMentionString()))
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Creator[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>disconnect' then
		message.channel:sendMessage(string.format(' ``` JBot shutting down. ```, %s', message.author:getMentionString()))
		client:stop()
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Creator[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>servers' then
		message.channel:sendMessage(string.format(' ``` Current Servers: 3 ```, %s', message.author:getMentionString()))
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Creator[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>stats' then
		message.channel:sendMessage(string.format(' ``` Name: JBot#7214. Bot: Yes. Desc: Multipurpose bot used to moderate servers or provide fun commands for you and your server. Language: Lua. Framework: Luvit. Lib: Discordia. Lib Creator: Sinister Rectus. Region: World. Version: 1.5.0. Updated: Yes. Updates: No. ```, %s', message.author:getMentionString()))
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Creator[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	print(cmd)
	if cmd == '>setgame' then
		client:setGameName(" >help | 3 server")
		message.channel:sendMessage(string.format(' ``` Set to online server count. ```, %s', message.author:getMentionString()))
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Creator[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	print(cmd)
	if cmd == '>setidle' then
		message.channel:sendMessage(string.format(' ``` JBot set to Idle! ```, %s', message.author:getMentionString()))
		client:setStatusIdle()
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Creator[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	print(cmd)
	if cmd == '>setonline' then
		message.channel:sendMessage(string.format(' ``` JBot Set to online! ```, %s', message.author:getMentionString()))
		client:setStatusOnline()
		end
	end
end)

--- Admin Commands

client:on('messageCreate', function(message)
    if message.author == client.user then return end
    if Admins[message.author.id] == true then 
    local cmd, arg = string.match(message.content, '(%S+) (.*)')
    cmd = cmd or message.content
    if cmd == '>kick' then
        for _, member in pairs(message.mentions.members) do
        if Admins[member.id] == true then
          message.channel:sendMessage("You cant kick admins!")
        else
        message.channel:sendMessage(string.format('%s , User has been kicked!', message.author:getMentionString()))
        member:kick()
				end
			end
		end
    end
end) 

client:on('messageCreate', function(message)
    if message.author == client.user then return end
    if Admins[message.author.id] == true then 
    local cmd, arg = string.match(message.content, '(%S+) (.*)')
    cmd = cmd or message.content
    if cmd == '>ban' then
        for _, member in pairs(message.mentions.members) do
        if Admins[member.id] == true then
          message.channel:sendMessage("You cant ban admins!")
        else
        message.channel:sendMessage(string.format('%s , User has been banned!', message.author:getMentionString()))
        member:ban(message.server)
				end
			end
		end
    end
end) 

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Admins[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>warn' then
		for _, member in pairs(message.mentions.members) do
		message.channel:sendMessage(string.format('%s , User has been warned!', message.author:getMentionString()))
			end
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Admins[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>admins' then
		message.channel:sendMessage(string.format(' ``` Admin List: 189513922808774656/Katyusha 178525861476040704/Unique```, %s', message.author:getMentionString()))
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Admins[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>creator' then
		message.channel:sendMessage(string.format(' ``` Creator: 179201489363795968/sanjay2003rbx   ```, %s', message.author:getMentionString()))
		end
	end
end)

-- Normal User Commands
client:on('messageCreate', function(message)
	if message.author == client.user then return end
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>cmds' then
		message.channel:sendMessage(string.format(' ``` Comamnds: @Creator: >test, >servers, >stats, >disconnect, >todo, >setgame, >setidle, >setonline @Admin: >kick <@user>, >ban <@user>, >warn <@user> >admins, >creator, >clearchat @Free: >cmds, >joke, >invite, >help, >about, >home, >new ```, %s', message.author:getMentionString()))
		
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>joke' then
		message.channel:sendMessage(string.format(' ``` Who has 4 legs and utterly austistic? Your mum. ```, %s', message.author:getMentionString()))
		
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>new' then
		message.channel:sendMessage(string.format(' ``` Current Version 1.5.0: >kick and >ban can no longer ban/kick admins! ```, %s', message.author:getMentionString()))
		
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>invite' then
		message.channel:sendMessage(string.format(' ``` Hey! I knew you wanted me in your server. Click the link and add me to any server you want! For admin functions, enable all permissions and create a roleset on the account and name it anything. Then, make sure my roleset is the highest! Anyway, heres my invite link: ``` https://discordapp.com/oauth2/authorize?client_id=188832852270383106&scope=bot&permissions=0 , %s', message.author:getMentionString()))
		
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>home' then
		message.channel:sendMessage(string.format(' ``` Want to talk to the people that made me and work to keep me moving? Join this server! link: ``` https://discord.gg/011CUVhYmwGGk6d8H , %s', message.author:getMentionString()))
		
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>help' then
		message.channel:sendMessage(string.format(' ``` The prefix is a ">" also known universally as an arrow sign! Chat >cmds for a list of commands.  ```, %s', message.author:getMentionString()))
		
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>about' then
		message.channel:sendMessage(string.format(' ``` JBot is a multi-service bot created by sanjay2003rbx. Simply written in Lua using the Discordia Library. Deemed as the 1st complex bot written via the Discordia Lib, and does its best to uphold that mantle! As you can imagine, its features are vast! Supports Admin features, fun commands, Bot Stats, and others! JBot is always updating so be sure to have it in your server today!  ```, %s', message.author:getMentionString()))
		
	end
end)

client:run('MTg4ODMyOTE0NjM5ODE0NjU2.CkOQUw.m61_fQf6ryN22t1_VXE74iyV1-8') 
-- Client Ran