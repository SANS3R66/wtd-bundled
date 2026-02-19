local a={cache={}}do do local function __modImpl()local b=game:GetService
'Players'local c=game:GetService'BadgeService'local d=game:GetService
'ReplicatedStorage'local e=game:GetService'RunService'local f=b.LocalPlayer
local g=(f.PlayerGui)local h=(d:FindFirstChild'AccessoryHandle')local i=(d:
FindFirstChild'TeleportRemote')local j=(d:FindFirstChild'UseCode')local k=(
workspace.Characters.Trader.Head.RemoteEvent)local l=(g.AwesomeGUI.Trade_Frame.
Trinket2.AccessName)local m=(workspace:FindFirstChild'Map3')local n=(m.Lockpick.
prompt)local o='1.18.1'local p=CFrame.new(297.053253,0.499999881,-335.234741,
0.999997377,-1.9224634299999999E-8,-2.30112369E-3,1.91470146e-8,1,-3.37535155E-8
,0.00230112369,3.3709366e-8,0.999997377)local q=CFrame.new(266.589569,0.49999994
,-341.50174,0.66399318,3.8047499399999998e-8,-0.747738659,-6.74071288E-8,1,-
8.97422314E-9,0.747738659,5.63617384e-8,0.66399318)local r={'CARDS',
'arduous_update','new code'}local s={}function s.init()n.HoldDuration=0 end
function s.isSubwayBadgeOwned()return g.AwesomeGUI.Shop.Badges.Array:
WaitForChild'3997104159229662':GetAttribute'Badge_Not_Owned'~=true end function
s.isTrainFriendsBadgeOwned()return g.AwesomeGUI.Shop.Badges.Array:WaitForChild
'890409060943147':GetAttribute'Badge_Not_Owned'~=true end function s.
getLongWayHomeBadge()h:FireServer'Train'end function s.getEveryoneIsHereBadge()h
:FireServer'Train 2'end function s.getTicketDialogue()workspace.Characters.
Advice.RemoteEvent:FireServer'Object'end function s.getFakeTicket()f:
SetAttribute('Trinket3','Ticket')end function s.getPowerGems()h:FireServer
'Trinket_Gems'end function s.activateLockpick()local t=f.Character.
HumanoidRootPart.CFrame f.Character.HumanoidRootPart.CFrame=n.Parent.CFrame task
.wait(0.3)fireproximityprompt(n)task.wait(0.3)f.Character.HumanoidRootPart.
CFrame=t end function s.toggleNoRewards()i:FireServer('SetModifier',{
'Rewards Disabled'})end local function isRodActive(t)return t.Handle.Main.
RopeConstraint.Length>=3 end local t local u=false local v local w=false
function s.toggleAutofishing()if w then return end w=true if not u then t:
SetValue(false)local x=f.Character if x then local y=(x:FindFirstChild
'Fishing Rod')if y then x.HumanoidRootPart.CFrame=p u=true t:SetValue(true)v=
task.defer(function()task.wait(1)y.Script.Enabled=false while task.wait()do x.
HumanoidRootPart.CFrame=p task.wait(0.5)if not isRodActive(y)then y:Activate()
end y.RemoteEvent:FireServer(true)task.wait(2)end end)end end else u=false if v
then task.cancel(v)end end w=false end function s.setAutofishingToggler(x)t=x
end function s.teleportToFishingRod()f.Character.HumanoidRootPart.CFrame=CFrame.
new(266.589569,0.49999994,-341.50174,0.66399318,3.8047499399999998e-8,-
0.747738659,-6.74071288E-8,1,-8.97422314E-9,0.747738659,5.63617384e-8,0.66399318
)end function s.activateEveryCode()for x,y in r do j:FireServer(y)task.wait(1)
end end local x function s.rerollTrinket(y,z,A,B)if not x then x=task.spawn(
function()for C=1,500 do if l.Text==y then B.value=false A:SetText'Loop reroll'
task.cancel(x)return end k:FireServer'reroll'l.Changed:Wait()task.wait(z)end end
)else warn'Called Lobby.rerollTrinket when already rerolling!'end end function s
.unRollTrinket()if x then task.cancel(x)x=nil else warn
'Called Lobby.rerollTrinket when not rerolling!'end end return s end function a.
a()local b=a.cache.a if not b then b={c=__modImpl()}a.cache.a=b end return b.c
end end do local function __modImpl()local b={}function b.cleanText(c)local d=
string.gsub(c,'\u{d7}','*')d=string.gsub(d,'\u{f7}','/')d=string.gsub(d,
'\u{221a}(%d+)','math.sqrt(%1)')d=string.gsub(d,'\u{221a}%(','math.sqrt(')d=
string.gsub(d,'\u{2179}','x')d=string.gsub(d,'[^%w()%+*%-/%.%^=]','')d=string.
gsub(d,'(%d)x','%1*x')d=string.gsub(d,'x(%d)','x*%1')d=string.gsub(d,'(%d)%(',
'%1*(')d=string.gsub(d,'x%(','x*(')d=string.gsub(d,'%)(%d)',')*%1')d=string.
gsub(d,'%)x',')*x')d=string.gsub(d,'%)%(',')*(')return d end function b.
solveLinearEquation(c)local d,e=string.match(c,'(.+)=(.+)')if not d or not e
then return nil,'thats not an equation'end local function evaluateWithX(f,g)
local h=`local x = {g}; return {f}`local i,j=loadstring(h)if not i then return
nil,j end local k,l=pcall(i)if not k then return nil,l end return l end local f,
g=evaluateWithX(d,0)if not f then return nil,`left part error with x=0: {g}`end
local h,i=evaluateWithX(d,1)if not h then return nil,`left part error with x=1: {
i}`end local j,k=evaluateWithX(e,0)if not j then return nil,`right part error with x=0: {
k}`end local l,m=evaluateWithX(e,1)if not l then return nil,`right part error with x=1: {
m}`end local n=f local o=h-f local p=j local q=l-j local r=o-q local s=p-n if
math.abs(r)<1e-10 then if math.abs(s)<1e-10 then return nil,'too much solutions'
else return nil,'no solution'end end local t=s/r if math.abs(t-math.floor(t+0.5)
)<1e-9 then t=math.floor(t+0.5)end return t,nil end return b end function a.b()
local b=a.cache.b if not b then b={c=__modImpl()}a.cache.b=b end return b.c end
end do local function __modImpl()local b={}local c function b.UI_setThrowNotify(
d)c=d end local d=a.b()local e=game:GetService'ReplicatedStorage'local f=game:
GetService'Lighting'local g=game:GetService'Players'local h='Cannot_See'local i=
'Cannot_Inspect'local j='No_Info'local k='WTDMFeatureRequiredCharge'local l=
'WTDMFeatureNotifyOnCharge'local m=g.LocalPlayer local n=(m:FindFirstChild
'PlayerGui')local o=(workspace:FindFirstChild'BluTeamZombies')local p=(workspace
:FindFirstChild'BluTeamUnits')local q=(e:FindFirstChild'AccessoryHandle')local r
=(e:FindFirstChild'ChangeUnitTargetting')local function GUI_Module_make_Thing(s,
t,u,v)local w=(s:FindFirstChild'template')if not w then error(`Couldn't find template in {
s.Name}`)end w=w:Clone()local x=(w:FindFirstChild'template2')if not x then
error(`Couldn't find template in {w.Name}`)end local y=(x:FindFirstChild
'TextLabel')if not y then error(`Couldn't find TextLabel in {x.Name}`)end if v
then x:SetAttribute('DespawnTimer',v)else x:SetAttribute('DespawnTimer',#t/8+2)
end w.Size=UDim2.new(0,#t*10+10,0,32)w.Visible=true x.Visible=true y.Text=t y.
TextColor3=u or Color3.fromRGB(255,255,255)w.Parent=s end local s=(n:
FindFirstChild'AwesomeGUI')local t=(s:FindFirstChild'Errors')local u=(s:
FindFirstChild'UnitGUI')local v=(u:FindFirstChild'Object')local w=false local x=
0 local y=false local function bypassInspect_impl(z,A)z:SetAttribute(A,nil)z:
GetAttributeChangedSignal(A):Once(function()z:SetAttribute(A,nil)end)end local z
={k=1000,m=1000000,b=1000000000,t=1000000000000}local function parseNumber(A)A=A
:gsub(',','')local B,C=A:match'^([%d%.]+)(%a)$'if B then local D=tonumber(B)if
not D then return-1 end local E=z[string.lower(C)]if not E then return-1 end
return math.floor(D*E+0.5)end local D=tonumber(A)if not D then return-1 end
return math.floor(D+0.5)end local function parseStored(A)local B,C=string.match(
A,'Stored:%s*%$([%d%.]+%a?)/%$([%d%.]+%a?)')if not B or not C then return nil
end return{stored=parseNumber(B),max=parseNumber(C)}end function b.
toggleBypassInspect()if not w then w=true for A,B in p:GetChildren()do B:
SetAttribute(j,nil)B:SetAttribute(h,nil)B:SetAttribute(i,nil)end else w=false
end end function b.fullbright()f.OutdoorAmbient=Color3.fromRGB(255,255,255)f.
Brightness=2 f.Ambient=Color3.fromRGB(255,255,255)end function b.solveMath()
local A='Answer: ???'for B,C in o:GetChildren()do local D=(C:FindFirstChild
'HumanoidRootClone')if D then local E=(D:FindFirstChild'Remains')if E then local
F=(E:FindFirstChild'Label')if F then local G={}for H,I in F:GetChildren()do if I
:IsA'TextLabel'then table.insert(G,I)end end table.sort(G,function(H,I)return H.
LayoutOrder<I.LayoutOrder end)local H=''for I,J in ipairs(G)do local K=(J:
FindFirstChild'Square')if K and K.Visible then H=H..J.Text..'^'..K.Text else H=H
..J.Text end H=H..'\n'end H=d.cleanText(H)if string.find(H,'x')and string.find(H
,'=')then local I,J=d.solveLinearEquation(H)if I then q:FireServer('Math',
tostring(I))A=`Answer: {tostring(I)}`else c('Equation solve error',J or'unknown'
,10)end else local I,J=loadstring('return '..H)if not I then c(
'Math TextLabel parse error',J or'unknown',10)else local K,L=pcall(I)if K then q
:FireServer('Math',tostring(L))A=`Answer: {tostring(L)}`else c(
'Chunk call error',L or'unknown',10)end end end end end end end return A end
function b.toggleAutoBank()y=not y end function b.setAutoBankDelay(A)x=A end
function b.getSelectedUnitObject()return v end local A local function
updateSelectedUIObjects()if not A then return end A.UnsupportedText:SetVisible(
false)A.SWAT_RequiredCharge:SetVisible(false)A.SWAT_NotifyOnCharge:SetVisible(
false)if not v.Value then A.TemplateText:SetVisible(true)else local B=false
local C=(v.Value)A.TemplateText:SetVisible(false)if C:GetAttribute'ActualName'==
'SWAT All'then B=true A.SWAT_RequiredCharge:SetValue((C:GetAttribute(k)or 0))A.
SWAT_RequiredCharge:SetVisible(true)A.SWAT_NotifyOnCharge:SetValue((C:
GetAttribute(l)or false))A.SWAT_NotifyOnCharge:SetVisible(true)end if not B then
A.UnsupportedText:SetVisible(true)end end end local B={}function b.
setSelectedUIObjects(C)if A then error
'Impossible behavior about setting selected ui objects.'end C.UnsupportedText.
Holder.TextColor3=Color3.fromRGB(255,238,0)C.SWAT_RequiredCharge:OnChanged(
function(D)local E=(v.Value)if E then E:SetAttribute(k,D)end end)C.
SWAT_NotifyOnCharge:OnChanged(function(D)local E=(v.Value)if E then E:
SetAttribute(l,D)B[E]=D or nil end end)task.defer(function()while task.wait(1)do
for D,E in B do if not D then B[D]=nil continue end if D:GetAttribute(l)then
local F=(D:FindFirstChild'HumanoidRootClone')if F then local G=(F:FindFirstChild
'BillboardGui')if G then local H=(G:FindFirstChild'Frame')local I=0 for J,K in H
:GetChildren()do if K.Name=='Charge'then I+=1 end end if I==D:GetAttribute(k)
then D:SetAttribute('WTDMNotifiedCharge',I)GUI_Module_make_Thing(t,`{D.Name} has been charged to {
I}!`,Color3.fromRGB(255,255,255),12)end end end end end end end)A=C
updateSelectedUIObjects()end function b.init()if not e:FindFirstChild'admin'then
error
[[Couldn't find admin remote. Are you sure you executed in survival place?]]end
p.ChildAdded:Connect(function(C)if w then bypassInspect_impl(C,j)
bypassInspect_impl(C,h)bypassInspect_impl(C,i)end end)task.defer(function()
local function startTracking(C,D)D:GetPropertyChangedSignal'Text':Connect(
function()if y then local E=parseStored(D.Text)if E and E.stored>=E.max then
task.wait(x)r:FireServer(C,'Ability')end end end)end local function tryToTrack(C
)if C:IsA'Model'and C:WaitForChild('UnitBank',5)then local D=(C:WaitForChild(
'Owner',5))if D and D.Value==m then local E=(C:WaitForChild('HumanoidRootClone',
3))if E then local F=(E:WaitForChild('GUI1',3))if F then local G=(F:
WaitForChild('TextLabel',3))startTracking(C,G)end end end end end for C,D in p:
GetChildren()do task.defer(tryToTrack,D)end p.ChildAdded:Connect(tryToTrack)end)
v.Changed:Connect(updateSelectedUIObjects)end return b end function a.c()local b
=a.cache.c if not b then b={c=__modImpl()}a.cache.c=b end return b.c end end do
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
end return b end function a.d()local b=a.cache.d if not b then b={c=__modImpl()}
a.cache.d=b end return b.c end end do local function __modImpl()local b=a.d()
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
end function a.e()local b=a.cache.e if not b then b={c=__modImpl()}a.cache.e=b
end return b.c end end do local function __modImpl()local b={}function b.attach(
c,d)local e e=hookfunction(c,(function(...)local f={...}if d.onEnter then d.
onEnter(f)end local g={(e)(table.unpack(f))}if d.onLeave then d.onLeave(g)end
return table.unpack(g)end))return c end function b.detach(c)restorefunction(c)
end return b end function a.f()local b=a.cache.f if not b then b={c=__modImpl()}
a.cache.f=b end return b.c end end do local function __modImpl()local b=
'TESTING_WTD'local c=game:GetService'ReplicatedStorage'local d=game:GetService
'RunService'local e=a.f()local f=a.e()local g={}g.hookfunction={}g.
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
g end function a.g()local b=a.cache.g if not b then b={c=__modImpl()}a.cache.g=b
end return b.c end end do local function __modImpl()local b=a.e()local c={}local
d=false local e function c.record()if d then return b.error'Already recording.'
end e=hookmetamethod(game,'__namecall',function(f,...)local g=getnamecallmethod(
)if g=='FireServer'then local h={...}if h[1]=='lol'then print
'detected placing unit!!!'end end return e(...)end)end function c.stop()if not d
then return b.error'Not recording currently'end end function c.isRecording()
return d end function c.ableToRecord()return end return c end function a.h()
local b=a.cache.h if not b then b={c=__modImpl()}a.cache.h=b end return b.c end
end do local function __modImpl()local b={}local c=Color3.fromRGB(0,230,0)local
d=Color3.fromRGB(230,0,0)function b.bool2string(e)return e and'yes'or'no'end
function b.bool2color(e)return e and c or d end function b.isSurvival()return
game end return b end function a.i()local b=a.cache.i if not b then b={c=
__modImpl()}a.cache.i=b end return b.c end end do local function __modImpl()
local b=a.d()local c=a.g()local d=a.h()local e=a.i()local f=game:GetService
'RunService'local g=request{Url=
[[https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua]],
Method='GET'}.Body local h,i=loadstring(g)assert(h,`Obsidian UI Library failed to compile: {
i}`)local j,k=pcall(h)assert(j,`Coulnd't run Obisidan Library: {k}`)if typeof(k)
=='string'then error'impossible path!! Obsidian should NOT be a string!!'end
local l={}local m=false function l.init()end local function
Interface_settingsTab(n)local o=n:AddTab('Settings','wrench')do local p=o:
AddLeftGroupbox('UI Settings','wrench')do p:AddLabel'Menu bind':AddKeyPicker(
'MenuKeybind',{Default='RightShift',NoUI=true,Text='Menu keybind',
ChangedCallback=function(q)if q:IsA'KeyCode'then k.ToggleKeybind=q end end})p:
AddButton('Unload',function()k:Unload()end)end end k.ToggleKeybind=Enum.KeyCode.
RightShift end function l.startSurvival()assert(not m,
[[You double called `Interface.start*`. Which obviously should not ever happen.]]
)m=true b.enableInterface()local n=a.c()n.UI_setThrowNotify(function(o,p,q)k:
Notify{Title=o,Description=p,Time=q}end)local o=k:CreateWindow{Title='WTDm',
Footer='version: WTDm',Icon='',NotifySide='Right',Center=true,ShowCustomCursor=
false}local p=o:AddTab('Main','user')do local q=p:AddLeftGroupbox('Bypasses',
'boxes')do q:AddToggle('ToggleNoInspect',{Text='Bypass no inspect',Tooltip=
[[Allows you to see and inspect units info when you normally cannot.
(for an example, using a Knowledge Crystal)]]
,DisabledTooltip="This executor doesn't support this feature.",Disabled=false,
Default=false,Visible=true,Risky=false,Callback=n.toggleBypassInspect})q:
AddDivider()q:AddButton{Text='Fullbright',Tooltip='future is bright',Func=n.
fullbright}end local r=p:AddRightGroupbox('Math','square-sigma')do local s=r:
AddLabel'Answer: click button below'r:AddButton{Text='Solve math',Tooltip=
"Solves current Mathematician's problem.",Func=function()local t=n.solveMath()or
'Answer: ???'s:SetText(t)end}end local s=p:AddLeftGroupbox('Auto','boxes')do s:
AddToggle('ToggleAutoBank',{Text='Auto bank',Tooltip=
'Uses bank ability owned by you whenever they full.',DisabledTooltip=
"This executor doesn't support this feature.",Disabled=false,Default=false,
Visible=true,Risky=false,Callback=n.toggleAutoBank})s:AddSlider(
'SliderAutoBankDelay',{Text='Auto bank delay',Tooltip=
[[Delay before using bank.
Good for playing in teams, otherwise useless.]],
Default=0,Min=0,Max=5,Rounding=1,Callback=n.setAutoBankDelay})end local t=p:
AddRightGroupbox('Selected','boxes')do local u={TemplateText=t:AddLabel{Text=
'Press on an entity.\nWIP',Visible=true},UnsupportedText=t:AddLabel{Text=
'This entity has no options.',Visible=false},SWAT_RequiredCharge=t:AddSlider(
'SliderSWAT_RequiredCharge',{Text='Required charge',Default=6,Min=1,Max=9,
Visible=false}),SWAT_NotifyOnCharge=t:AddToggle('ToggleSWAT_NotifyOnCharge',{
Text='Notify on charge',Tooltip=
[[Use slider above to configure required charge.
You will get notified when current charge equals Required charge.
(not >=, it's ==)]]
,Visible=false})}n.setSelectedUIObjects(u)end end Interface_settingsTab(o)end
function l.startLobby()assert(not m,
[[You double called `Interface.start*`. Which obviously should not ever happen.]]
)m=true b.enableInterface()local n=a.a()local o=k.Options local p=k:CreateWindow
{Title='another wtd script',Footer='version: plus',Icon='',NotifySide='Right',
Center=true,ShowCustomCursor=false}local q=p:AddTab('Main','user')do local r=q:
AddLeftGroupbox('Badges','award')do local s=r:AddLabel'Loading Badges info..'
task.defer(function()local t t=r:AddButton{Text="Get 'Long Way Home' badge",
Tooltip=
[[Giving you a free badge.
You can collect 10k credz, 2 trophies and 25 tokens
in the badges section.]]
,Func=function()t:SetDisabled(true)n.getLongWayHomeBadge()end,Disabled=n.
isSubwayBadgeOwned(),DisabledTooltip=
'You already own this badge. Nothing will change.'}local u u=r:AddButton{Text=
"Get 'Everyone Is Here' badge",Tooltip=
[[Giving you a free badge.
You can collect 33.33k credz, 2 trophies and 75 tokens
in the badges section.]]
,Func=function()u:SetDisabled(true)n.getEveryoneIsHereBadge()end,Disabled=n.
isTrainFriendsBadgeOwned(),DisabledTooltip=
'You already own this badge. Nothing will change.'}s:SetVisible(false)end)end
local s=q:AddRightGroupbox('Items','shovel')do s:AddButton{Text=
'Get Subway ticket code',Tooltip=
[[Advice's dialogue will be shown on click.
Input in the 'codes' the code she says.]]
,Func=n.getTicketDialogue}s:AddButton{Text='Get Power gems',Tooltip=
'You will get five gems, needed for Auditor.',Func=n.getPowerGems}s:AddButton{
Text='Activate known codes',Func=n.activateEveryCode}s:AddButton{Text=
'Pickup lockpick',Tooltip=
[[Needed to open 10 trophies door (if you have less)
or to open and enter the Doors mode.]]
,Func=n.activateLockpick}s:AddButton{Text='Toggle no rewards modifier',Tooltip=
[[Babygoo semi-patched this.
You have to be a teleporter owner to toggle.
On maps like Duels, if you have more than one modificator - server will manually enable no rewards modifiers.
Allows you to enable Event maps rewards.
Or disable rewards on any other map.. if you want so.]]
,Func=n.toggleNoRewards}end local t=q:AddLeftGroupbox('Autofarm','tractor')do do
n.setAutofishingToggler(t:AddToggle('ToggleAutoFish',{Text='Autofish',Tooltip=
[[Auto farming fish.
Just dont forget about 20 mins idle kick.
Get some autocliker clicking on some GUI element to prevent idling.
(do not click on the screen cause it will mostly lose the fish).
Equip Fishing Rod (not the one weak) to start fishing..]]
,Callback=n.toggleAutofishing}))t:AddButton('Teleport to the Fishing Rod',n.
teleportToFishingRod)end t:AddDivider()do t:AddInput('InputTrinketValue',{Text=
'Trinket to reroll',Tooltip=
[[Script will try 500 times to roll this trinket.
Enter full trinket name.]],
Placeholder='Forbidden Floors',ClearTextOnFocus=false})local u=t:AddSlider(
'SliderTrinketRerollSpeed',{Text='Reroll delay',Tooltip=
[[Delay between rerolling.
Increase delay if loop skipping needed trinket.
(I wouldnt recommend <0.05s)]]
,Default=0.08,Min=0,Max=0.5,Suffix='s',Rounding=2})local v={value=false}local w
w=t:AddButton{Text='Loop reroll',Func=function()if not v.value then v.value=true
w:SetText'Click to stop rerolling'local x=(o.InputTrinketValue)n.rerollTrinket(x
.Value,u.Value,w,v)else v.value=false w:SetText'Loop reroll'n.unRollTrinket()end
end}end end end Interface_settingsTab(p)end return l end function a.j()local b=a
.cache.j if not b then b={c=__modImpl()}a.cache.j=b end return b.c end end end
local b=5656754541 local c=game.PlaceId==b local d if c then d=a.a()else d=a.c()
end local e=a.e()local f=a.g()local g=a.j()local h,i=pcall(function()f.
identityManipulation.test()f.hookmetamethod.test()f.hookfunction.test()f.
filesystem.test()if d then d.init()else error'Logic is nil!'end g.init()return
nil end)if not h then error(`Failed to init script: {i}`)end print
'Done initing modules, trying to start interface..'if c then g.startLobby()else
g.startSurvival()end e.flushStock()