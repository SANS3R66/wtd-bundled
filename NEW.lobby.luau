local a={cache={}}do do local function __modImpl()local b=game:GetService
'Players'local c=game:GetService'BadgeService'local d=game:GetService
'ReplicatedStorage'local e=b.LocalPlayer local f=(e.PlayerGui)local g=(d.
AccessoryHandle)local h=(d.TeleportRemote)local i=(workspace.Map3.Lockpick.
prompt)local j='1.18.1'local k=CFrame.new(297.053253,0.499999881,-335.234741,
0.999997377,-1.9224634299999999E-8,-2.30112369E-3,1.91470146e-8,1,-3.37535155E-8
,0.00230112369,3.3709366e-8,0.999997377)local l=CFrame.new(266.589569,0.49999994
,-341.50174,0.66399318,3.8047499399999998e-8,-0.747738659,-6.74071288E-8,1,-
8.97422314E-9,0.747738659,5.63617384e-8,0.66399318)local m={}function m.init()
end function m.isSubwayBadgeOwned()return f.AwesomeGUI.Shop.Badges.Array:
WaitForChild'3997104159229662':GetAttribute'Badge_Not_Owned'~=true end function
m.isTrainFriendsBadgeOwned()return f.AwesomeGUI.Shop.Badges.Array:WaitForChild
'890409060943147':GetAttribute'Badge_Not_Owned'~=true end function m.
getLongWayHomeBadge()g:FireServer'Train'end function m.getEveryoneIsHereBadge()g
:FireServer'Train 2'end function m.getTicketDialogue()workspace.Characters.
Advice.RemoteEvent:FireServer'Object'end function m.getFakeTicket()e:
SetAttribute('Trinket3','Ticket')end function m.getPowerGems()g:FireServer
'Trinket_Gems'end function m.activateLockpick()local n=e.Character.
HumanoidRootPart.CFrame Player.Character.HumanoidRootPart.CFrame=i.Parent.CFrame
task.wait(0.3)fireproximityprompt(i)task.wait(0.3)Player.Character.
HumanoidRootPart.CFrame=n end function m.toggleNoRewards()h:FireServer(
'SetModifier',{'Rewards Disabled'})end local function isRodActive(n)return n.
Handle.Main.RopeConstraint.Length>=3 end local n local o=false local p local q=
false function m.toggleAutofishing()if q then return end q=true if not o then n:
SetValue(false)local r=e.Character if r then local s=(r:FindFirstChild
'Fishing Rod')if s then r.HumanoidRootPart.CFrame=k o=true n:SetValue(true)p=
task.defer(function()task.wait(1)s.Script.Enabled=false while task.wait()do r.
HumanoidRootPart.CFrame=k task.wait(0.5)if not isRodActive(s)then s:Activate()
end s.RemoteEvent:FireServer(true)task.wait(2)end end)end end else if p then
task.cancel(p)end end q=false end function m.setAutofishingToggler(r)n=r end
function m.teleportToFishingRod()e.Character.HumanoidRootPart.CFrame=CFrame.new(
266.589569,0.49999994,-341.50174,0.66399318,3.8047499399999998e-8,-0.747738659,-
6.74071288E-8,1,-8.97422314E-9,0.747738659,5.63617384e-8,0.66399318)end return m
end function a.a()local b=a.cache.a if not b then b={c=__modImpl()}a.cache.a=b
end return b.c end end do local function __modImpl()local b={}local c=false
function b.isInterfaceLoaded()return c end function b.enableInterface()c=true
end function b.bridge_interfaceLogsPrint(d)warn
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
end return b.c end end do local function __modImpl()local b={}local c=game:
GetService'ReplicatedStorage'local d=game:GetService'Lighting'local e=game:
GetService'Players'local f='Cannot_See'local g='Cannot_Inspect'local h='No_Info'
local i=(workspace:FindFirstChild'BluTeamZombies')local j=(workspace:
FindFirstChild'BluTeamUnits')local k=(c:FindFirstChild'AccessoryHandle')local l=
false local function bypassInspect_impl(m,n)m:SetAttribute(n,nil)m:
GetAttributeChangedSignal(n):Once(function()m:SetAttribute(n,nil)end)end
function b.init()if not c:FindFirstChild'admin'then error
[[Couldn't find admin remote. Are you sure you executed in survival place?]]end
j.ChildAdded:Connect(function(m)if l then bypassInspect_impl(m,h)
bypassInspect_impl(m,f)bypassInspect_impl(m,g)end end)end function b.
toggleBypassInspect()if not l then l=true for m,n in j:GetChildren()do n:
SetAttribute(h,nil)n:SetAttribute(f,nil)n:SetAttribute(g,nil)end else l=false
end end function b.fullbright()d.OutdoorAmbient=Color3.fromRGB(255,255,255)d.
Brightness=2 d.Ambient=Color3.fromRGB(255,255,255)end local function clean_text(
m)local n=string.gsub(m,'\u{d7}','*')n=string.gsub(n,'[^0-9()%+*%-/]','')return
n end function b.solveMath()local m='???'for n,o in i:GetChildren()do if o.Name
=='Mathematician'then local p p=(((((o:FindFirstChild'HumanoidRootClone')):
FindFirstChild'Remains')):FindFirstChild'Label')local q={}for r,s in p:
GetChildren()do if s:IsA'TextLabel'then table.insert(q,s)end end table.sort(q,
function(r,s)return r.LayoutOrder<s.LayoutOrder end)local r=''for s,t in ipairs(
q)do r=r..t.Text..'\n'end r=clean_text(r)local s,t=loadstring('return '..r)if
not s then warn(`Couldn't parse Mathematician's TextLabel: {t}`)else k:
FireServer('Math',tostring(s()))m=tostring(s())end end end return m end return b
end function a.f()local b=a.cache.f if not b then b={c=__modImpl()}a.cache.f=b
end return b.c end end do local function __modImpl()local b=a.c()local c={}local
d=false local e function c.record()if d then return b.error'Already recording.'
end e=hookmetamethod(game,'__namecall',function(f,...)local g=getnamecallmethod(
)if g=='FireServer'then local h={...}if h[1]=='lol'then print
'detected placing unit!!!'end end return e(...)end)end function c.stop()if not d
then return b.error'Not recording currently'end end function c.isRecording()
return d end function c.ableToRecord()return end return c end function a.g()
local b=a.cache.g if not b then b={c=__modImpl()}a.cache.g=b end return b.c end
end do local function __modImpl()local b={}local c=Color3.fromRGB(0,230,0)local
d=Color3.fromRGB(230,0,0)function b.bool2string(e)return e and'yes'or'no'end
function b.bool2color(e)return e and c or d end function b.isSurvival()return
game end return b end function a.h()local b=a.cache.h if not b then b={c=
__modImpl()}a.cache.h=b end return b.c end end do local function __modImpl()
local b=a.f()local c=a.a()local d=a.b()local e=a.e()local f=a.g()local g=a.h()
local h=game:GetService'RunService'local i=request{Url=
[[https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua]],
Method='GET'}.Body local j,k=loadstring(i)assert(j,`Obsidian UI Library failed to load: {
k}`)local l=(j())local m={}local n=false function m.init()end local function
Interface_settingsTab(o)local p=o:AddTab('Settings','wrench')do local q=p:
AddLeftGroupbox('UI Settings','wrench')do q:AddLabel'Menu bind':AddKeyPicker(
'MenuKeybind',{Default='RightShift',NoUI=true,Text='Menu keybind',
ChangedCallback=function(r)if r:IsA'KeyCode'then l.ToggleKeybind=r end end})q:
AddButton('Unload',function()l:Unload()end)end end l.ToggleKeybind=Enum.KeyCode.
RightShift end function m.startSurvival()assert(not n,
[[You double called `Interface.start*`. Which obviously should not ever happen.]]
)n=true d.enableInterface()local o=l:CreateWindow{Title='WTDm',Footer=
'version: WTDm',Icon='',NotifySide='Right',Center=true,ShowCustomCursor=false}
local p=o:AddTab('Main','user')do local q=p:AddLeftGroupbox('Bypasses','boxes')
do q:AddToggle('ToggleNoInspect',{Text='Bypass no inspect',Tooltip=
[[Allows you to see and inspect units info when you normally cannot.
(for an example, using a Knowledge Crystal)]]
,DisabledTooltip="This executor doesn't support this feature.",Default=false,
Disabled=false,Visible=true,Risky=false,Callback=b.toggleBypassInspect})q:
AddButton{Text='Fullbright',Tooltip='future is bright',Func=b.fullbright}end
local r=p:AddRightGroupbox('Math','boxes')do local s=r:AddLabel
'Answer: click button below'q:AddButton{Text='Solve math',Tooltip=
"Solves current Mathematician's problem.",Func=function()local t=b.solveMath()s:
SetText(t)end}end end Interface_settingsTab(o)end function m.startLobby()assert(
not n,
[[You double called `Interface.start*`. Which obviously should not ever happen.]]
)n=true d.enableInterface()local o=l:CreateWindow{Title='another wtd script',
Footer='version: plus',Icon='',NotifySide='Right',Center=true,ShowCustomCursor=
false}local p=o:AddTab('Main','user')do local q=p:AddLeftGroupbox('Badges',
'award')do local r=q:AddLabel'Loading Badges info..'task.defer(function()local s
s=q:AddButton{Text="Get 'Long Way Home' badge",Tooltip=
[[Giving you a free badge.
You can collect 10k credz, 2 trophies and 25 tokens
in the badges section.]]
,Func=function()s.Disabled=true c.getLongWayHomeBadge()end,Disabled=c.
isSubwayBadgeOwned(),DisabledTooltip=
'You already own this badge. Nothing will change.'}local t t=q:AddButton{Text=
"Get 'Everyone Is Here' badge",Tooltip=
[[Giving you a free badge.
You can collect 33.33k credz, 2 trophies and 75 tokens
in the badges section.]]
,Func=function()t.Disabled=true c.getEveryoneIsHereBadge()end,Disabled=c.
isTrainFriendsBadgeOwned(),DisabledTooltip=
'You already own this badge. Nothing will change.'}r:SetVisible(false)end)end
local r=p:AddRightGroupbox('Items','shovel')do r:AddButton{Text=
'Get Subway ticket code',Tooltip=
[[Advice's dialogue will be shown on click.
Input in the 'codes' the code she says.]]
,Func=c.getTicketDialogue}r:AddButton{Text='Get Power gems',Tooltip=
'You will get five gems, needed for Auditor.',Func=c.getPowerGems}r:AddButton{
Text='Pickup lockpick',Tooltip=
[[Needed to open 10 trophies door (if you have less)
or to open and enter the Doors mode.]]
,Func=c.activateLockpick}r:AddButton{Text='Toggle no rewards modifier',Tooltip=
[[Babygoo semi-patched this.
You have to be a teleporter owner to toggle.
On maps like Duels, if you have more than one modificator - server will manually enable no rewards modifiers.
Allows you to enable Event maps rewards.
Or disable rewards on any other map.. if you want so.]]
,Func=c.toggleNoRewards}end local s=p:AddLeftGroupbox('Autofarm','tractor')do c.
setAutofishingToggler(s:AddToggle('ToggleAutoFish',{Text='Autofish',Tooltip=
[[Autofarming fish. Yeah.
You need to have Fishing Rod equipped.]],Default=false
,Callback=c.toggleAutofishing}))s:AddButton('Teleport to the Fishing Rod',c.
teleportToFishingRod)end end Interface_settingsTab(o)end return m end function a
.i()local b=a.cache.i if not b then b={c=__modImpl()}a.cache.i=b end return b.c
end end end local b=a.a()local c=a.c()local d=a.e()local e=a.i()local f,g=pcall(
function()d.identityManipulation.test()d.hookmetamethod.test()d.hookfunction.
test()d.filesystem.test()b.init()e.init()return nil end)if not f then error(`Failed to init script: {
g}`)end e.startLobby()c.flushStock()