local originalName = "HIGH ENCRYPTION 💢.lua"  
local currentName = gg.getFile():match("([^/]+)$")  

if currentName ~= originalName then
    gg.alert("Fuck You :\n" .. originalName)
    os.exit()  
end
local game = gg.getTargetInfo()
or 
{x64 = gg.alert('Is game?', 'x64', '', 'x32') == 1}
local x64 = game.x64
local info = gg.getTargetInfo()
if info == nil then
print("Can't retrieve information about the process")
else
if not info.x64 then
CheckBit = "x32"
else
CheckBit = "x64"
end
end
Game = gg["getTargetInfo"]().label
Ver = gg["getTargetInfo"]().versionName
pak = gg["getTargetInfo"]().packageName
local cfg = loadfile(gg.EXT_CACHE_DIR .. '/' .. gg.getFile():match('[^/]+$'))
cfg = cfg and cfg().version == version and cfg() or {-77, 47, false, false}
credit = "REX Modder Lua"		
local Key = "https://t.me/ShivaRebornx \n 𝕮𝖔𝖓𝖙𝖆𝖈𝖙 𝖓𝖔 : 𝟵𝟰𝟵𝟲𝟵𝟯𝟰𝟵𝟯𝟲"
local GetKey = "https://yeumoney.com/AICzPy"
local API = "https://anotepad.com/notes/tfishmk7"
local savedKeyFile = "saved_key.txt"   
function ReadSavedKey()
local file = io.open(savedKeyFile, "r")
if file then
local savedKey = file:read("*a")
file:close()
return savedKey
end
return nil
end 
function SaveKey(key)
local file = io.open(savedKeyFile, "w")
if file then
file:write(key)
file:close()
gg.toast("Key saved successfully!")
end
end   
function DeleteKey()
os.remove(savedKeyFile)
gg.toast("Key deleted!")
end    
local GetData = (gg.makeRequest(API).content)
if not GetData then
gg.alert("ɴᴏ ɪɴᴛᴇʀɴᴇᴛ ᴄᴏɴɴᴇᴄᴛɪᴏɴ⚠️")
return
end   
KeyOnline = string.match(GetData, "Key:%s*([%w%d]+)")
ExpireDate = string.match(GetData, "ExpireDate:%s*(%d%d%d%d%-%d%d%-%d%d)")
Message = string.match(GetData, "Message")
print("Key:", Key)
print("Expire Date:", ExpireDate)
print("Message:", Message)
if KeyOnline == nil then
gg.alert("⚠️█▓▒▒░░░ꜰᴏʀ ᴍᴀɪɴᴛᴇɴᴀɴᴄᴇ░░░▒▒▓█ ⚠️")
return
end
if ExpireDate == nil then
gg.alert("ᴇʀʀᴏʀ ꜰᴇᴛᴄʜɪɴɢ ᴇxᴘɪʀᴇ ᴅᴀᴛᴇ! ᴄʜᴇᴄᴋ ᴛʜᴇ ꜰᴏʀᴍᴀᴛ ɪɴ ᴛʜᴇ ᴘᴀɢᴇ ɴᴏᴛᴇ⚠️")
return
end    
local CurrentDate = os.date("%Y-%m-%d")
if CurrentDate > ExpireDate then
gg.alert("𝐒𝐂𝐑𝐈𝐏𝐓 𝐇𝐀𝐒 𝐄𝐗𝐏𝐈𝐑𝐄𝐃!\n𝐔𝐏𝐃𝐀𝐓𝐄 𝐒𝐎𝐎𝐍❤️‍🔥\n𝐂𝐎𝐍𝐓𝐀𝐂𝐓 𝐃𝐄𝐕𝐄𝐋𝐎𝐏𝐄𝐑: @ShivaRebornx  \n𝐄𝐗𝐏𝐈𝐑𝐄 𝐃𝐀𝐓𝐄: " .. ExpireDate)
os.exit()
end   
local savedKey = ReadSavedKey()
if savedKey and savedKey == KeyOnline then
gg.toast("Auto Login Success!\nExpire Date: " .. ExpireDate)
else
local Pastek = gg.prompt({"🔑ᴇɴᴛᴇʀ ᴋᴇʏ"}, nil, {"text"})
if Pastek == nil or Pastek[1] == "" then
gg.alert("ʏᴏᴜ ᴍᴜꜱᴛ ᴇɴᴛᴇʀ ᴀ ᴋᴇʏ⚠️")
return
end   
if Pastek[1] ~= KeyOnline then
local choice = gg.choice({"🔗ᴄᴏᴘʏ ʟɪɴᴋ", "ᴏᴋ✅"}, nil, "💢ᴘᴀꜱꜱᴡᴏʀᴅ ᴡʀᴏɴɢ!\n🔑ɢᴇᴛ ᴋᴇʏ ʜᴇʀᴇ:\n"..Key)
if choice == 1 then
gg.copyText(Key)
gg.toast("ʟɪɴᴋ ᴄᴏᴘɪᴇᴅ ᴛᴏ ᴄʟɪᴘʙᴏᴀʀᴅ!📋")
end
return
else      
local saveChoice = gg.choice({"🔐ꜱᴀᴠᴇ ᴋᴇʏ", "💢ᴅᴏ ɴᴏᴛ ꜱᴀᴠᴇ"}, nil, "ʟᴏɢɪɴ ꜱᴜᴄᴄᴇꜱꜱꜰᴜʟ!\nᴅᴏ ʏᴏᴜ ᴡᴀɴᴛ ᴛᴏ ꜱᴀᴠᴇ ᴛʜɪꜱ ᴋᴇʏ ꜰᴏʀ ɴᴇxᴛ ᴛɪᴍᴇ?📁")
if saveChoice == 1 then
SaveKey(Pastek[1])
end
end
end    
if gg.choice({"ᴅᴇʟᴇᴛᴇ ꜱᴀᴠᴇᴅ ᴋᴇʏ🔑", "ᴄᴏɴᴛɪɴᴜᴇ✅"}, nil, "ᴍᴀɴᴀɢᴇ ꜱᴀᴠᴇᴅ ᴋᴇʏ📁") == 1 then
DeleteKey()
end   
local SaveOFF = {}
local function hex2tbl(hex)
local ret = {}
hex:gsub('%S%S', function(ch)
ret[#ret + 1] = ch
return ''
end)
return ret
end
local function getValues(lib, address, length)
local values = {}
for i = 1, length do
values[i] = {
address = lib + address + i - 1,
flags = gg.TYPE_BYTE
}
end
return gg.getValues(values)
end
local function setValues(lib, address, values)
local set = {}
for i = 1, #values do
set[i] = {
address = lib + address + i - 1,
value = values[i],
flags = gg.TYPE_BYTE
}
end
gg.setValues(set)
gg.clearResults()
end
function SetValue(a, b, c)
local set = {}
local lib = gg.getRangesList(a)[1].start
local Hex = hex2tbl(c)
local V = {}
for i = 1, #Hex do
V[i] = tonumber(Hex[i], 16)
if V[i] > 127 then
V[i] = V[i] - 256
end
end
if not SaveOFF[b] then
local Z = {}
for i = 1, #Hex do
Z[i] = {
address = lib + b + i - 1,
flags = gg.TYPE_BYTE
}
end
SaveOFF[b] = gg.getValues(Z)
end
local R = getValues(lib, b, #Hex)
if R[1].value == V[1] and R[3].value == V[3] then
gg.setValues(SaveOFF[b])
else
setValues(lib, b, V)
end
end
local hello = gg.alert("🌐═══════════════════════════🌐\n\t\t\t💢━━━━━━━━━━━━━━━━━━━━━━━💢\n\t\t\t💀 𝐑𝐞𝐱 𝕷𝖚𝖆 𝕮𝖔𝖒𝖒𝖚𝖓𝖎𝖙𝐲 𝐕𝟓𝟎 𝕾𝖈𝖗𝖎𝖕𝖙  💀\n\t\t\t💢━━━━━━━━━━━━━━━━━━━━━━━💢\n🌐═══════════════════════════🌐","🔑𝕷𝖔𝖌𝖎𝖓 𝕾𝖈𝖗𝖎𝖕𝖙","💢𝕿𝖝𝖎𝖙")
gg.toast("𝐓𝖆𝖕 𝕺𝖓 𝐈𝖈𝖔𝖓🔥")
if hello == 1 then

--⚾⃢       Toggle States
local toggle = {
  headshot = false,
  antenna = false
}

function REX()
gg.setVisible(false)
local menu = gg.choice({
(toggle.headshot and "  ⃢🥎" or "⚾⃢    ") .. " ΛЩM ΛIMBӨƬ ˡᵒᵍⁱⁿ🎯",
(toggle.antenna and "  ⃢🥎" or "⚾⃢    ") .. " Uʅƚɾα Sɯιƚƈԋιɳɠ ˡᵒᵍⁱⁿ🔫",
"💢𝕿𝖝𝖎𝖙 𝕾𝖈𝖗𝖎𝖕𝖙"
  }, nil, "\n    💢  𝐑𝖊𝖝 𝕷𝖚𝖆 𝐕𝟓𝟎 𝕾𝖈𝖗𝖎𝖕𝖙 💢   \n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n✘ 𝗖𝗿𝗲𝗮𝘁𝗼𝗿 : [🧩 > 𝗥𝗘𝗫   < 🧩]   ✘\n✘ 𝗩𝗲𝗿𝘀𝗶𝗼𝗻  : [🎮 > [ 𝖋𝖋 𝖒𝖆𝖝 ] < 🎮]  ✘ \n✘ 𝗘𝘅𝗽𝗶𝗿𝗲   : [⏰ > 𝕾𝖊𝖗𝖛𝖊𝖗 𝖁𝖆𝖘𝖊 < ⏰]✘ \n✘ 𝕺𝖊𝖛𝖎𝖈𝖊 : [🦹‍♂️✡️ > 𝖀𝖓𝖑𝖎𝖒𝖎𝖙𝖊𝖉 <✡️]✘\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")

if menu == 1 then  headshot()
elseif menu == 2 then antenna()
elseif menu == 3 then  gg.toast("🌐ɢᴏᴏᴅ ʙʏᴇ ᴏᴡɴᴇʀ ᴏꜰ ʀᴇx ʟᴜᴀ ᴄᴏᴍᴍᴜɴɪᴛʏ🌐")  os.exit()
else
gg.toast("⚠️ No option selected")
end
end

function headshot()
toggle.headshot = not toggle.headshot
if toggle.headshot then
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("h 08 00 00 00 00 00 60 40 CD CC 8C 3F 8F C2 F5 3C CD CC CC 3D 06 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 3F 33 33 13 40 00 00 B0 3F 00 00 80 3F 01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("h 08 00 00 00 00 00 60 40 CD CC 8C 3F 8F C2 F5 3C CD CC CC 3D 06 00 00 00 00 00 80 3f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 33 13 40 00 00 B0 3F 00 00 80 3F 01", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("💢 ΛЩM ΛIMBӨƬ σи💢")
else
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("h 08 00 00 00 00 00 60 40 CD CC 8C 3F 8F C2 F5 3C CD CC CC 3D 06 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 3F 33 33 13 40 00 00 B0 3F 00 00 80 3F 01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("h 08 00 00 00 00 00 60 40 CD CC 8C 3F 8F C2 F5 3C CD CC CC 3D 06 00 00 00 00 00 80 3f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 33 13 40 00 00 B0 3F 00 00 80 3F 01", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("❌ ΛЩM ΛIMBӨƬ σff")
end
end

function antenna()
toggle.antenna = not toggle.antenna
if toggle.antenna then
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_CODE_APP)
gg.searchNumber("h 5C 43 00 00 90 42 00 00 B4 42 96 00 00 00 00 00 00 00 00 00 00 3F 00 00 80 3E", gg.TYPE_BYTE)
gg.getResults(100)
gg.editAll("h 5c 43 00 00 8c 42 00 00 b4 42 96 00 00 00 00 0000 00 00 00 00 1a 00 00 80 1c", gg.TYPE_BYTE)
gg.toast("💢Uʅƚɾα Sɯιƚƈԋιɳɠ σи💢")
else
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_CODE_APP)
gg.searchNumber("h 5C 43 00 00 90 42 00 00 B4 42 96 00 00 00 00 00 00 00 00 00 00 3F 00 00 80 3E", gg.TYPE_BYTE)
gg.getResults(100)
gg.editAll("h 5c 43 00 00 8c 42 00 00 b4 42 96 00 00 00 00 0000 00 00 00 00 1a 00 00 80 1c", gg.TYPE_BYTE)
gg.toast("❌ Uʅƚɾα Sɯιƚƈԋιɳɠ σff")
end
end

else
os.exit()
end
          
while true do
if gg.isVisible(true) then
gg.setVisible(false)
REX()
end
end
