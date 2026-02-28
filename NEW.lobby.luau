local a={cache={}}do do local function __modImpl()local b=game:GetService
'Players'local c=game:GetService'BadgeService'local d=game:GetService
'ReplicatedStorage'local e=game:GetService'RunService'local f=b.LocalPlayer
local g=(f.PlayerGui)local h=(d:FindFirstChild'AccessoryHandle')local i=(d:
FindFirstChild'TeleportRemote')local j=(d:FindFirstChild'UseCode')local k=(
workspace.Characters.Trader.Head.RemoteEvent)local l=(g.AwesomeGUI.Trade_Frame.
Trinket2.AccessName)local m=(g.AwesomeGUI.TeleportFrame.Mod_Choose.ArrayM)local
n=(workspace:FindFirstChild'Map3')local o=(n.Lockpick.prompt)local p='1.18.1'
local q=CFrame.new(297.053253,0.499999881,-335.234741,0.999997377,-
1.9224634299999999E-8,-2.30112369E-3,1.91470146e-8,1,-3.37535155E-8,
0.00230112369,3.3709366e-8,0.999997377)local r=CFrame.new(266.589569,0.49999994,
-341.50174,0.66399318,3.8047499399999998e-8,-0.747738659,-6.74071288E-8,1,-
8.97422314E-9,0.747738659,5.63617384e-8,0.66399318)local s={'CARDS',
'arduous_update','new code'}local t={}local u=false function t.init()o.
HoldDuration=0 end function t.isSubwayBadgeOwned()return g.AwesomeGUI.Shop.
Badges.Array:WaitForChild'3997104159229662':GetAttribute'Badge_Not_Owned'~=true
end function t.isTrainFriendsBadgeOwned()return g.AwesomeGUI.Shop.Badges.Array:
WaitForChild'890409060943147':GetAttribute'Badge_Not_Owned'~=true end function t
.getLongWayHomeBadge()h:FireServer'Train'end function t.getEveryoneIsHereBadge()
h:FireServer'Train 2'end function t.getTicketDialogue()workspace.Characters.
Advice.RemoteEvent:FireServer'Object'end function t.getFakeTicket()f:
SetAttribute('Trinket3','Ticket')end function t.getPowerGems()h:FireServer
'Trinket_Gems'end function t.activateLockpick()local v=f.Character.
HumanoidRootPart.CFrame f.Character.HumanoidRootPart.CFrame=o.Parent.CFrame task
.wait(0.3)fireproximityprompt(o)task.wait(0.3)f.Character.HumanoidRootPart.
CFrame=v end function t.toggleNoRewards()i:FireServer('SetModifier',{
'Rewards Disabled'})end local function isRodActive(v)return v.Handle.Main.
RopeConstraint.Length>=3 end local v local w=false local x local y=false
function t.toggleAutofishing()if y then return end y=true if not w then v:
SetValue(false)local z=f.Character if z then local A=(z:FindFirstChild
'Fishing Rod')if A then z.HumanoidRootPart.CFrame=q w=true v:SetValue(true)x=
task.defer(function()task.wait(1)A.Script.Enabled=false while task.wait()do z.
HumanoidRootPart.CFrame=q task.wait(0.5)if not isRodActive(A)then A:Activate()
end A.RemoteEvent:FireServer(true)task.wait(2)end end)end end else w=false if x
then task.cancel(x)end end y=false end function t.setAutofishingToggler(z)v=z
end function t.teleportToFishingRod()f.Character.HumanoidRootPart.CFrame=CFrame.
new(266.589569,0.49999994,-341.50174,0.66399318,3.8047499399999998e-8,-
0.747738659,-6.74071288E-8,1,-8.97422314E-9,0.747738659,5.63617384e-8,0.66399318
)end function t.activateEveryCode()for z,A in s do j:FireServer(A)task.wait(1)
end end local z function t.rerollTrinket(A,B,C,D)if not z then z=task.spawn(
function()for E=1,500 do if l.Text==A then D.value=false C:SetText'Loop reroll'
task.cancel(z)return end k:FireServer'reroll'l.Changed:Wait()task.wait(B)end end
)else warn'Called Lobby.rerollTrinket when already rerolling!'end end function t
.unRollTrinket()if z then task.cancel(z)z=nil else warn
'Called Lobby.rerollTrinket when not rerolling!'end end function t.
toggleMultipleModifiers()if not u then u=true for A,B in m:GetChildren()do if B.
Name=='Multiple'then B.Name='ClearlyNotMultiple'end end else u=false for A,B in
m:GetChildren()do if B.Name=='ClearlyNotMultiple'then B.Name='Multiple'end end
end end return t end function a.a()local b=a.cache.a if not b then b={c=
__modImpl()}a.cache.a=b end return b.c end end do local function __modImpl()
local b={}function b.cleanText(c)local d=string.gsub(c,'\u{d7}','*')d=string.
gsub(d,'\u{f7}','/')d=string.gsub(d,'\u{221a}(%d+)','math.sqrt(%1)')d=string.
gsub(d,'\u{221a}%(','math.sqrt(')d=string.gsub(d,'\u{2179}','x')d=string.gsub(d,
'[^%w()%+*%-/%.%^=]','')d=string.gsub(d,'(%d)x','%1*x')d=string.gsub(d,'x(%d)',
'x*%1')d=string.gsub(d,'(%d)%(','%1*(')d=string.gsub(d,'x%(','x*(')d=string.
gsub(d,'%)(%d)',')*%1')d=string.gsub(d,'%)x',')*x')d=string.gsub(d,'%)%(',')*(')
return d end function b.solveLinearEquation(c)local d,e=string.match(c,
'(.+)=(.+)')if not d or not e then return nil,'thats not an equation'end
local function evaluateWithX(f,g)local h=`local x = {g}; return {f}`local i,j=
loadstring(h)if not i then return nil,j end local k,l=pcall(i)if not k then
return nil,l end return l end local f,g=evaluateWithX(d,0)if not f then return
nil,`left part error with x=0: {g}`end local h,i=evaluateWithX(d,1)if not h then
return nil,`left part error with x=1: {i}`end local j,k=evaluateWithX(e,0)if not
j then return nil,`right part error with x=0: {k}`end local l,m=evaluateWithX(e,
1)if not l then return nil,`right part error with x=1: {m}`end local n=f local o
=h-f local p=j local q=l-j local r=o-q local s=p-n if math.abs(r)<1e-10 then if
math.abs(s)<1e-10 then return nil,'too much solutions'else return nil,
'no solution'end end local t=s/r if math.abs(t-math.floor(t+0.5))<1e-9 then t=
math.floor(t+0.5)end return t,nil end return b end function a.b()local b=a.cache
.b if not b then b={c=__modImpl()}a.cache.b=b end return b.c end end do
local function __modImpl()local b={}local c function b.UI_setThrowNotify(d)c=d
end local d=a.b()local e=game:GetService'ReplicatedStorage'local f=game:
GetService'Lighting'local g=game:GetService'Players'local h='Cannot_See'local i=
'Cannot_Inspect'local j='No_Info'local k='WTDMFeatureRequiredCharge'local l=
'WTDMFeatureNotifyOnCharge'local m=g.LocalPlayer local n=(m:FindFirstChild
'PlayerGui')local o=(workspace:FindFirstChild'BluTeamZombies')local p=(workspace
:FindFirstChild'BluTeamUnits')local q=(f:WaitForChild('GameStuff',5))local r=(q:
WaitForChild'GameState')local s=(e:FindFirstChild'AccessoryHandle')local t=(e:
FindFirstChild'ChangeUnitTargetting')local function GUI_Module_make_Thing(u,v,w,
x)local y=(u:FindFirstChild'template')if not y then error(`Couldn't find template in {
u.Name}`)end y=y:Clone()local z=(y:FindFirstChild'template2')if not z then
error(`Couldn't find template in {y.Name}`)end local A=(z:FindFirstChild
'TextLabel')if not A then error(`Couldn't find TextLabel in {z.Name}`)end if x
then z:SetAttribute('DespawnTimer',x)else z:SetAttribute('DespawnTimer',#v/8+2)
end y.Size=UDim2.new(0,#v*10+10,0,32)y.Visible=true z.Visible=true A.Text=v A.
TextColor3=w or Color3.fromRGB(255,255,255)y.Parent=u end local u=t~=nil local v
=false local w=(n:FindFirstChild'AwesomeGUI')local x=(w:FindFirstChild'Errors')
local y=(w:FindFirstChild'UnitGUI')local z if y then z=(y:FindFirstChild'Object'
)else if u then v=true end end local A=false local B=0 local C=false
local function bypassInspect_impl(D,E)D:SetAttribute(E,nil)D:
GetAttributeChangedSignal(E):Once(function()D:SetAttribute(E,nil)end)end local D
={k=1000,m=1000000,b=1000000000,t=1000000000000}local function parseNumber(E)E=E
:gsub(',','')local F,G=E:match'^([%d%.]+)(%a)$'if F then local H=tonumber(F)if
not H then return-1 end local I=D[string.lower(G)]if not I then return-1 end
return math.floor(H*I+0.5)end local H=tonumber(E)if not H then return-1 end
return math.floor(H+0.5)end local function parseStored(E)local F,G=string.match(
E,'Stored:%s*%$([%d%.]+%a?)/%$([%d%.]+%a?)')if not F or not G then return nil
end return{stored=parseNumber(F),max=parseNumber(G)}end function b.
toggleBypassInspect()if not A then A=true for E,F in p:GetChildren()do F:
SetAttribute(j,nil)F:SetAttribute(h,nil)F:SetAttribute(i,nil)end else A=false
end end function b.getGameState()return r end function b.fullbright()f.
OutdoorAmbient=Color3.fromRGB(255,255,255)f.Brightness=2 f.Ambient=Color3.
fromRGB(255,255,255)end function b.solveMath()local E='Answer: ???'for F,G in o:
GetChildren()do local H=(G:FindFirstChild'HumanoidRootClone')if H then local I=(
H:FindFirstChild'Remains')if I then local J=(I:FindFirstChild'Label')if J then
local K={}for L,M in J:GetChildren()do if M:IsA'TextLabel'then table.insert(K,M)
end end table.sort(K,function(L,M)return L.LayoutOrder<M.LayoutOrder end)local L
=''for M,N in ipairs(K)do local O=(N:FindFirstChild'Square')if O and O.Visible
then L=L..N.Text..'^'..O.Text else L=L..N.Text end L=L..'\n'end L=d.cleanText(L)
if string.find(L,'x')and string.find(L,'=')then local M,N=d.solveLinearEquation(
L)if M then s:FireServer('Math',tostring(M))E=`Answer: {tostring(M)}`else c(
'Equation solve error',N or'unknown',10)end else local M,N=loadstring('return '
..L)if not M then c('Math TextLabel parse error',N or'unknown',10)else local O,P
=pcall(M)if O then s:FireServer('Math',tostring(P))E=`Answer: {tostring(P)}`else
c('Chunk call error',P or'unknown',10)end end end end end end end return E end
function b.toggleAutoBank()C=not C end function b.setAutoBankDelay(E)B=E end
function b.getSelectedUnitObject()return z end local E local function
updateSelectedUIObjects()if not z then return end if not E then return end E.
UnsupportedText:SetVisible(false)E.SWAT_RequiredCharge:SetVisible(false)E.
SWAT_NotifyOnCharge:SetVisible(false)if not z.Value then E.TemplateText:
SetVisible(true)else local F=false local G=(z.Value)E.TemplateText:SetVisible(
false)if G:GetAttribute'ActualName'=='SWAT All'then F=true E.SWAT_RequiredCharge
:SetValue((G:GetAttribute(k)or 0))E.SWAT_RequiredCharge:SetVisible(true)E.
SWAT_NotifyOnCharge:SetValue((G:GetAttribute(l)or false))E.SWAT_NotifyOnCharge:
SetVisible(true)end if not F then E.UnsupportedText:SetVisible(true)end end end
local F={}function b.setSelectedUIObjects(G)if not z then warn
[[Survival.setSelectedUIObjects is not supported in archive version of survival]]
return end local H=z if E then error
'Impossible behavior about setting selected ui objects.'end G.UnsupportedText.
Holder.TextColor3=Color3.fromRGB(255,238,0)G.SWAT_RequiredCharge:OnChanged(
function(I)local J=(H.Value)if J then J:SetAttribute(k,I)end end)G.
SWAT_NotifyOnCharge:OnChanged(function(I)local J=(H.Value)if J then J:
SetAttribute(l,I)F[J]=I or nil end end)task.defer(function()while task.wait(1)do
for I,J in F do if not I then F[I]=nil continue end if I:GetAttribute(l)then
local K=(I:FindFirstChild'HumanoidRootClone')if K then local L=(K:FindFirstChild
'BillboardGui')if L then local M=(L:FindFirstChild'Frame')local N=0 for O,P in M
:GetChildren()do if P.Name=='Charge'then N+=1 end end if N==I:GetAttribute(k)
then I:SetAttribute('WTDMNotifiedCharge',N)GUI_Module_make_Thing(x,`{I.Name} has been charged to {
N}!`,Color3.fromRGB(255,255,255),12)end end end end end end end)E=G
updateSelectedUIObjects()end function b.init()if not e:FindFirstChild'admin'then
error
[[Couldn't find admin remote. Are you sure you executed in survival place?]]end
p.ChildAdded:Connect(function(G)if A then bypassInspect_impl(G,j)
bypassInspect_impl(G,h)bypassInspect_impl(G,i)end end)task.defer(function()
local function startTracking(G,H)H:GetPropertyChangedSignal'Text':Connect(
function()if C then local I=parseStored(H.Text)if I and I.stored>=I.max then
task.wait(B)t:FireServer(G,'Ability')end end end)end local function tryToTrack(G
)if G:IsA'Model'and G:WaitForChild('UnitBank',5)then local H=(G:WaitForChild(
'Owner',5))if H and H.Value==m then local I=(G:WaitForChild('HumanoidRootClone',
3))if I then local J=(I:WaitForChild('GUI1',3))if J then local K=(J:
WaitForChild('TextLabel',3))startTracking(G,K)end end end end end for G,H in p:
GetChildren()do task.defer(tryToTrack,H)end p.ChildAdded:Connect(tryToTrack)end)
if z then z.Changed:Connect(updateSelectedUIObjects)end end function b.isArchive
()return v end return b end function a.c()local b=a.cache.c if not b then b={c=
__modImpl()}a.cache.c=b end return b.c end end do local function __modImpl()
local b={}local c=false function b.isInterfaceLoaded()return c end function b.
enableInterface()c=true end function b.bridge_interfaceLogsPrint(d)warn
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
isInterfaceLoaded()then b.bridge_interfaceLogsPrint(g)else table.insert(d,
'[PRE-UI] '..g)end end function c.warn(g)if b.isInterfaceLoaded()then b.
bridge_interfaceLogsWarn(g)else table.insert(e,'[PRE-UI] '..g)end end function c
.error(g)if b.isInterfaceLoaded()then b.bridge_interfaceLogsError(g)else table.
insert(f,'[PRE-UI] '..g)end end function c.flushStock()if b.isInterfaceLoaded()
then for g,h in ipairs(d)do c.print(h)end for g,h in ipairs(e)do c.print(h)end
for g,h in ipairs(f)do c.print(h)end d={}e={}f={}else warn
'Interface is not loaded, unable to flush stock.'end end return c end function a
.e()local b=a.cache.e if not b then b={c=__modImpl()}a.cache.e=b end return b.c
end end do local function __modImpl()local b={}function b.attach(c,d)local e e=
hookfunction(c,(function(...)local f={...}if d.onEnter then d.onEnter(f)end
local g={(e)(table.unpack(f))}if d.onLeave then d.onLeave(g)end return table.
unpack(g)end))return c end function b.detach(c)restorefunction(c)end return b
end function a.f()local b=a.cache.f if not b then b={c=__modImpl()}a.cache.f=b
end return b.c end end do local function __modImpl()local b='TESTING_WTD'local c
=game:GetService'ReplicatedStorage'local d=game:GetService'RunService'local e=a.
f()local f=a.e()local g={}g.hookfunction={}g.hookmetamethod={}g.
identityManipulation={}g.filesystem={}local h=hookfunction~=nil local i=
hookmetamethod~=nil local j=getthreadidentity~=nil and setthreadidentity~=nil
local function assert(k,l)if not k then error(l)end end local function
assert_silent(k,l)if not k then f.print(l)end end function g.ableToRecord()
return(h or i)and j end function g.isCoresploit()if not getthreadidentity then
return false end if getthreadidentity()==3 then return true end local k=pcall(
require,c:FindFirstChild'GUI_Module')return k end local k=
'very cool dummy return value'local l='very UNCOOL dummy return value'
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
hookmetamethod(game,'__namecall',function(...)if getnamecallmethod()=='Shutdown'
then m=true return else return n(...)end end)game:Shutdown()hookmetamethod(game,
'__namecall',n)i=m end return g end function a.g()local b=a.cache.g if not b
then b={c=__modImpl()}a.cache.g=b end return b.c end end do local function
__modImpl()local b=8192 local c={}c.__index=c function c.new(d)local e=d or b
return setmetatable({_buf=buffer.create(e),_offset=0,_size=e},c)end function c.
reset(d)d._offset=0 buffer.fill(d._buf,0,0,d._size)end function c.seek(d,e)d.
_offset=e end function c.getOffset(d)return d._offset end function c._ensure(d,e
)if d._offset+e>d._size then local f=d._size*2 while d._offset+e>f do f*=2 end
local g=buffer.create(f)buffer.copy(g,0,d._buf,0,d._offset)d._buf=g d._size=f
end end function c.writeU8(d,e)d:_ensure(1)buffer.writeu8(d._buf,d._offset,e)d.
_offset+=1 end function c.writeU16(d,e)d:_ensure(2)buffer.writeu16(d._buf,d.
_offset,e)d._offset+=2 end function c.writeU32(d,e)d:_ensure(4)buffer.writeu32(d
._buf,d._offset,e)d._offset+=4 end function c.writeF32(d,e)d:_ensure(4)buffer.
writef32(d._buf,d._offset,e)d._offset+=4 end function c.writeShortString(d,e)
local f=string.len(e)d:_ensure(2+f)d:writeU16(f)buffer.writestring(d._buf,d.
_offset,e)d._offset+=f end function c.writeVector3(d,e)d:writeF32(e.X)d:
writeF32(e.Y)d:writeF32(e.Z)end function c.toBuffer(d)local e=buffer.create(d.
_offset)buffer.copy(e,0,d._buf,0,d._offset)return e end function c.toString(d)
return buffer.tostring(d:toBuffer())end return c end function a.h()local b=a.
cache.h if not b then b={c=__modImpl()}a.cache.h=b end return b.c end end do
local function __modImpl()local b={}b.__index=b function b.new(c)return
setmetatable({_buf=c,_offset=0,_size=buffer.len(c)},b)end function b.reset(c)c.
_offset=0 buffer.fill(c._buf,0,0,c._size)end function b.seek(c,d)c._offset=d end
function b.getOffset(c)return c._offset end function b._ensure(c,d)if c._offset+
d>c._size then error(`Buffer out of bounds! Size: {c._size}, offset: {c._offset} and ensure {
d} bytes`)end end function b.readU8(c)c:_ensure(1)local d=buffer.readu8(c._buf,c
._offset)c._offset+=1 return d end function b.readU16(c)c:_ensure(2)local d=
buffer.readu16(c._buf,c._offset)c._offset+=2 return d end function b.readU32(c)c
:_ensure(4)local d=buffer.readu32(c._buf,c._offset)c._offset+=4 return d end
function b.readF32(c)c:_ensure(4)local d=buffer.readf32(c._buf,c._offset)c.
_offset+=4 return d end function b.readShortString(c)c:_ensure(2)local d=c:
readU16()c:_ensure(d)local e=buffer.readstring(c._buf,c._offset,d)c._offset+=d
return e end function b.readVector3(c)local d=c:readF32()local e=c:readF32()
local f=c:readF32()return Vector3.new(d,e,f)end function b.toBuffer(c)local d=
buffer.create(c._offset)buffer.copy(d,0,c._buf,0,c._offset)return d end function
b.toString(c)return buffer.tostring(c:toBuffer())end return b end function a.i()
local b=a.cache.i if not b then b={c=__modImpl()}a.cache.i=b end return b.c end
end do local function __modImpl()local b=a.i()return{}end function a.j()local b=
a.cache.j if not b then b={c=__modImpl()}a.cache.j=b end return b.c end end do
local function __modImpl()local b={RESERVED_0=0,PlaceIndexUnit=1,
UpgradeIndexUnit=2,ChangeUnitTargetting=3,DestroyUnit=4}return table.freeze(b)
end function a.k()local b=a.cache.k if not b then b={c=__modImpl()}a.cache.k=b
end return b.c end end do local function __modImpl()local b=game:GetService
'Players'local c=b.LocalPlayer or b.PlayerAdded:Wait()local d=(c:WaitForChild
'PlayerGui')local e=(d:WaitForChild'AwesomeGUI')local f=(e:FindFirstChild
'Towers')local g={}local h={Tower1=1,Tower2=2,Tower3=3,Tower4=4,Tower5=5,Tower6=
6,Tower7=7}local i={}for j,k in h do i[k]=j end function g.fromName(j)return h[j
]or 0 end function g.fromIndex(j)return i[j]or''end function g.buttonFromName(j)
return(f:FindFirstChild(j))end return g end function a.l()local b=a.cache.l if
not b then b={c=__modImpl()}a.cache.l=b end return b.c end end do local function
__modImpl()local b=game:GetService'Players'local c=game:GetService'RunService'
local d=game:GetService'ReplicatedStorage'local e=b.LocalPlayer or b.PlayerAdded
:Wait()local f=(e:WaitForChild('CASH',5))local g=a.j()local h=a.k()local i=a.l()
local j=(d:WaitForChild('SpawnUnit',10))if not j then error
[[This place has no SpawnUnit remote in ReplicatedStorage, exiting.]]end local k
={match=function(k)return k==h.PlaceIndexUnit end,process=function(k)local l=i.
fromIndex(k:readU8())local m=k:readU8()local n=k:readVector3()task.defer(
function()local o=i.buttonFromName(l)local p=(o:FindFirstChild'Cooldown')local q
=(o:FindFirstChild'RealCost')while p.Value>0 do c.Heartbeat:Wait()end while f.
Value<q.Value do c.Heartbeat:Wait()end j:FireServer('lol',o,m,n)end)end}return k
end function a.m()local b=a.cache.m if not b then b={c=__modImpl()}a.cache.m=b
end return b.c end end do local function __modImpl()local b=game:GetService
'ReplicatedStorage'local c=a.j()local d=a.k()local e=(b:WaitForChild(
'ChangeUnitTargetting',10))if not e then error
[[This place has no ChangeUnitTargetting remote in ReplicatedStorage, exiting.]]
end local f=(workspace:FindFirstChild'BluTeamUnits')local g={match=function(g)
return g==d.DestroyUnit end,process=function(g)local h=g:readVector3()local i
local j=math.huge for k,l in f:GetChildren()do local m=(l:FindFirstChild
'HumanoidRootPart')if m then local n=(m.Position-h).Magnitude if n<=0.5 and n<j
then j=n i=l end end end if i then e:FireServer(i,true)else warn(`[ChangeUnitTargetting] Couldn't find closest unit to destroy!`
)end end}return g end function a.n()local b=a.cache.n if not b then b={c=
__modImpl()}a.cache.n=b end return b.c end end do local function __modImpl()
local b=game:GetService'Players'local c=game:GetService'RunService'local d=game:
GetService'ReplicatedStorage'local e=b.LocalPlayer or b.PlayerAdded:Wait()local
f=(e:WaitForChild('CASH',5))local g=a.j()local h=a.k()local i=a.l()local j=(d:
WaitForChild('UpgradeTower',10))if not j then error
[[This place has no UpgradeTower remote in ReplicatedStorage, exiting.]]end
local k={match=function(k)return k==h.UpgradeIndexUnit end,process=function(k)
local l=i.fromIndex(k:readU8())task.defer(function()local m=i.buttonFromName(l)
local n=(m:FindFirstChild'UpCost')while f.Value<n.Value do c.Heartbeat:Wait()end
j:FireServer('lol',m)end)end}return k end function a.o()local b=a.cache.o if not
b then b={c=__modImpl()}a.cache.o=b end return b.c end end do local function
__modImpl()local b=game:GetService'ReplicatedStorage'local c=a.j()local d=a.k()
local e=(b:WaitForChild('ChangeUnitTargetting',10))if not e then error
[[This place has no ChangeUnitTargetting remote in ReplicatedStorage, exiting.]]
end local f=(workspace:FindFirstChild'BluTeamUnits')local g={match=function(g)
return g==d.ChangeUnitTargetting end,process=function(g)local h=g:
readShortString()local i=g:readVector3()local j local k=math.huge for l,m in f:
GetChildren()do local n=(m:FindFirstChild'HumanoidRootPart')if n then local o=(n
.Position-i).Magnitude if o<=0.5 and o<k then k=o j=m end end end if j then e:
FireServer(j,'SetTarget',{h})else warn(`[ChangeUnitTargetting] Couldn't find closest unit to target with {
h}!`)end end}return g end function a.p()local b=a.cache.p if not b then b={c=
__modImpl()}a.cache.p=b end return b.c end end do local function __modImpl()
local b=a.j()local c=a.m()local d=a.n()local e=a.o()local f=a.p()local g={c,d,e,
f}return g end function a.q()local b=a.cache.q if not b then b={c=__modImpl()}a.
cache.q=b end return b.c end end do local function __modImpl()local b=a.i()local
c=a.q()local d={}function d.process(e)local f=b.new(e)if f:readU32()~=1835299959
then error'Magic bytes mismatch!'end local g=f:readU16()print(`[Decoder] total actions: {
g}`)local h=-1 for i=1,g do local j=f:readU16()local k=false for l,m in c do if
m.match(j)then local n=f:readF32()task.wait(n)m.process(f)k=true break end end
if not k then error(`Invalid opcode number {j}! Possibly previous action (opcode: {
h}) didn't fully read the stream?`)end h=j end print(`Successfully processed {g} actions!`
)end return d end function a.r()local b=a.cache.r if not b then b={c=__modImpl()
}a.cache.r=b end return b.c end end do local function __modImpl()local b=a.h()
return{}end function a.s()local b=a.cache.s if not b then b={c=__modImpl()}a.
cache.s=b end return b.c end end do local function __modImpl()local b=a.s()local
c=a.k()local d=a.l()local e={matchName=function(e)return e=='SpawnUnit'end,
matchArgs=function(e)return e[1]=='lol'end,encodeOpcode=function(e)e:writeU16(c.
PlaceIndexUnit)end,encode=function(e,f)e:writeU8(d.fromName(f[2].Name))e:
writeU8(f[3])e:writeVector3(f[4])end}return e end function a.t()local b=a.cache.
t if not b then b={c=__modImpl()}a.cache.t=b end return b.c end end do
local function __modImpl()local b=a.s()local c=a.k()local d={matchName=function(
d)return d=='ChangeUnitTargetting'end,matchArgs=function(d)return d[2]==true end
,encodeOpcode=function(d)d:writeU16(c.DestroyUnit)end,encode=function(d,e)local
f=(e[1])local g=((f:FindFirstChild'HumanoidRootPart')).Position d:writeVector3(g
)end}return d end function a.u()local b=a.cache.u if not b then b={c=__modImpl()
}a.cache.u=b end return b.c end end do local function __modImpl()local b=a.s()
local c=a.k()local d=a.l()local e={matchName=function(e)return e=='UpgradeTower'
end,matchArgs=function(e)return e[1]=='lol'end,encodeOpcode=function(e)e:
writeU16(c.UpgradeIndexUnit)end,encode=function(e,f)e:writeU8(d.fromName(f[2].
Name))end}return e end function a.v()local b=a.cache.v if not b then b={c=
__modImpl()}a.cache.v=b end return b.c end end do local function __modImpl()
local b=a.s()local c=a.k()local d={matchName=function(d)return d==
'ChangeUnitTargetting'end,matchArgs=function(d)return d[2]=='SetTarget'end,
encodeOpcode=function(d)d:writeU16(c.ChangeUnitTargetting)end,encode=function(d,
e)local f=(e[1])local g=(e[3][1])local h=((f:FindFirstChild'HumanoidRootPart')).
Position d:writeShortString(g)d:writeVector3(h)end}return d end function a.w()
local b=a.cache.w if not b then b={c=__modImpl()}a.cache.w=b end return b.c end
end do local function __modImpl()local b=a.s()local c=a.t()local d=a.u()local e=
a.v()local f=a.w()local g={c,d,e,f}return g end function a.x()local b=a.cache.x
if not b then b={c=__modImpl()}a.cache.x=b end return b.c end end do
local function __modImpl()local b=a.e()local c=a.h()local d=a.r()local e=a.x()
local f={}local g=false local h local i=c.new()local j=0 local k=os.clock()local
l=false local function processFireServer(m,n)for o,p in e do if p.matchName(m)
and p.matchArgs(n)then j+=1 p.encodeOpcode(i)i:writeF32(os.clock()-k)p.encode(i,
n)k=os.clock()return end end end local function installHook()if not l then l=
true local m=getrawmetatable(game)if m then h=hookfunction(m.__namecall,function
(n,...)if g then local o=getnamecallmethod()if o=='FireServer'then local p={...}
task.spawn(function()setthreadidentity(8)processFireServer(n.Name,p)end)end end
return(h)(n,...)end)end end end local function removeHook()end function f.record
()if g then return b.error'Already recording'end i:reset()j=0 i:writeU32(
1835299959)i:writeU16(0)k=os.clock()installHook()g=true b.print
'Started recording!'end function f.play(m)local n=`wtd-macroses/{m}`if not
isfile(n)then error(`{m} is not a file..`)end local o=readfile(n)b.print(`Processing {
m}..`)d.process(buffer.fromstring(o))end function f.stop(m)if not g then return
b.error'Not recording currently'end if m==''then return b.error
"File name shouldn't be blank"end removeHook()g=false local n=i:getOffset()i:
seek(4)i:writeU16(j)i:seek(n)writefile(`wtd-macroses/{m}`,i:toString())i:reset()
j=0 end function f.isRecording()return g end return f end function a.y()local b=
a.cache.y if not b then b={c=__modImpl()}a.cache.y=b end return b.c end end do
local function __modImpl()local b={}local c=Color3.fromRGB(0,230,0)local d=
Color3.fromRGB(230,0,0)function b.bool2string(e)return e and'yes'or'no'end
function b.bool2color(e)return e and c or d end function b.isSurvival()return
game end return b end function a.z()local b=a.cache.z if not b then b={c=
__modImpl()}a.cache.z=b end return b.c end end do local function __modImpl()
local b=a.y()local c=a.d()local d=a.g()local e=a.z()local f=game:GetService
'RunService'local g=request{Url=
[[https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua]],
Method='GET'}.Body local h,i=loadstring(g)assert(h,`Obsidian UI Library failed to compile: {
i}`)local j,k=pcall(h)assert(j,`Coulnd't run Obisidan Library: {k}`)if typeof(k)
=='string'then error'impossible path!! Obsidian should NOT be a string!!'end
local l={}local m=false function l.init()c.bridge_interfaceLogsPrint=function(n)
k:Notify{Title='Informer Bridge',Description=n,Time=8}end c.
bridge_interfaceLogsError=function(n)k:Notify{Title='Informer Error',Description
=n,Time=10}end end local function Interface_settingsTab(n)local o=n:AddTab(
'Settings','wrench')do local p=o:AddLeftGroupbox('UI Settings','wrench')do p:
AddLabel'Menu bind':AddKeyPicker('MenuKeybind',{Default='RightShift',NoUI=true,
Text='Menu keybind',ChangedCallback=function(q)if q:IsA'KeyCode'then k.
ToggleKeybind=q end end})p:AddButton('Unload',function()k:Unload()end)end end k.
ToggleKeybind=Enum.KeyCode.RightShift end function l.startSurvival()assert(not m
,
[[You double called `Interface.start*`. Which obviously should not ever happen.]]
)m=true c.enableInterface()local n=a.c()n.UI_setThrowNotify(function(o,p,q)k:
Notify{Title=o,Description=p,Time=q}end)local o=k.Options local p=k:CreateWindow
{Title='WTDm',Footer='version: WTDm',Icon='',NotifySide='Right',Center=true,
ShowCustomCursor=false}local q=p:AddTab('Main','user')do local r=q:
AddLeftGroupbox('Bypasses','boxes')do r:AddToggle('ToggleNoInspect',{Text=
'Bypass no inspect',Tooltip=
[[Allows you to see and inspect units info when you normally cannot.
(for an example, using a Knowledge Crystal)]]
,DisabledTooltip="This executor doesn't support this feature.",Disabled=false,
Default=false,Visible=true,Risky=false,Callback=n.toggleBypassInspect})r:
AddDivider()r:AddButton{Text='Fullbright',Tooltip='future is bright',Func=n.
fullbright}end local s=q:AddRightGroupbox('Math','square-sigma')do local t=s:
AddLabel'Answer: click button below's:AddButton{Text='Solve math',Tooltip=
"Solves current Mathematician's problem.",Func=function()local u=n.solveMath()or
'Answer: ???'t:SetText(u)end}end local t=q:AddLeftGroupbox('Auto','boxes')do t:
AddToggle('ToggleAutoBank',{Text='Auto bank',Tooltip=
'Uses bank ability owned by you whenever they full.',DisabledTooltip=
"This executor doesn't support this feature.",Disabled=false,Default=false,
Visible=true,Risky=false,Callback=n.toggleAutoBank})t:AddSlider(
'SliderAutoBankDelay',{Text='Auto bank delay',Tooltip=
[[Delay before using bank.
Good when playing with the team, otherwise useless.]]
,Default=0,Min=0,Max=5,Rounding=1,Callback=n.setAutoBankDelay})end if not n.
isArchive()then local u=q:AddRightGroupbox('Selected','boxes')do local v={
TemplateText=u:AddLabel{Text='Press on an entity.\nWIP',Visible=true},
UnsupportedText=u:AddLabel{Text='This entity has no options.',Visible=false},
SWAT_RequiredCharge=u:AddSlider('SliderSWAT_RequiredCharge',{Text=
'Required charge',Default=6,Min=1,Max=9,Visible=false}),SWAT_NotifyOnCharge=u:
AddToggle('ToggleSWAT_NotifyOnCharge',{Text='Notify on charge',Tooltip=
[[Use slider above to configure required charge.
You will get notified when current charge equals Required charge.
(not >=, it's ==)]]
,Visible=false})}n.setSelectedUIObjects(v)end end end local r=p:AddTab('Macros',
'user')do local s=r:AddLeftGroupbox('Record','boxes')do s:AddInput(
'InputMacrosName',{Text='Macros file name',Tooltip=
[[Name to save actions on stop.
It will be saved in workspace/wtd-macroses folder.
You can share it with other players i guess?]]
,Placeholder='desert-casual.wtdm',ClearTextOnFocus=false})s:AddDivider()s:
AddButton{Text='Start recording',Tooltip=
[[Starts recording your actions
Consider to use auto recorder instead of this. (timing problems)
Recording may be unstable and you may see some bugs, so it's pretty much WIP]]
,Disabled=not d.ableToRecord(),DisabledTooltip='Your executor is too poor.',Func
=b.record}s:AddButton{Text='Stop',Tooltip=
[[Stops the recording and dumps your action to file to play it after]],Disabled=
not d.ableToRecord(),DisabledTooltip=
[[You can't even start the recording so why do you need to stop it]],Func=
function()local t=(o.InputMacrosName)b.stop(t.Value)end}s:AddDivider()task.
spawn(function()local t=s:AddToggle('ToggleAutoRecord',{Text=
'Auto start recording',Tooltip=
[[Auto starts recording on GameState change
(when you select mode and game starts)]]
,DisabledTooltip=not d.ableToRecord()and'Your executor is too poor.'or
'Already triggered auto record',Disabled=not d.ableToRecord()})local u=n.
getGameState()u.Changed:Wait()u.Changed:Wait()if t.Value then b.record()t:
SetValue(false)t:SetDisabled(true)end end)end local t=r:AddRightGroupbox(
'Playing','boxes')do t:AddInput('InputPlayMacrosName',{Text='Macros file name',
Tooltip=[[Macros to play.
File should be in workspace/wtd-macroses folder.]],
Placeholder='desert-casual.wtdm',ClearTextOnFocus=false})t:AddDivider()t:
AddButton{Text='Play macros',Tooltip=
[[Consider to use auto start play instead of this. (timing problems)]],Func=
function()local u=(o.InputPlayMacrosName)b.play(u.Value)end}task.spawn(function(
)local u=t:AddToggle('ToggleAutoPlay',{Text='Auto start play',Tooltip=
'Auto starts playing on GameState change',DisabledTooltip=
'Already triggered auto play'})local v=n.getGameState()v.Changed:Wait()v.Changed
:Wait()if u.Value then local w=(o.InputPlayMacrosName)b.play(w.Value)u:SetValue(
false)u:SetDisabled(true)end end)end end Interface_settingsTab(p)end function l.
startLobby()assert(not m,
[[You double called `Interface.start*`. Which obviously should not ever happen.]]
)m=true c.enableInterface()local n=a.a()local o=k.Options local p=k:CreateWindow
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
,Func=n.activateLockpick}end local t=q:AddLeftGroupbox('Autofarm','tractor')do
do n.setAutofishingToggler(t:AddToggle('ToggleAutoFish',{Text='Autofish',Tooltip
=
[[Auto farming fish.
Equip Fishing Rod (not the weak one) firstly to start fishing.
Just dont forget about 20 min idle kick.
Get some autocliker clicking on some GUI element (like settings button) to prevent idling.
(do not click on the screen cause it will mostly will interrupt auto fishing).]]
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
end}end end local u=q:AddRightGroupbox('Teleporter','boxes')do u:AddButton{Text=
'Toggle no rewards modifier',Tooltip=
[[Babygoo semi-patched this.
You have to be a teleporter owner to toggle.
On maps like Duels, if you have more than one modificator - server will manually enable no rewards modifiers.
Allows you to enable Event maps rewards.
Or disable rewards on any other map.. if you want so.]]
,Func=n.toggleNoRewards}u:AddToggle('ToggleMultipleModifiers',{Text=
'Allow multiple modifiers',Tooltip=
[[Allows you to activate more than 1 modifiers with same effect.
(for an example, you can activate both Healthy & Superhealth modifier together)]]
,Callback=n.toggleMultipleModifiers})end end Interface_settingsTab(p)end return
l end function a.A()local b=a.cache.A if not b then b={c=__modImpl()}a.cache.A=b
end return b.c end end end local b=5656754541 local c=game.PlaceId==b local d if
c then d=a.a()else d=a.c()end local e=a.e()local f=a.g()local g=a.A()local h,i=
pcall(function()f.identityManipulation.test()f.hookmetamethod.test()f.
hookfunction.test()f.filesystem.test()if d then d.init()else error
'Logic is nil!'end g.init()return nil end)if not h then error(`Failed to init script: {
i}`)end print'Done initing modules, trying to start interface..'makefolder
'wtd-macroses'if c then g.startLobby()else g.startSurvival()end e.flushStock()