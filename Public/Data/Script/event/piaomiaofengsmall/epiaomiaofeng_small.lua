--缥缈峰副本....

--脚本号
x402276_g_ScriptId = 402276

x402276_g_CopySceneType = FUBEN_PIAOMIAOFENG	--副本类型,定义T読 ScriptGlobal.lua里面

x402276_g_TickTime		= 1				--回调脚本to� 鸬 时钟时间(单位:  gi鈟/次)
x402276_g_NoUserTime	= 300			--副本中没有人后可以继续保存to� 鸬 时间(单位:  gi鈟)
x402276_g_Fuben_X			= 124			--进入副本to� 鸬 位置X
x402276_g_Fuben_Z			= 164			--进入副本to� 鸬 位置Z
x402276_g_FuBenTime		= 3*60*60	--副本关闭时间....
x402276_g_LimitMembers = 1

--BOSS表....
x402276_g_BOSSList =
{
	["HaDaBa_NPC"]				= { DataID=9668, Title="", posX=124, posY=86, Dir=0, BaseAI=3, AIScript=0, ScriptID=402283 },
	["HaDaBa_BOSS"]				= { DataID=9660, Title="", posX=124, posY=86, Dir=0, BaseAI=27, AIScript=0, ScriptID=402277 },

	["SangTuGong_NPC"]		= { DataID=9669, Title="", posX=41, posY=105, Dir=0, BaseAI=3, AIScript=0, ScriptID=402284 },
	["SangTuGong_BOSS"]		= { DataID=9661, Title="", posX=41, posY=105, Dir=0, BaseAI=27, AIScript=0, ScriptID=402278 },
	["JiangShi_BOSS"]			= { DataID=9662, Title="", posX=0, posY=0, Dir=0, BaseAI=28, AIScript=0, ScriptID=-1 },

	["WuLaoDa_NPC"]				= { DataID=9670, Title="V課 ti阯 chi th�", posX=117, posY=49, Dir=11, BaseAI=3, AIScript=0, ScriptID=402285 },
	["WuLaoDaLoss_NPC"]		= { DataID=9671, Title="V課 ti阯 chi th�", posX=0, posY=0, Dir=0, BaseAI=3, AIScript=0, ScriptID=402288 },
	["WuLaoDa_BOSS"]			= { DataID=9663, Title="V課 ti阯 chi th�", posX=117, posY=49, Dir=11, BaseAI=27, AIScript=0, ScriptID=402279 },

	["ZhuoBuFan_BOSS"]		= { DataID=9664, Title="Ki猰 Th", posX=121, posY=31, Dir=0, BaseAI=27, AIScript=0, ScriptID=402280 },
	["BuPingDaoRen_BOSS"]	= { DataID=9665, Title="Giao V呓ng", posX=129, posY=31, Dir=0, BaseAI=27, AIScript=261, ScriptID=402281 },

	["DuanMuYuan_BOSS"]		= { DataID=9667, Title="", posX=125, posY=36, Dir=0, BaseAI=0, AIScript=0, ScriptID=402287 },

	["FuMinYi_NPC"]				= { DataID=9672, Title="", posX=159, posY=54, Dir=11, BaseAI=3, AIScript=0, ScriptID=402286 },

	["LiQiuShui_BOSS"]		= { DataID=9666, Title="Th b� n� t�", posX=125, posY=36, Dir=11, BaseAI=27, AIScript=0, ScriptID=402282 },
}

x402276_g_FightBOSSList =
{
	[1] = x402276_g_BOSSList["HaDaBa_BOSS"].DataID,
	[2] = x402276_g_BOSSList["SangTuGong_BOSS"].DataID,
	[3] = x402276_g_BOSSList["WuLaoDa_BOSS"].DataID,
	[4] = x402276_g_BOSSList["ZhuoBuFan_BOSS"].DataID,
	[5] = x402276_g_BOSSList["BuPingDaoRen_BOSS"].DataID,
	[6] = x402276_g_BOSSList["LiQiuShui_BOSS"].DataID
}

--喧ng否可以Khi陁 chi猲某c醝BOSSto� 鸬 标记列表....
x402276_g_BattleFlagTbl = 
{
	["HaDaBa"]			= 8,	--喧ng否可以Khi陁 chi猲C醦 姓i B�...
	["SangTuGong"]	= 9,	--喧ng否可以Khi陁 chi猲Tang Th� C鬾g....
	["WuLaoDa"]			= 10,	--喧ng否可以Khi陁 chi猲� L鉶 姓i....
	["ShuangZi"]		= 11,	--喧ng否可以Khi陁 chi猲双子....
	["LiQiuShui"]		= 12,	--喧ng否可以Khi陁 chi猲L� Thu Th鼀....
}

--场景变量索引....喧ng否可以Khi陁 chi猲某c醝BOSSto� 鸬 标记....
-- 0=不能Khi陁 chi猲 1=可以Khi陁 chi猲 2=已经Khi陁 chi猲过了
x402276_g_IDX_BattleFlag_Hadaba			= 8
x402276_g_IDX_BattleFlag_Sangtugong	= 9
x402276_g_IDX_BattleFlag_Wulaoda		= 10
x402276_g_IDX_BattleFlag_Shuangzi		= 11
x402276_g_IDX_BattleFlag_Liqiushui	= 12

x402276_g_IDX_FuBenOpenTime		= 13	--副本建立to� 鸬 时间....
x402276_g_IDX_FuBenLifeStep		= 14	--副本生命期to� 鸬 step....(包括建立NPC....关闭倒计时提示....)

--场景变量索引....通用to� 鸬 缥缈峰计时器....主要用于激活BOSSCu礳 chi猲 ....
x402276_g_IDX_PMFTimerStep			= 15
x402276_g_IDX_PMFTimerScriptID	= 16

--场景变量索引....� L鉶 姓i死亡to� 鸬 计时器....用于处理死亡逻辑....
x402276_g_IDX_WuLaoDaDieStep				= 17
x402276_g_IDX_WuLaoDaDieScriptID		= 18
x402276_g_IDX_WuLaoDaDiePosX				=	19
x402276_g_IDX_WuLaoDaDiePosY				=	20


--**********************************
--任务入口函数....
--**********************************
function x402276_OnDefaultEvent( sceneId, selfId, targetId )

	--检测喧ng否可以进入副本....
	local ret, msg = x402276_CheckCanEnter( sceneId, selfId, targetId )
	if 1 ~= ret then
		BeginEvent(sceneId)
			AddText(sceneId,msg)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--关闭NPC对话窗口....
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

	x402276_MakeCopyScene( sceneId, selfId )

end

--**********************************
--列举事件
--**********************************
function x402276_OnEnumerate( sceneId, selfId, targetId )

	AddNumText( sceneId, x402276_g_ScriptId, "S� chi猲 Phi陁 Mi瑄 Phong", 10, 1 )

end

--**********************************
--检测喧ng否可以进入此副本....
--**********************************
function x402276_CheckCanEnter( sceneId, selfId, targetId )

	--喧ng否有队伍....
	if LuaFnHasTeam(sceneId,selfId) ~= 1 then
		return 0, "#{PMF_20080521_02}"
	end

	--喧ng不喧ng队长....
	if GetTeamLeader(sceneId,selfId) ~= selfId then
		return 0, "#{PMF_20080521_03}"
	end

	--人数喧ng否够....
	if GetTeamSize(sceneId,selfId) < 1 then
		return 0, "#{PMF_20080521_04}"
	end

	--喧ng否都T読 附近....
	local NearTeamSize = GetNearTeamCount(sceneId,selfId)
	if GetTeamSize(sceneId,selfId) ~= NearTeamSize then
		return 0, "#{PMF_20080521_05}"
	end

	local Humanlist = {}
	local nHumanNum = 0

	--喧ng否有人不够75c....
	for i=0, NearTeamSize-1 do
		local PlayerId = GetNearTeamMember( sceneId, selfId, i )
		if GetLevel( sceneId, PlayerId ) < 75 then
			Humanlist[nHumanNum] = GetName( sceneId, PlayerId )
			nHumanNum = nHumanNum + 1
		end
	end

	if nHumanNum > 0 then

		local msg = "    Trong 鸬i "
		for i=0, nHumanNum-2 do
			msg = msg .. Humanlist[i] .. ", "
		end
		msg = msg .. Humanlist[nHumanNum-1] .. " tu vi c騨 th, kh鬾g th� tham gia!"
		return 0, msg

	end


	--喧ng否有人今天做过1次了....
	nHumanNum = 0
	local CurDayTime = GetDayTime()
	for i=0, NearTeamSize-1 do

		local PlayerId = GetNearTeamMember( sceneId, selfId, i )
		local lastTime = GetMissionData( sceneId, PlayerId, MD_PIAOMIAOFENG_SMALL_LASTTIME )
		local lastDayTime = floor( lastTime / 100 )
		local lastDayCount = mod( lastTime, 100 )
	
		if CurDayTime > lastDayTime then
			lastDayTime = CurDayTime
			lastDayCount = 0
		end

		if lastDayCount >= 1 then
			Humanlist[nHumanNum] = GetName( sceneId, PlayerId )
			nHumanNum = nHumanNum + 1
		end

	end
	
	--队伍达到人数要求?
		local teamSize = GetTeamSize(sceneId, selfId);
		if teamSize < x402276_g_LimitMembers then
			return 0, "T痠 Thi瑄 " .. x402276_g_LimitMembers .. " ng叨i m緄 c� th� tham gia s� ki畁 Phi陁 Mi璶 phong";				
		end

	if nHumanNum > 0 then

		local msg = "    "
		for i=0, nHumanNum-2 do
			msg = msg .. Humanlist[i] .. ", "
		end
		msg = msg .. Humanlist[nHumanNum-1] .. " 疸 tham gia Khi陁 Chi猲 qu� 1 l."
		return 0, msg

	end

	return 1

end

--**********************************
--创建副本....
--**********************************
function x402276_MakeCopyScene( sceneId, selfId )

	local x = 0
	local z = 0
	x,z = LuaFnGetWorldPos(sceneId,selfId)
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)

	LuaFnSetSceneLoad_Map(sceneId, "piaomiao.nav")
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid)
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x402276_g_NoUserTime*1000)
	LuaFnSetCopySceneData_Timer(sceneId, x402276_g_TickTime*1000)
	LuaFnSetCopySceneData_Param(sceneId, 0, x402276_g_CopySceneType)
	LuaFnSetCopySceneData_Param(sceneId, 1, x402276_g_ScriptId)
	LuaFnSetCopySceneData_Param(sceneId, 2, 0)
	LuaFnSetCopySceneData_Param(sceneId, 3, sceneId)
	LuaFnSetCopySceneData_Param(sceneId, 4, x)
	LuaFnSetCopySceneData_Param(sceneId, 5, z)
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId))
	LuaFnSetCopySceneData_Param(sceneId, 7, 0)

	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end

	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_BattleFlag_Hadaba, 1 )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_BattleFlag_Sangtugong, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_BattleFlag_Wulaoda, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_BattleFlag_Shuangzi, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_BattleFlag_Liqiushui, 0 )

	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenOpenTime, LuaFnGetCurrentTime() )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 0 )

	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_PMFTimerStep, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_PMFTimerScriptID, -1 )

	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDieStep, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDieScriptID, -1 )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDiePosX, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDiePosY, 0 )

	LuaFnSetSceneLoad_Area( sceneId, "piaomiao_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "piaomiao_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId)
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D竎h chuy琻 th鄋h c鬾g!");
		else
			AddText(sceneId,"S� l唼ng b鋘 sao 疸 皙n gi緄 h課, 皤 ngh� l醫 n鎍 th� l読!");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

end

--**********************************
--副本事件....
--**********************************
function x402276_OnCopySceneReady( sceneId, destsceneId )

	--进入副本to� 鸬 规则
	-- 1,如果C醝 n鄖 玩家没有组队,就传送C醝 n鄖 玩家自己进入副本
	-- 2, 如果玩家有队伍,但喧ng玩家不喧ng队长,就传送自己进入副本
	-- 3,如果玩家有队伍,并且C醝 n鄖 玩家喧ng队长,就传送自己和附近队友m祎 起进去

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId) --设置副本入口场景号
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then
		return
	end

	--统计创建副本次数....
	AuditPMFCreateFuben( sceneId, leaderObjId )

	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then
		NewWorld( sceneId, leaderObjId, destsceneId, x402276_g_Fuben_X, x402276_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x402276_g_Fuben_X, x402276_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				NewWorld( sceneId, mems[i], destsceneId, x402276_g_Fuben_X, x402276_g_Fuben_Z)
			end
		end		
	end

end

--**********************************
--副本场景定时器事件....
--**********************************
function x402276_OnCopySceneTimer( sceneId, nowTime )

	x402276_TickFubenLife( sceneId, nowTime )

	x402276_TickPMFTimer( sceneId, nowTime )

	x402276_TickWuLaoDaDieTimer( sceneId, nowTime )

	x402276_TickJianWuArea( sceneId, nowTime )

end

--**********************************
--有玩家进入副本事件....
--**********************************
function x402276_OnPlayerEnter( sceneId, selfId )

	--设� gi鈟劳鍪录�....
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x402276_g_Fuben_X, x402276_g_Fuben_Z )

	--设置Khi陁 chi猲过m祎 次缥缈峰....
	local lastTime = GetMissionData( sceneId, selfId, MD_PIAOMIAOFENG_SMALL_LASTTIME )
	local lastDayTime = floor( lastTime / 100 )
	local lastDayCount = mod( lastTime, 100 )
	local CurDayTime = GetDayTime()

	if CurDayTime > lastDayTime then
		lastDayTime = CurDayTime
		lastDayCount = 0
	end

	lastDayCount = lastDayCount + 1
	lastTime = lastDayTime * 100 + lastDayCount
	SetMissionData( sceneId, selfId, MD_PIAOMIAOFENG_SMALL_LASTTIME, lastTime )

end

--**********************************
--有玩家T読 副本中死亡事件....
--**********************************
function x402276_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--提示所有副本内玩家....
--**********************************
function x402276_TipAllHuman( sceneId, Str )

	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
			BeginEvent(sceneId)
				AddText(sceneId, Str)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId, PlayerId)
		end
	end

end

--**********************************
--Tick副本生命期....
--**********************************
function x402276_TickFubenLife( sceneId, nowTime )

	local openTime = LuaFnGetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenOpenTime )
	local leftTime = openTime + x402276_g_FuBenTime - LuaFnGetCurrentTime()
	local lifeStep = LuaFnGetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep )

	if lifeStep == 15 then

		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 16 )

		local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
		local oldSceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )
		local oldX = LuaFnGetCopySceneData_Param( sceneId, 4 )
		local oldZ = LuaFnGetCopySceneData_Param( sceneId, 5 )
		for i=0, nHumanNum-1  do
			local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
				NewWorld( sceneId, PlayerId, oldSceneId, oldX, oldZ )
			end
		end

		return

	end

	if lifeStep == 14 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 15 )
		x402276_TipAllHuman( sceneId, "Ph� b鋘 hi畁 t読 1s sau s� 痼ng!" )
		return
	end

	if lifeStep == 13 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 14 )
		x402276_TipAllHuman( sceneId, "Ph� b鋘 hi畁 t読 2s sau s� 痼ng!" )
		return
	end

	if lifeStep == 12 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 13 )
		x402276_TipAllHuman( sceneId, "Ph� b鋘 hi畁 t読 3s sau s� 痼ng!" )
		return
	end

	if lifeStep == 11 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 12 )
		x402276_TipAllHuman( sceneId, "Ph� b鋘 hi畁 t読 4s sau s� 痼ng!" )
		return
	end

	if lifeStep == 10 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 11 )
		x402276_TipAllHuman( sceneId, "Ph� b鋘 hi畁 t読 5s sau s� 痼ng!" )
		return
	end

	if leftTime <= 10 and lifeStep == 9 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 10 )
		x402276_TipAllHuman( sceneId, "Ph� b鋘 hi畁 t読 10s sau s� 痼ng!" )
		return
	end

	if leftTime <= 30 and lifeStep == 8 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 9 )
		x402276_TipAllHuman( sceneId, "Ph� b鋘 hi畁 t読 30s sau s� 痼ng!" )
		return
	end

	if leftTime <= 60 and lifeStep == 7 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 8 )
		x402276_TipAllHuman( sceneId, "Ph� b鋘 hi畁 t読 1 ph鷗 sau s� 痼ng!" )
		return
	end

	if leftTime <= 120 and lifeStep == 6 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 7 )
		x402276_TipAllHuman( sceneId, "Ph� b鋘 hi畁 t読 2 ph鷗 sau s� 痼ng!" )
		return
	end

	if leftTime <= 180 and lifeStep == 5 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 6 )
		x402276_TipAllHuman( sceneId, "Ph� b鋘 hi畁 t読 3 ph鷗 sau s� 痼ng!" )
		return
	end

	if leftTime <= 300 and lifeStep == 4 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 5 )
		x402276_TipAllHuman( sceneId, "Ph� b鋘 hi畁 t読 5 ph鷗 sau s� 痼ng!" )
		return
	end

	if leftTime <= 900 and lifeStep == 3 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 4 )
		x402276_TipAllHuman( sceneId, "Ph� b鋘 hi畁 t読 15 ph鷗 sau s� 痼ng!" )
		return
	end

	if leftTime <= 1800 and lifeStep == 2 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 3 )
		x402276_TipAllHuman( sceneId, "Ph� b鋘 hi畁 t読 30 ph鷗 sau s� 痼ng!" )
		return
	end

	if leftTime <= 3600 and lifeStep == 1 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 2 )
		x402276_TipAllHuman( sceneId, "Ph� b鋘 hi畁 t読 60 ph鷗 sau s� 痼ng!" )
		return
	end

	--初始化副本内to� 鸬 NPC....
	if lifeStep == 0 then

		local MstId = x402276_CreateBOSS( sceneId, "HaDaBa_NPC", -1, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )

		MstId = x402276_CreateBOSS( sceneId, "SangTuGong_NPC", -1, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )

		MstId = x402276_CreateBOSS( sceneId, "WuLaoDa_NPC", -1, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )

		MstId = x402276_CreateBOSS( sceneId, "FuMinYi_NPC", -1, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )

		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 1 )

		return
	end

end

--**********************************
--Tick缥缈峰计时器....
--**********************************
function x402276_TickPMFTimer( sceneId, nowTime )

	local step = LuaFnGetCopySceneData_Param( sceneId, x402276_g_IDX_PMFTimerStep )
	if step <= 0 then
		return
	end
	local scriptID = LuaFnGetCopySceneData_Param( sceneId, x402276_g_IDX_PMFTimerScriptID )

	--回调指定脚本to� 鸬 OnTimer....
	CallScriptFunction( scriptID, "OnPMFTimer", sceneId, step )

	--如果已经走完所有step则关闭计时器....
	step = step - 1
	if step <= 0 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_PMFTimerStep, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_PMFTimerScriptID, -1 )
	else
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_PMFTimerStep, step )
	end

end

--**********************************
--M� ra 缥缈峰计时器....
--**********************************
function x402276_OpenPMFTimer( sceneId, allstep, ScriptID )

	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_PMFTimerStep, allstep )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_PMFTimerScriptID, ScriptID )

end

--**********************************
--当前缥缈峰计时器喧ng否激活....
--**********************************
function x402276_IsPMFTimerRunning( sceneId )

	local step = LuaFnGetCopySceneData_Param( sceneId, x402276_g_IDX_PMFTimerStep )
	if step > 0 then
		return 1
	else
		return 0
	end

end

--**********************************
--Tick� L鉶 姓i死亡计时器....
--**********************************
function x402276_TickWuLaoDaDieTimer( sceneId, nowTime )

	local step = LuaFnGetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDieStep )
	if step <= 0 then
		return
	end

	local scriptID = LuaFnGetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDieScriptID )
	local posX = LuaFnGetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDiePosX )
	local posY = LuaFnGetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDiePosY )

	--回调指定脚本to� 鸬 OnTimer....
	CallScriptFunction( scriptID, "OnHaDaBaDieTimer", sceneId, step, posX, posY )

	--如果已经走完所有step则关闭计时器....
	step = step - 1
	if step <= 0 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDieStep, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDieScriptID, -1 )
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDiePosX, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDiePosY, 0 )
	else
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDieStep, step )
	end

end

--**********************************
--M� ra � L鉶 姓i死亡计时器....
--**********************************
function x402276_OpenWuLaoDaDieTimer( sceneId, allstep, ScriptID, posX, posY )

	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDieStep, allstep )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDieScriptID, ScriptID )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDiePosX, posX )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDiePosY, posY )

end

--**********************************
--Tick剑舞区域....
--只要玩家站T読 场景里to� 鸬 6c醝光柱内....每 gi鈟都能 鹫t 疬㧟m祎 c醝免疫剑舞to� 鸬 buff....
--**********************************
function x402276_TickJianWuArea( sceneId, nowTime )

	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then

			local x,z = GetWorldPos( sceneId, nHumanId )
			local buff1 = -1
			local buff2 = 10376

			if x>=112 and x<=116 and z>=27 and z<=31 then
				buff1 = 10370
			elseif x>=134 and x<=138 and z>=27 and z<=31 then
				buff1 = 10374
			elseif x>=145 and x<=149 and z>=46 and z<=50 then
				buff1 = 10375
			elseif x>=134 and x<=138 and z>=65 and z<=69 then
				buff1 = 10371
			elseif x>=112 and x<=116 and z>=65 and z<=69 then
				buff1 = 10373
			elseif x>=101 and x<=105 and z>=46 and z<=50 then
				buff1 = 10372
			end

			if buff1 ~= -1 then
				LuaFnSendSpecificImpactToUnit(sceneId, nHumanId, nHumanId, nHumanId, buff1, 0)
				LuaFnSendSpecificImpactToUnit(sceneId, nHumanId, nHumanId, nHumanId, buff2, 0)
			end

		end
	end

end

--**********************************
--创建指定BOSS....
--**********************************
function x402276_CreateBOSS( sceneId, name, x, y )

	local BOSSData = x402276_g_BOSSList[name]
	if not BOSSData then
		return
	end

	local posX = 0
	local posY = 0
	if x ~= -1 and y ~= -1 then
		posX = x
		posY = y
	else
		posX = BOSSData.posX
		posY = BOSSData.posY
	end

	local MstId = LuaFnCreateMonster( sceneId, BOSSData.DataID, posX, posY, BOSSData.BaseAI, BOSSData.AIScript, BOSSData.ScriptID )
	SetObjDir( sceneId, MstId, BOSSData.Dir )
	SetMonsterFightWithNpcFlag( sceneId, MstId, 0 )
	if BOSSData.Title ~= "" then
		SetCharacterTitle(sceneId, MstId, BOSSData.Title)
	end

	LuaFnSendSpecificImpactToUnit(sceneId, MstId, MstId, MstId, 152, 0)

	--统计创建BOSS....
	AuditPMFCreateBoss( sceneId, BOSSData.DataID )

	return MstId

end

--**********************************
--删除指定BOSS....
--**********************************
function x402276_DeleteBOSS( sceneId, name )

	local BOSSData = x402276_g_BOSSList[name]
	if not BOSSData then
		return
	end

	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if BOSSData.DataID == GetMonsterDataID( sceneId, MonsterId ) then
			--LuaFnDeleteMonster( sceneId, MonsterId )
			LuaFnSendSpecificImpactToUnit(sceneId, MonsterId, MonsterId, MonsterId, 152, 0)
			SetCharacterDieTime( sceneId, MonsterId, 1000 )
		end
	end

end

--**********************************
--寻找指定BOSS....
--**********************************
function x402276_FindBOSS( sceneId, name )

	local BOSSData = x402276_g_BOSSList[name]
	if not BOSSData then
		return -1
	end

	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if BOSSData.DataID == GetMonsterDataID( sceneId, MonsterId ) then
			return MonsterId
		end
	end

	return -1

end

--**********************************
--检测当前喧ng否已经存T読 m祎 c醝BOSS了....
--**********************************
function x402276_CheckHaveBOSS( sceneId )

	local BossList = {}
	local nBossNum = 0

	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
			local DataID = GetMonsterDataID( sceneId, MonsterId )
			for j, dataId in x402276_g_FightBOSSList do
				if DataID == dataId then
					BossList[nBossNum] = GetName( sceneId, MonsterId )
					nBossNum = nBossNum + 1
				end
			end
		end
	end

	if nBossNum > 0 then
		local msg = "衋ng c鵱g "
		for i=0, nBossNum-2 do
			msg = msg .. BossList[i] .. ", "
		end
		msg = msg .. BossList[nBossNum-1] .. " chi猲 黏u"
		return 1, msg
	end

	return 0, ""

end

--**********************************
--获取喧ng否可以Khi陁 chi猲某c醝BOSSto� 鸬 标记....
--**********************************
function x402276_GetBossBattleFlag( sceneId, bossName )

	local idx = x402276_g_BattleFlagTbl[ bossName ]
	return LuaFnGetCopySceneData_Param( sceneId, idx )

end

--**********************************
--设置喧ng否可以Khi陁 chi猲某c醝BOSSto� 鸬 标记....
--**********************************
function x402276_SetBossBattleFlag( sceneId, bossName, bCan )

	local idx = x402276_g_BattleFlagTbl[ bossName ]
	LuaFnSetCopySceneData_Param( sceneId, idx, bCan )

end
