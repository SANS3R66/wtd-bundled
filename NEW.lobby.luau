local a={cache={}}do do local function __modImpl()local b=game:GetService
'Players'local c=game:GetService'BadgeService'local d=game:GetService
'ReplicatedStorage'local e=game:GetService'RunService'local f=b.LocalPlayer
local g=(f.PlayerGui)local h=(d:FindFirstChild'FindFirstChild')local i=(d:
FindFirstChild'TeleportRemote')local j=(d:FindFirstChild'UseCode')local k=(
workspace.Characters.Trader.Head.RemoteEvent)local l=(g.AwesomeGUI.Trade_Frame.
Trinket2.AccessName)local m=(workspace:FindFirstChild'Map3')local n=(m.Lockpick.
prompt)local o='1.18.1'local p=CFrame.new(297.053253,0.499999881,-335.234741,
0.999997377,-1.9224634299999999E-8,-2.30112369E-3,1.91470146e-8,1,-3.37535155E-8
,0.00230112369,3.3709366e-8,0.999997377)local q=CFrame.new(266.589569,0.49999994
,-341.50174,0.66399318,3.8047499399999998e-8,-0.747738659,-6.74071288E-8,1,-
8.97422314E-9,0.747738659,5.63617384e-8,0.66399318)local r={'CARDS',
'arduous_update','new code'}local s={}function s.init()end function s.
isSubwayBadgeOwned()return g.AwesomeGUI.Shop.Badges.Array:WaitForChild
'3997104159229662':GetAttribute'Badge_Not_Owned'~=true end function s.
isTrainFriendsBadgeOwned()return g.AwesomeGUI.Shop.Badges.Array:WaitForChild
'890409060943147':GetAttribute'Badge_Not_Owned'~=true end function s.
getLongWayHomeBadge()h:FireServer'Train'end function s.getEveryoneIsHereBadge()h
:FireServer'Train 2'end function s.getTicketDialogue()workspace.Characters.
Advice.RemoteEvent:FireServer'Object'end function s.getFakeTicket()f:
SetAttribute('Trinket3','Ticket')end function s.getPowerGems()h:FireServer
'Trinket_Gems'end function s.activateLockpick()local t=f.Character.
HumanoidRootPart.CFrame Player.Character.HumanoidRootPart.CFrame=n.Parent.CFrame
task.wait(0.3)fireproximityprompt(n)task.wait(0.3)Player.Character.
HumanoidRootPart.CFrame=t end function s.toggleNoRewards()i:FireServer(
'SetModifier',{'Rewards Disabled'})end local function isRodActive(t)return t.
Handle.Main.RopeConstraint.Length>=3 end local t local u=false local v local w=
false function s.toggleAutofishing()if w then return end w=true if not u then t:
SetValue(false)local x=f.Character if x then local y=(x:FindFirstChild
'Fishing Rod')if y then x.HumanoidRootPart.CFrame=p u=true t:SetValue(true)v=
task.defer(function()task.wait(1)y.Script.Enabled=false while task.wait()do x.
HumanoidRootPart.CFrame=p task.wait(0.5)if not isRodActive(y)then y:Activate()
end y.RemoteEvent:FireServer(true)task.wait(2)end end)end end else if v then
task.cancel(v)end end w=false end function s.setAutofishingToggler(x)t=x end
function s.teleportToFishingRod()f.Character.HumanoidRootPart.CFrame=CFrame.new(
266.589569,0.49999994,-341.50174,0.66399318,3.8047499399999998e-8,-0.747738659,-
6.74071288E-8,1,-8.97422314E-9,0.747738659,5.63617384e-8,0.66399318)end function
s.activateEveryCode()for x,y in r do j:FireServer(y)task.wait(1)end end function
s.rerollTrinket(x)for y=1,500 do if l.Text==x then return end k:FireServer
'reroll'l.Changed:Wait()task.wait(0.1)end end return s end function a.a()local b
=a.cache.a if not b then b={c=__modImpl()}a.cache.a=b end return b.c end end do
local function __modImpl()local b={}local c=false function b.isInterfaceLoaded()
return c end function b.enableInterface()c=true end function b.
bridge_interfaceLogsPrint(d)warn
[[Interface didn't bridge logs! Check status with StatesBridge.isInterfaceLoaded before calling this..]]
end function b.bridge_interfaceLogsError(d)warn
[[Interface didn't bridge logs! Check status with StatesBridge.isInterfaceLoaded before calling this..]]
end function b.bridge_interfaceLogsWarn(d)warn
[[Interface didn't bridge logs! Check status with StatesBridge.isInterfaceLoaded before calling this..]]
end function b.bridge_interfaceLogsTrash(d)warn
[[Interface didn't bridge logs! Check status with StatesBridge.isInterfaceLoaded before calling this..]]
end function b.bridge_interfaceLogsSuccess(d)warn
[[Interface didn't bridge logs! Check status with StatesBridge.isInterfaceLoaded before calling this..]]
end return b end function a.b()local b=a.cache.b if not b then b={c=__modImpl()}
a.cache.b=b end return b.c end end do local function __modImpl()local b=a.b()
local c={}local d={}local e={}local f={}function c.print(g)if b.
isInterfaceLoaded()then b.bridge_interfaceLogsPrint(g)else print(
'[WTD-Survival script] ',g)table.insert(d,'[PRE-UI] '..g)end end function c.warn
(g)if b.isInterfaceLoaded()then b.bridge_interfaceLogsWarn(g)else warn(
'[WTD-Survival script] '..g)table.insert(e,'[PRE-UI] '..g)end end function c.
error(g)if b.isInterfaceLoaded()then b.bridge_interfaceLogsWarn(g)else warn(
'[WTD-Survival script ERR] '..g)table.insert(f,'[PRE-UI] '..g)end end function c
.flushStock()if b.isInterfaceLoaded()then for g,h in ipairs(d)do c.print(h)end
for g,h in ipairs(e)do c.print(h)end for g,h in ipairs(f)do c.print(h)end d={}e=
{}f={}else warn'Interface is not loaded, unable to flush stock.'end end return c
end function a.c()local b=a.cache.c if not b then b={c=__modImpl()}a.cache.c=b
end return b.c end end do local function __modImpl()local b={}function b.attach(
c,d)local e e=hookfunction(c,(function(...)local f={...}if d.onEnter then d.
onEnter(f)end local g={(e)(table.unpack(f))}if d.onLeave then d.onLeave(g)end
return table.unpack(g)end))return c end function b.detach(c)restorefunction(c)
end return b end function a.d()local b=a.cache.d if not b then b={c=__modImpl()}
a.cache.d=b end return b.c end end do local function __modImpl()local b=
'TESTING_WTD'local c=game:GetService'ReplicatedStorage'local d=game:GetService
'RunService'local e=a.d()local f=a.c()local g={}g.hookfunction={}g.
hookmetamethod={}g.identityManipulation={}g.filesystem={}local h=hookfunction~=
nil local i=hookmetamethod~=nil local j=getthreadidentity~=nil and
setthreadidentity~=nil local function assert(k,l)if not k then error(l)end end
local function assert_silent(k,l)if not k then f.print(l)end end function g.
ableToRecord()return(h or i)and j end function g.isCoresploit()if not
getthreadidentity then return false end if getthreadidentity()==3 then return
true end local k=pcall(require,c:FindFirstChild'GUI_Module')return k end local k
='very cool dummy return value'local l='very UNCOOL dummy return value'
local function DUMMY(m)return k,m.iamacoolkey end function g.hookfunction.
isAvailable()return h end function g.hookfunction.test()if not h then return end
e.attach(DUMMY,{onEnter=function(m)m.iamacoolkey='im uncol'end,onLeave=function(
m)m[1]=l m[2]='im uncol'end})local m,n=DUMMY{iamacoolkey='im col'}if m~=l or n~=
'im uncol'then f.print(`Some script's functions may be unavailable. This executor fakes hookfunction? [1]: {
m} (expected {l}). [2]: {n} (expected "im uncol").`)h=false end end function g.
filesystem.test()assert(isfile and isfolder,'isfile/isfolder is nil.')assert(
makefolder,'makefolder is nil.')assert(writefile,'writefile is nil.')assert(
delfolder,'delfolder is nil.')assert(readfile,'readfile is nil.')assert(delfile,
'delfile is nil')writefile(b,'real test')assert(readfile(b)=='real test',
[[This executor fakes either writefile or readfile. In both cases it's terrible.]]
)assert(isfile(b),`{b} is clearly a file.`)delfile(b)assert(not isfile(b),
'This executor fakes delfile??')end function g.identityManipulation.isAvailable(
)return j end function g.identityManipulation.test()if j then j=false local m,n=
pcall(function()local m=getthreadidentity()assert(m~=1,
'Why current thread identity is 1?????')setthreadidentity(1)assert(
getthreadidentity()~=m,`I've changed thread identity to 1, but it's still {m}. Such a trash.`
)setthreadidentity(8)task.spawn(function()setthreadidentity(1)return nil end)
assert(getthreadidentity()==8,
[[I've changed identity in other thread. It's changed in current thread. Results? Your executor fakes thread identities.]]
)return nil end)j=m if not m then f.error(`Identity test failed. {n}`)end end
end function g.hookmetamethod.isAvailable()return i end function g.
hookmetamethod.test()if not i then return end local m=false local n n=
hookmetamethod(game,'__namecall',function(...)if getnamecallmethod()==
'ReportInGoogleAnalytics'then m=true return else return n(...)end end)game:
ReportInGoogleAnalytics'loser'hookmetamethod(game,'__namecall',n)i=m end return
g end function a.e()local b=a.cache.e if not b then b={c=__modImpl()}a.cache.e=b
end return b.c end end do local function __modImpl()local b=a.c()local c={}local
d=false local e function c.record()if d then return b.error'Already recording.'
end e=hookmetamethod(game,'__namecall',function(f,...)local g=getnamecallmethod(
)if g=='FireServer'then local h={...}if h[1]=='lol'then print
'detected placing unit!!!'end end return e(...)end)end function c.stop()if not d
then return b.error'Not recording currently'end end function c.isRecording()
return d end function c.ableToRecord()return end return c end function a.f()
local b=a.cache.f if not b then b={c=__modImpl()}a.cache.f=b end return b.c end
end do local function __modImpl()local b={}local c=Color3.fromRGB(0,230,0)local
d=Color3.fromRGB(230,0,0)function b.bool2string(e)return e and'yes'or'no'end
function b.bool2color(e)return e and c or d end function b.isSurvival()return
game end return b end function a.g()local b=a.cache.g if not b then b={c=
__modImpl()}a.cache.g=b end return b.c end end do local function __modImpl()
local b={}local c=game:GetService'ReplicatedStorage'local d=game:GetService
'Lighting'local e=game:GetService'Players'local f='Cannot_See'local g=
'Cannot_Inspect'local h='No_Info'local i=e.LocalPlayer local j=(workspace:
FindFirstChild'BluTeamZombies')local k=(workspace:FindFirstChild'BluTeamUnits')
local l=(c:FindFirstChild'AccessoryHandle')local m=(c:FindFirstChild
'ChangeUnitTargetting')local n=false local o=false local function
bypassInspect_impl(p,q)p:SetAttribute(q,nil)p:GetAttributeChangedSignal(q):Once(
function()p:SetAttribute(q,nil)end)end local p={k=1000,m=1000000,b=1000000000,t=
1000000000000}local function parseNumber(q)q=q:gsub(',','')local r,s=q:match
'^([%d%.]+)(%a)$'if r then local t=tonumber(r)if not t then return-1 end local u
=p[string.lower(s)]if not u then return-1 end return math.floor(t*u+0.5)end
local t=tonumber(q)if not t then return-1 end return math.floor(t+0.5)end
local function parseStored(q)local r,s=string.match(q,
'Stored:%s*%$([%d%.]+%a?)/%$([%d%.]+%a?)')if not r or not s then return nil end
return{stored=parseNumber(r),max=parseNumber(s)}end function b.init()if not c:
FindFirstChild'admin'then error
[[Couldn't find admin remote. Are you sure you executed in survival place?]]end
k.ChildAdded:Connect(function(q)if n then bypassInspect_impl(q,h)
bypassInspect_impl(q,f)bypassInspect_impl(q,g)end end)task.defer(function()
local function startTracking(q,r)if o then local s=parseStored(r.Text)if s and s
.stored>=s.max then m:FireServer(q,'Ability')end end r:GetPropertyChangedSignal
'Text':Connect(function()if o then local s=parseStored(r.Text)if s and s.stored
>=s.max then m:FireServer(q,'Ability')end end end)end local function tryToTrack(
q)if q:IsA'Model'and q:WaitForChild('UnitBank',5)then local r=(q:WaitForChild(
'Owner',5))if r and r.Value==i then local s=(q:WaitForChild('HumanoidRootClone',
3))if s then local t=(s:WaitForChild('GUI1',3))if t then local u=(t:
WaitForChild('TextLabel',3))startTracking(q,u)end end end end end for q,r in k:
GetChildren()do task.defer(tryToTrack,r)end k.ChildAdded:Connect(tryToTrack)end)
end function b.toggleBypassInspect()if not n then n=true for q,r in k:
GetChildren()do r:SetAttribute(h,nil)r:SetAttribute(f,nil)r:SetAttribute(g,nil)
end else n=false end end function b.fullbright()d.OutdoorAmbient=Color3.fromRGB(
255,255,255)d.Brightness=2 d.Ambient=Color3.fromRGB(255,255,255)end
local function clean_text(q)local r=string.gsub(q,'\u{d7}','*')r=string.gsub(r,
'\u{f7}','/')r=string.gsub(r,'\u{221a}(%d+)','math.sqrt(%1)')r=string.gsub(r,
'\u{221a}%(','math.sqrt(')r=string.gsub(r,'\u{2179}','x')r=string.gsub(r,
'[^%w()%+*%-/%.%^=]','')r=string.gsub(r,'(%d)x','%1*x')r=string.gsub(r,'x(%d)',
'x*%1')r=string.gsub(r,'(%d)%(','%1*(')r=string.gsub(r,'x%(','x*(')r=string.
gsub(r,'%)(%d)',')*%1')r=string.gsub(r,'%)x',')*x')r=string.gsub(r,'%)%(',')*(')
return r end local function solve_linear_equation(q)local r,s=string.match(q,
'(.+)=(.+)')if not r or not s then return nil,'thats not an equation'end
local function evaluate_with_x(t,u)local v=`local x = {u}; return {t}`local w,x=
loadstring(v)if not w then return nil,x end local y,z=pcall(w)if not y then
return nil,z end return z end local t,u=evaluate_with_x(r,0)if not t then return
nil,`left part error with x=0: {u}`end local v,w=evaluate_with_x(r,1)if not v
then return nil,`left part error with x=1: {w}`end local x,y=evaluate_with_x(s,0
)if not x then return nil,`right part error with x=0: {y}`end local z,A=
evaluate_with_x(s,1)if not z then return nil,`right part error with x=1: {A}`end
local B=t local C=v-t local D=x local E=z-x local F=C-E local G=D-B if math.abs(
F)<1e-10 then if math.abs(G)<1e-10 then return nil,'too much solutions'else
return nil,'no solution'end end local H=G/F if math.abs(H-math.floor(H+0.5))<
1e-9 then H=math.floor(H+0.5)end return H,nil end function b.solveMath()local q=
'Answer: ???'for r,s in j:GetChildren()do local t=(s:FindFirstChild
'HumanoidRootClone')if t then local u=(t:FindFirstChild'Remains')if u then local
v=(u:FindFirstChild'Label')if v then local w={}for x,y in v:GetChildren()do if y
:IsA'TextLabel'then table.insert(w,y)end end table.sort(w,function(x,y)return x.
LayoutOrder<y.LayoutOrder end)local x=''for y,z in ipairs(w)do local A=(z:
FindFirstChild'Square')if A and A.Visible then x=x..z.Text..'^'..A.Text else x=x
..z.Text end x=x..'\n'end x=clean_text(x)if string.find(x,'x')and string.find(x,
'=')then local y,z=solve_linear_equation(x)if y then l:FireServer('Math',
tostring(y))q=`Answer: {tostring(y)}`else warn(`Couldn't solve Mathematician's equation: {
z}`)warn(`Equation: {x}`)setclipboard(x)end else local y,z=loadstring('return '
..x)if not y then warn(`Couldn't parse Mathematician's TextLabel: {z}`)warn(`Chunk source: {
x}`)else local A,B=pcall(y)if A then l:FireServer('Math',tostring(B))q=`Answer: {
tostring(B)}`else warn(`An error while calling chunk: {B}`)warn(`Chunk source: {
x}`)end end end end end end end return q end function b.toggleAutoBank()o=not o
end return b end function a.h()local b=a.cache.h if not b then b={c=__modImpl()}
a.cache.h=b end return b.c end end do local function __modImpl()local b=a.b()
local c=a.e()local d=a.f()local e=a.g()local f=game:GetService'RunService'local
g=request{Url=
[[https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua]],
Method='GET'}.Body local h,i=loadstring(g)assert(h,`Obsidian UI Library failed to load: {
i}`)local j=(h())local k={}local l=false function k.init()end local function
Interface_settingsTab(m)local n=m:AddTab('Settings','wrench')do local o=n:
AddLeftGroupbox('UI Settings','wrench')do o:AddLabel'Menu bind':AddKeyPicker(
'MenuKeybind',{Default='RightShift',NoUI=true,Text='Menu keybind',
ChangedCallback=function(p)if p:IsA'KeyCode'then j.ToggleKeybind=p end end})o:
AddButton('Unload',function()j:Unload()end)end end j.ToggleKeybind=Enum.KeyCode.
RightShift end function k.startSurvival()assert(not l,
[[You double called `Interface.start*`. Which obviously should not ever happen.]]
)l=true b.enableInterface()local m=a.h()local n=j:CreateWindow{Title='WTDm',
Footer='version: WTDm',Icon='',NotifySide='Right',Center=true,ShowCustomCursor=
false}local o=n:AddTab('Main','user')do local p=o:AddLeftGroupbox('Bypasses',
'boxes')do p:AddToggle('ToggleNoInspect',{Text='Bypass no inspect',Tooltip=
[[Allows you to see and inspect units info when you normally cannot.
(for an example, using a Knowledge Crystal)]]
,DisabledTooltip="This executor doesn't support this feature.",Disabled=false,
Default=false,Visible=true,Risky=false,Callback=m.toggleBypassInspect})p:
AddButton{Text='Fullbright',Tooltip='future is bright',Func=m.fullbright}end
local q=o:AddRightGroupbox('Math','square-sigma')do local r=q:AddLabel
'Answer: click button below'q:AddButton{Text='Solve math',Tooltip=
"Solves current Mathematician's problem.",Func=function()local s=m.solveMath()or
'Answer: ???'r:SetText(s)end}end local r=o:AddLeftGroupbox('Auto','boxes')do r:
AddToggle('ToggleAutoBank',{Text='Auto bank',Tooltip=
'Uses bank ability owned by you whenever they full.',DisabledTooltip=
"This executor doesn't support this feature.",Disabled=false,Default=false,
Visible=true,Risky=false,Callback=m.toggleAutoBank})end end
Interface_settingsTab(n)end function k.startLobby()assert(not l,
[[You double called `Interface.start*`. Which obviously should not ever happen.]]
)l=true b.enableInterface()local m=a.a()local n=j.Options local o=j:CreateWindow
{Title='another wtd script',Footer='version: plus',Icon='',NotifySide='Right',
Center=true,ShowCustomCursor=false}local p=o:AddTab('Main','user')do local q=p:
AddLeftGroupbox('Badges','award')do local r=q:AddLabel'Loading Badges info..'
task.defer(function()local s s=q:AddButton{Text="Get 'Long Way Home' badge",
Tooltip=
[[Giving you a free badge.
You can collect 10k credz, 2 trophies and 25 tokens
in the badges section.]]
,Func=function()s:SetDisabled(true)m.getLongWayHomeBadge()end,Disabled=m.
isSubwayBadgeOwned(),DisabledTooltip=
'You already own this badge. Nothing will change.'}local t t=q:AddButton{Text=
"Get 'Everyone Is Here' badge",Tooltip=
[[Giving you a free badge.
You can collect 33.33k credz, 2 trophies and 75 tokens
in the badges section.]]
,Func=function()t:SetDisabled(true)m.getEveryoneIsHereBadge()end,Disabled=m.
isTrainFriendsBadgeOwned(),DisabledTooltip=
'You already own this badge. Nothing will change.'}r:SetVisible(false)end)end
local r=p:AddRightGroupbox('Items','shovel')do r:AddButton{Text=
'Get Subway ticket code',Tooltip=
[[Advice's dialogue will be shown on click.
Input in the 'codes' the code she says.]]
,Func=m.getTicketDialogue}r:AddButton{Text='Get Power gems',Tooltip=
'You will get five gems, needed for Auditor.',Func=m.getPowerGems}r:AddButton{
Text='Activate known codes',Func=m.activateEveryCode}r:AddButton{Text=
'Pickup lockpick',Tooltip=
[[Needed to open 10 trophies door (if you have less)
or to open and enter the Doors mode.]]
,Func=m.activateLockpick}r:AddButton{Text='Toggle no rewards modifier',Tooltip=
[[Babygoo semi-patched this.
You have to be a teleporter owner to toggle.
On maps like Duels, if you have more than one modificator - server will manually enable no rewards modifiers.
Allows you to enable Event maps rewards.
Or disable rewards on any other map.. if you want so.]]
,Func=m.toggleNoRewards}end local s=p:AddLeftGroupbox('Autofarm','tractor')do m.
setAutofishingToggler(s:AddToggle('ToggleAutoFish',{Text='Autofish',Tooltip=
[[Autofarming fish. Yeah.
You need to have Fishing Rod equipped.]],Default=false
,Callback=m.toggleAutofishing}))s:AddButton('Teleport to the Fishing Rod',m.
teleportToFishingRod)s:AddInput('InputTrinketValue',{Text='Trinket to reroll',
Tooltip=
[[Script will try 500 times to roll this trinket.
Enter full trinket name.]],
Placeholder='Forbidden Floors',ClearTextOnFocus=false})s:AddButton{Text=
'Loop reroll',Func=function()local t=(n.InputTrinketValue)m.rerollTrinket(t.
Value)end}end end Interface_settingsTab(o)end return k end function a.i()local b
=a.cache.i if not b then b={c=__modImpl()}a.cache.i=b end return b.c end end end
local b=a.a()local c=a.c()local d=a.e()local e=a.i()local f,g=pcall(function()d.
identityManipulation.test()d.hookmetamethod.test()d.hookfunction.test()d.
filesystem.test()b.init()e.init()return nil end)if not f then error(`Failed to init script: {
g}`)end e.startLobby()c.flushStock()
