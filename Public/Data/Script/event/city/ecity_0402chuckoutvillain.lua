--副本任务
--赶走流氓恶霸

--************************************************************************
--MisDescBegin

--脚本号
x600019_g_ScriptId = 600019

--任务号
x600019_g_MissionId = 1108

--目标NPC
x600019_g_Name = "M礳 D竎h"

--衅ng c nhi甿 v� 
x600019_g_MissionLevel = 10000

--任务归类
x600019_g_MissionKind = 50

--喧ng否喧ngTinh英任务
x600019_g_IfMissionElite = 0

--********下面几项喧ng动态显示to� 鸬 内容,用于T読 任务列表中动态显示任务情况******
--角色Mission变量� 餴琺�
x600019_g_IsMissionOkFail			=0	--0 Nhi甿 v� ho鄋 th鄋h标记
x600019_g_MissionParam_SubId		=1	--1 子任务脚本号存放位置
x600019_g_MissionParam_KillNumber	=2	--2 C 消灭to� 鸬 怪物数量
x600019_g_Param_sceneid				=3	--3号: 当前副本任务to� 鸬 场景号
x600019_g_Param_teamid				=4	--4号: 接副本任务时候to� 鸬 队伍号
x600019_g_Param_killcount			=5	--5号: 杀死任务怪to� 鸬 数量
x600019_g_Param_time				=6	--6号: 完成副本所用时间(单位:  gi鈟)
--6号: 未用
--7号: 未用

--循环任务to� 鸬 数据索引,里面存着已做to� 鸬 环数
x600019_g_MissionRound = 44
--**********************************以上喧ng动态****************************

--任务文本描述
x600019_g_MissionName = "Nhi甿 v� th呓ng nghi畃"
x600019_g_MissionInfo = ""													--任务描述
x600019_g_MissionTarget = "    N骾 chuy畁 v緄 M礳 D竎h, 瓞 鬾g ta 疬a c醕 h� 餴 ra ch�, ph鋓 gi醥 hu l� 醕 b� 裞 hi猵 th呓ng nh鈔 trong th鄋h th�. "		--M鴆 ti陁 nhi甿 v�
x600019_g_ContinueInfo = "    Nhi甿 v� c黙 c醕 h� v鏽 ch遖 ho鄋 th鄋h �?"						--未Ho鄋 t nhi甿 v鴗o� 鸬 npc对话
x600019_g_SubmitInfo = "    S� t靚h ti猲 tri琻 nh� th� n鄌 r癷?"								--完成未提交时to� 鸬 npc对话
x600019_g_MissionComplete = "    L鄊 t痶 l, r t痶 r t痶. "						--Ho鄋 t nhi甿 v鴑pc说话to� 鸬 话

x600019_g_Parameter_Kill_CountRandom = { { id = 300474, numNeeded = 2, numKilled = 5 } }

-- 通用Th鄋h ph� 任务脚本
x600019_g_CityMissionScript = 600001
x600019_g_MarketScript = 600017

--任务奖励

--MisDescEnd
--************************************************************************

x600019_g_TransScript = 400900

--副本名称
x600019_g_CopySceneName = "Ch� phi阯"

x600019_g_CopySceneType = FUBEN_CHUCKOUTVILLAIN	--副本类型,定义T読 ScriptGlobal.lua里面

x600019_g_CopySceneMap = "jishi.nav"
x600019_g_Exit = "jishi_area.ini"
x600019_g_TickTime = 5					--回调脚本to� 鸬 时钟时间(单位:  gi鈟/次)
x600019_g_LimitTotalHoldTime = 480		--副本可以存活to� 鸬 时间(单位: 次数),如果此时间到了,则任务将会th b読
x600019_g_LimitTimeSuccess = 500		--副本时间限制(单位: 次数),如果此时间到了,Nhi甿 v� ho鄋 th鄋h
x600019_g_CloseTick = 3					--副本关闭前倒计时(单位: 次数)
x600019_g_NoUserTime = 10				--副本中没有人后可以继续保存to� 鸬 时间(单位:  gi鈟)
x600019_g_DeadTrans = 0					--死亡转移模式,0: 死亡后还可以继续T読 副本,1: 死亡后被强制移出副本
x600019_g_Fuben_X = 42					--进入副本to� 鸬 位置X
x600019_g_Fuben_Z = 47					--进入副本to� 鸬 位置Z
x600019_g_Back_X = 47					--源场景位置X
x600019_g_Back_Z = 92					--源场景位置Z
x600019_g_NeedMonsterGroupID = 1		--Boss to� 鸬 组号
x600019_g_TotalNeedKillBoss=11			--C 杀死Boss数量

--**********************************
--任务入口函数
--**********************************
function x600019_OnDefaultEvent( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600019_g_Name then		--判断该npc喧ng否喧ng对应任务to� 鸬 npc
		return
	end

	--如果已接此任务
	if IsHaveMission( sceneId, selfId, x600019_g_MissionId ) > 0 then
		local bDone = x600019_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600019_g_SubmitInfo
		else
			strText = x600019_g_ContinueInfo
		end

		if bDone == 0 then												--任务未完成
			if GetNumText() == 1 then
				x600019_AcceptEnterCopyScene( sceneId, selfId )
			else
				BeginEvent( sceneId )
					AddText( sceneId, x600019_g_MissionName )
					x600019_AskEnterCopyScene( sceneId, selfId )
				EndEvent( )
				DispatchEventList( sceneId, selfId, targetId )
			end
		elseif bDone == 1 then											--任务已经完成
			BeginEvent( sceneId )
				AddText( sceneId, x600019_g_MissionName )
				AddText( sceneId, strText )
			EndEvent( )
			DispatchMissionDemandInfo( sceneId, selfId, targetId, x600019_g_ScriptId, x600019_g_MissionId, bDone )
		end
	--Th鯽 m鉵任务接收条件
	elseif x600019_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600019_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600019_OnAccept( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--列举事件
--**********************************
function x600019_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600019_g_Name then		--判断该npc喧ng否喧ng对应任务to� 鸬 npc
		return
	end

   --如果已接此任务
	if IsHaveMission( sceneId, selfId, x600019_g_MissionId ) > 0 then
		AddNumText( sceneId, x600019_g_ScriptId, x600019_g_MissionName,3,-1 )
	end
end

--**********************************
--检测Ti猵 th跫�
--**********************************
function x600019_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600019_g_MarketScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--询问玩家喧ng否要进入副本
--**********************************
function x600019_AskEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600019_g_MissionId ) <= 0 then	-- 没有任务
		return
	end

	local missionInfo
	if random(2) == 1 then
		missionInfo = format( "    Th鄋h ph� n鄖 t� tr呔c t緄 nay an ninh tr t� r t痶, nh遪g g 疴y kh鬾g bi猼 c� b鱪 l遳 manh du th馽 t� 疴u 皙n ph鋓 tr鬾g ch� v鄌 tay ngh� c黙 c醕 h� th鬷" )
	else
		missionInfo = format( "    An ninh c黙 ch� l� r quan tr鱪g, c醕 h� h銀 餴 lo vi甤 n鄖 餴, nh靚 th b鱪 l遳 manh l� gi猼 ch猼 h猼 kh鬾g tha" )
	end

	AddText( sceneId, missionInfo )
	AddText( sceneId, "#{M_MUBIAO}" )
	AddText( sceneId, "    Ti陁 di畉 t c� b鱪 l遳 manh 醕 b�" )
	AddNumText( sceneId, x600019_g_ScriptId, "衖 v鄌 ch�", 10, 1 )
end

--**********************************
--Ti猵 th�
--**********************************
function x600019_OnAccept( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x600019_g_MissionId ) == 0 then					--没有任务才可以走这里
		if GetLevel( sceneId, selfId ) < 40 then
			CallScriptFunction( x600019_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Kh鬾g 瘘 鹌ng c" )
			return
		end

		--加入任务到玩家列表
		AddMission( sceneId, selfId, x600019_g_MissionId, x600019_g_ScriptId, 1, 0, 0 )	-- kill、area、item
		if IsHaveMission( sceneId, selfId, x600019_g_MissionId ) <= 0 then
			return
		end

		CallScriptFunction( x600019_g_MarketScript, "OnAccept", sceneId, selfId, targetId, x600019_g_ScriptId )
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600019_g_MissionId )
		SetMissionByIndex( sceneId, selfId, misIndex, x600019_g_MissionParam_KillNumber, x600019_g_TotalNeedKillBoss )

		--显示内容告诉玩家已经Ti猵 th巳挝�
		BeginEvent( sceneId )
			AddText( sceneId, x600019_g_MissionName )
			x600019_AskEnterCopyScene( sceneId, selfId )
			AddText( sceneId, "#rC醕 h� 疸 nh " .. x600019_g_MissionName )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
--玩家同意进入副本
--**********************************
function x600019_AcceptEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600019_g_MissionId ) > 0 then					--有任务才可以走这里
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600019_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x600019_g_Param_sceneid )

		--changed by xindefeng
		--副本新机制:无论什么原因,T読 未Ho鄋 t nhi甿 v龈北�,副本不对玩家身上to� 鸬 任务做任何改动(设置th b読或者删除任务),而玩家再进该副本时,都要重新初始化任务数据,而且副本都要重新创建		
		--if copysceneid > 0 then															--进过副本
		--	-- 只要T読 里面没有完成,就算th b読,C 重做
		--	x600019_NotifyFailTips( sceneId, selfId, "Nhi甿 v� th b読, h銀 b� 餴 v� nh l読" )
		--	return
		--end
		
		SetMissionByIndex( sceneId, selfId, misIndex, x600019_g_IsMissionOkFail, 0 )	--将任务to� 鸬 第0号数据设置为0,表示未完成to� 鸬 任务
		SetMissionByIndex( sceneId, selfId, misIndex, x600019_g_Param_sceneid, -1 )		--将任务to� 鸬 第3号数据设置为-1, 用于保存副本to� 鸬 场景号
		
		--add by xindefeng
		SetMissionByIndex( sceneId, selfId, misIndex, x600019_g_Param_killcount, 0 )	--将任务to� 鸬 第5号数据设置为0, 设置玩家杀死怪物数量为0
		
		x600019_MakeCopyScene( sceneId, selfId )
	end
end

--**********************************
--创建副本
--**********************************
function x600019_MakeCopyScene( sceneId, selfId )
	local mylevel = GetLevel( sceneId, selfId )

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, x600019_g_CopySceneMap )						--地图喧ng必须选取to� 鸬 ,而且必须T読 Config/SceneInfo.ini里配置好
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x600019_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x600019_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, x600019_g_CopySceneType )				--设置副本数据,这里将0号索引to� 鸬 数据设置为999,用于表示副本号999(数字自定义)
	LuaFnSetCopySceneData_Param( sceneId, 1, x600019_g_ScriptId )					--将1号数据设置为副本场景事件脚本号
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							--设置定时器调用次数
	LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							--设置副本入口场景号, 初始化
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							--设置副本关闭标志, 0开放,1关闭
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							--设置离开倒计时次数
	LuaFnSetCopySceneData_Param( sceneId, 7, 0 )							--杀死Bossto� 鸬 数量

	local PlayerMaxLevel = GetHumanMaxLevelLimit() --modi:lby20071127
	
	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end

	LuaFnSetSceneLoad_Area( sceneId, x600019_g_Exit )
	LuaFnSetSceneLoad_Monster( sceneId, "jishi_monster_" .. iniLevel .. ".ini" )

	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --c别差,CopyScene_LevelGap T読  scene.lua 中赋值

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--初始化完成后调用创建副本函数
	if bRetSceneID > 0 then
		x600019_NotifyFailTips( sceneId, selfId, "D竎h chuy琻 th鄋h c鬾g!" )
	else
		x600019_NotifyFailTips( sceneId, selfId, "S� l唼ng b鋘 sao 疸 皙n gi緄 h課, 皤 ngh� l醫 n鎍 th� l読!" )
	end

end

--**********************************
--副本事件
--**********************************
function x600019_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )					--设置副本入口场景号
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then
		return
	end

	if LuaFnIsObjValid( sceneId, leaderObjId ) ~= 1 then					-- 处于无法执行逻辑to� 鸬 状态
		return
	end

	if IsHaveMission( sceneId, leaderObjId, x600019_g_MissionId ) > 0 then			--有任务才可以走这里
		local misIndex = GetMissionIndexByID( sceneId, leaderObjId, x600019_g_MissionId )

		--将任务to� 鸬 第2号数据设置为副本to� 鸬 场景号
		SetMissionByIndex( sceneId, leaderObjId, misIndex, x600019_g_Param_sceneid, destsceneId )
		NewWorld( sceneId, leaderObjId, destsceneId, x600019_g_Fuben_X, x600019_g_Fuben_Z )
	end
end

--**********************************
--有玩家进入副本事件
--**********************************
function x600019_OnPlayerEnter( sceneId, selfId )
	--add by xindefeng
	if IsHaveMission( sceneId, selfId, x600019_g_MissionId ) == 0 then				--如果进入副本前删除任务,则直接传送回
		x600019_NotifyFailTips( sceneId, selfId, "C醕 h� ch遖 nh nhi甿 v� n鄖." )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--取 餴琺进入副本时所T読 场景号
		NewWorld( sceneId, selfId, oldsceneId, x600019_g_Back_X, x600019_g_Back_Z )
		return
	end
end

--**********************************
--有玩家T読 副本中死亡事件
--**********************************
function x600019_OnHumanDie( sceneId, selfId, killerId )
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( sceneId )

	-- 任务人死亡,Nhi甿 v� th b読,游戏结束
	if leaderguid == LuaFnGetGUID( sceneId, selfId ) then
		x600019_OnAbandon( sceneId, selfId )
	end
end

--**********************************
--放弃
--**********************************
function x600019_OnAbandon( sceneId, selfId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600019_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x600019_g_Param_sceneid )

	--删除玩家任务列表中对应to� 鸬 任务
	CallScriptFunction( x600019_g_MarketScript, "OnAbandon", sceneId, selfId )

	if sceneId == copyscene then											--如果T読 副本里删除任务,则直接传送回
		x600019_NotifyFailTips( sceneId, selfId, "Nhi甿 v� th b読" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--取 餴琺副本入口场景号		
		NewWorld( sceneId, selfId, oldsceneId, x600019_g_Back_X, x600019_g_Back_Z )
	end
end

--**********************************
-- 回城,只有Th鄋h ph� 任务副本可以调用此接口
--**********************************
function x600019_BackToCity( sceneId, selfId )
	--changed by xindefeng
	--副本新机制:见x600019_AcceptEnterCopyScene()
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )					--取 餴琺进入副本时所T読 场景号
	CallScriptFunction( 400900, "TransferFunc", sceneId, selfId, oldsceneId, x600019_g_Back_X, x600019_g_Back_Z )	--传送
	
	--LuaFnSetCopySceneData_Param( sceneId, 4, 1 )							-- 设置副本关闭标志
end

--**********************************
--继续
--**********************************
function x600019_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600019_g_MissionName )
		AddText( sceneId, x600019_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600019_g_ScriptId, x600019_g_MissionId )
end

--**********************************
--检测喧ng否可以提交
--**********************************
function x600019_CheckSubmit( sceneId, selfId, selectRadioId )
	--判断任务喧ng否已经完成
	local ret = CallScriptFunction( x600019_g_MarketScript, "CheckSubmit", sceneId, selfId )
	return ret
end

--**********************************
--提交
--**********************************
function x600019_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600019_g_Name then		--判断该npc喧ng否喧ng对应任务to� 鸬 npc
		return
	end

	if x600019_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600019_g_MarketScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--杀死怪物或玩家
--**********************************
function x600019_OnKillObject( sceneId, selfId, objdataId, objId )
	--喧ng否喧ng所C to� 鸬 副本
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x600019_g_CopySceneType then
		return
	end

	--喧ng否喧ng副本
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--副本关闭标志
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														--如果副本已经被置成关闭状态,则杀怪无效
		return
	end

	local monstercount = LuaFnGetCopySceneData_Param( sceneId, 7 )
	monstercount = monstercount + 1
	LuaFnSetCopySceneData_Param( sceneId, 7, monstercount )						--杀死Bossto� 鸬 数量

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600019_g_MissionId )
	SetMissionByIndex( sceneId, selfId, misIndex, x600019_g_Param_killcount, monstercount )		--设置杀死Bossto� 鸬 数量

	local strText = format( "Gi猼 ch猼 羉 B�: %d/%d", monstercount, x600019_g_TotalNeedKillBoss )
	x600019_NotifyFailTips( sceneId, selfId, strText )

	if monstercount >= x600019_g_TotalNeedKillBoss then
		SetMissionByIndex( sceneId, selfId, misIndex, x600019_g_IsMissionOkFail, 1 )			--设置Nhi甿 v� ho鄋 th鄋h
		x600019_NotifyFailTips( sceneId, selfId, "秀 饀眎 b鱪 du c鬾 g鈟 s� � ch�, nhi甿 v� ho鄋 th鄋h" )

		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )							-- 设置副本关闭标志

		strText = format( "Sau %d ph鷗 s� chuy琻 皙n v� tr� c豠 ra v鄌", x600019_g_CloseTick * x600019_g_TickTime )

		x600019_NotifyFailTips( sceneId, selfId, strText )
	end
end

--**********************************
--进入区域事件
--**********************************
function x600019_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--道具改变
--**********************************
function x600019_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--副本场景定时器事件
--**********************************
function x600019_OnCopySceneTimer( sceneId, nowTime )

	--副本时钟读取及设置
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						--取 餴琺已经执行to� 鸬 定时次数
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							--设置新to� 鸬 定时器调用次数

	local i = 0

	-- 将 Boss 加强
	if TickCount == 1 then
		local monstercount = GetMonsterCount( sceneId )
		local monsterId
		for i = 0, monstercount - 1 do
			-- 找到 Boss = monsterId
			monsterId = GetMonsterObjID( sceneId, i )
			local GroupID = GetMonsterGroupID( sceneId, monsterId )
			if GroupID == x600019_g_NeedMonsterGroupID then
				local flag = { 0, 0, 0 }
				local pAttack = 0													-- 物理攻击
				local pDefense = 0													-- 物理防御
				local mDefense = 0													-- 内功防御
				local maxHP = 0														-- 气血值
				if random(2) == 1 then
					flag[random(getn(flag))] = 1
				else
					flag = { 1, 1, 1 }
					flag[random(getn(flag))] = 0
				end

				if flag[1] ~= 0 then												-- 物理攻击
					pAttack = LuaFnGetBaseAttackPhysics( sceneId, monsterId )
					pAttack = floor( pAttack * ( 8 + random(4) ) / 100 )
					pAttack = pAttack + LuaFnGetLifeTimeAttrRefix_AttackPhysics( sceneId, monsterId )
					LuaFnSetLifeTimeAttrRefix_AttackPhysics( sceneId, monsterId, pAttack )
				end

				if flag[2] ~= 0 then												-- 物理防御,内功防御
					pDefense = LuaFnGetBaseDefencePhysics( sceneId, monsterId )
					pDefense = floor( pDefense * ( 8 + random(4) ) / 100 )
					pDefense = pDefense + LuaFnGetLifeTimeAttrRefix_DefencePhysics( sceneId, monsterId )
					LuaFnSetLifeTimeAttrRefix_DefencePhysics( sceneId, monsterId, pDefense )

					mDefense = LuaFnGetBaseDefenceMagic( sceneId, monsterId )
					mDefense = floor( mDefense * ( 8 + random(4) ) / 100 )
					mDefense = mDefense + LuaFnGetLifeTimeAttrRefix_DefenceMagic( sceneId, monsterId )
					LuaFnSetLifeTimeAttrRefix_DefenceMagic( sceneId, monsterId, mDefense )
				end

				if flag[3] ~= 0 then
					maxHP = LuaFnGetMaxBaseHp( sceneId, monsterId )
					maxHP = floor( maxHP * ( 8 + random(4) ) / 100 )
					maxHP = maxHP + LuaFnGetLifeTimeAttrRefix_MaxHP( sceneId, monsterId )
					LuaFnSetLifeTimeAttrRefix_MaxHP( sceneId, monsterId, maxHP )
					RestoreHp( sceneId, monsterId )
				end
			end
		end
	end

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )

	local leaderguid = LuaFnGetCopySceneData_TeamLeader( sceneId )

	local mems = {}
	for i = 0, membercount - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	--副本关闭标志
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	-- 没有人to� 鸬 时候关闭副本
	if leaveFlag == 1 then															--C 离开
		--离开倒计时间to� 鸬 读取和设置
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount >= x600019_g_CloseTick then										--倒计时间到,大家都出去吧
			local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )			--取 餴琺副本入口场景号

			--将当前副本场景里to� 鸬 所有人传送回原来进入时候to� 鸬 场景
			for i = 0, membercount - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					NewWorld( sceneId, mems[i], oldsceneId, x600019_g_Back_X, x600019_g_Back_Z )
				end
			end
		else
			--通知当前副本场景里to� 鸬 所有人,场景关闭倒计时间
			local strText = format( "C醕 h� s� r秈 kh鰅 n絠 n鄖 trong v騨g %d gi鈟 n鎍", ( x600019_g_CloseTick - leaveTickCount ) * x600019_g_TickTime )

			for i = 0, membercount - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x600019_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount >= x600019_g_LimitTotalHoldTime then									--副本总时间限制到了
		--此处设置副本任务有时间限制to� 鸬 情况,当时间到后处理...
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		local strText = format( "C醕 h� s� r秈 kh鰅 n絠 n鄖 trong v騨g %d gi鈟 n鎍", ( x600019_g_CloseTick - leaveTickCount ) * x600019_g_TickTime )

		for i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				if leaderguid == LuaFnGetGUID( sceneId, mems[i] ) then
					x600019_NotifyFailTips( sceneId, mems[i], "Th秈 h課 疸 皙n nhi甿 v� th b読" )
				end

				x600019_NotifyFailTips( sceneId, mems[i], strText )
			end
		end

		--设置副本关闭标志
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	end
end

function x600019_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
