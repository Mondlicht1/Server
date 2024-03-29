--副本任务
--救援门派大难

--************************************************************************
--MisDescBegin

--脚本号
x600026_g_ScriptId = 600026

--任务号
x600026_g_MissionId = 1110

--目标NPC
x600026_g_Name = "恤ng Ph� Dung"

--衅ng c nhi甿 v� 
x600026_g_MissionLevel = 10000

--任务归类
x600026_g_MissionKind = 50

--喧ng否喧ngTinh英任务
x600026_g_IfMissionElite = 0

--********下面几项喧ng动态显示to� 鸬 内容,用于T読 任务列表中动态显示任务情况******
--角色Mission变量� 餴琺�

x600026_g_IsMissionOkFail			=0	--0 Nhi甿 v� ho鄋 th鄋h标记
x600026_g_MissionParam_SubId		=1	--1 子任务脚本号存放位置
x600026_g_Param_sceneid				=2	--2 当前副本任务to� 鸬 场景号
x600026_g_MissionParam_Phase		=3	--3 阶段号 此号用于区分当前任务UIto� 鸬 描述信息
x600026_g_MissionParam_MasterId		=4	--4 门派掌门to� 鸬 NPCId号
x600026_g_MissionParam_MenpaiIndex	=5	--5 某门派to� 鸬 索引,分别用于查找字符串列表中某门派to� 鸬 名称[客户端]以及任务与门派相关to� 鸬 信息[服务器端]

--循环任务to� 鸬 数据索引,里面存着已做to� 鸬 环数
x600026_g_MissionRound = 55
--**********************************以上喧ng动态****************************

--任务文本描述
x600026_g_MissionName = "Nhi甿 v� khu猚h tr呓ng"
x600026_g_MissionInfo = ""													--任务描述
x600026_g_MissionTarget = "%f"												--M鴆 ti陁 nhi甿 v�
x600026_g_ContinueInfo = "    Nhi甿 v� c黙 c醕 h� v鏽 ch遖 ho鄋 th鄋h �?"						--未Ho鄋 t nhi甿 v鴗o� 鸬 npc对话
x600026_g_SubmitInfo = "    S� t靚h ti猲 tri琻 nh� th� n鄌 r癷?"								--完成未提交时to� 鸬 npc对话
x600026_g_MissionComplete = "    R t痶, L h鄋h 鸬ng giang h� n鄖 ai ai c鹡g bi猼, kh鬾g h� danh bang ta 鹫i 鹧c 鹫i ngh頰. "	--Ho鄋 t nhi甿 v鴑pc说话to� 鸬 话

x600026_g_StrForePart = 3

--用来保存字符串格式化to� 鸬 数据
x600026_g_FormatList = {
	"",
	"    T靘 %1n 瓞 c製 vi畁 cho 鹫i n課 c黙 m鬾 ph醝 n鄖",
	"    H� t痭g %2s 甬 t� ra kh鰅 khu c 鸶a",
}

x600026_g_StrList = {
	[0] = "Thi猽 L鈓",
	[1] = "Minh Gi醥",
	[2] = "C醝 Bang",
	[3] = "V� 衋ng",
	[4] = "Nga My",
	[5] = "Thi阯 Long T� ",
	[6] = "Tinh T鷆",
	[7] = "Thi阯 S絥",
	[8] = "Ti陁 Dao",
}

x600026_g_MenpaiInfo = {
	[0] = { Name = "Thi猽 L鈓",		NpcId = 1700008,	CopySceneName = "Th醦 L鈓",		Type = FUBEN_TALIN1,		    Map = "tongrenxiang_2.nav",		Exit = "tongrenxiang_2_area.ini",	Monster = "tongrenxiang_2_monster_%d.ini", 	EntrancePos = { x = 28, z = 52 },	BackPos = { x = 38, z = 97 }, },
	[1] = { Name = "Minh Gi醥",		NpcId = 1700009,	CopySceneName = "Quang Minh 鸬ng",	Type = FUBEN_GUANGMINGDONG1,	Map = "guangmingdong_2.nav",	Exit = "guangmingdong_2_area.ini",	Monster = "guangmingdong_2_monster_%d.ini", EntrancePos = { x = 19, z = 42 },	BackPos = { x = 97, z = 55 }, },
	[2] = { Name = "C醝 Bang",		NpcId = 1700010,	CopySceneName = "H r唼u",		Type = FUBEN_JIUJIAO1,			Map = "jiujiao_2.nav",			Exit = "jiujiao_2_area.ini",		Monster = "jiujiao_2_monster_%d.ini", 		EntrancePos = { x = 45, z = 47 },	BackPos = { x = 91, z = 99 }, },
	[3] = { Name = "V� 衋ng",		NpcId = 1700011,	CopySceneName = "Linh T韓h Phong",	Type = FUBEN_LINGXINGFENG1,		Map = "lingxingfeng_2.nav",		Exit = "lingxingfeng_2_area.ini",	Monster = "lingxingfeng_2_monster_%d.ini", 	EntrancePos = { x = 42, z = 46 },	BackPos = { x = 77, z = 86 }, },
	[4] = { Name = "Nga My",		NpcId = 1700012,	CopySceneName = "朽o Hoa Tr",	Type = FUBEN_TAOHUAZHEN1,		Map = "taohuazhen_2.nav",		Exit = "taohuazhen_2_area.ini",		Monster = "taohuazhen_2_monster_%d.ini", 	EntrancePos = { x = 26, z = 46 },	BackPos = { x = 96, z = 73 }, },
	[5] = { Name = "Thi阯 Long T� ",	NpcId = 1700013,	CopySceneName = "Ch鈔 th醦",		Type = FUBEN_TADI1,				Map = "tadi_2.nav",				Exit = "tadi_2_area.ini",			Monster = "tadi_2_monster_%d.ini", 			EntrancePos = { x = 45, z = 48 },	BackPos = { x = 96, z = 67 }, },
	[6] = { Name = "Tinh T鷆",		NpcId = 1700014,	CopySceneName = "Ng� Th 械ng",	Type = FUBEN_WUSHENDONG1,		Map = "wushendong_2.nav",		Exit = "wushendong_2_area.ini",		Monster = "wushendong_2_monster_%d.ini", 	EntrancePos = { x = 14, z = 40 },	BackPos = { x = 142, z = 56 }, },
	[7] = { Name = "Thi阯 S絥",		NpcId = 1700015,	CopySceneName = "Chi猼 Mai Phong",	Type = FUBEN_ZHEMEIFENG1,		Map = "zhemeifeng_2.nav",		Exit = "zhemeifeng_2_area.ini",		Monster = "zhemeifeng_2_monster_%d.ini", 	EntrancePos = { x = 29, z = 49 },	BackPos = { x = 90, z = 45 }, },
	[8] = { Name = "Ti陁 Dao",		NpcId = 1700016,	CopySceneName = "C痗 鸶a",		Type = FUBEN_GUDI1,				Map = "gudi_2.nav",				Exit = "gudi_2_area.ini",			Monster = "gudi_2_monster_%d.ini", 			EntrancePos = { x = 42, z = 47 },	BackPos = { x = 124, z = 145 }, },
}

-- 通用Th鄋h ph� 任务脚本
x600026_g_CityMissionScript = 600001
x600026_g_ExpandScript = 600023

--任务奖励

--MisDescEnd
--************************************************************************


x600026_g_TickTime = 5					--回调脚本to� 鸬 时钟时间(单位:  gi鈟/次)
x600026_g_CloseTick = 3					--副本关闭前倒计时(单位: 次数)
x600026_g_NoUserTime = 120				--副本中没有人后可以继续保存to� 鸬 时间(单位:  gi鈟)

x600026_g_ProtegeGroup = 2				-- 被护送to� 鸬  NPC Group
x600026_g_PatrolId = 0					-- NPC 巡逻路径

--**********************************
--任务入口函数
--**********************************
function x600026_OnDefaultEvent( sceneId, selfId, targetId )
--	if GetName( sceneId, targetId ) ~= x600026_g_Name then		--判断该npc喧ng否喧ng对应任务to� 鸬 npc
--		return
--	end

	--如果已接此任务
	if IsHaveMission( sceneId, selfId, x600026_g_MissionId ) > 0 then
		local bDone = x600026_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600026_g_SubmitInfo
		else
			strText = x600026_g_ContinueInfo
		end

		local misIndex = GetMissionIndexByID( sceneId, selfId, x600026_g_MissionId )

		if bDone == 0 and GetMissionParam( sceneId, selfId, misIndex, x600026_g_IsMissionOkFail ) ~= 2 then		--任务未完成
			if GetNumText() == 1 then	-- 这里喧ng 餴琺击门派掌门
				x600026_AcceptEnterCopyScene( sceneId, selfId )
				return

--				BeginEvent( sceneId )
--					AddText( sceneId, x600026_g_MissionName )
--					AskEnterCopyScene( sceneId, selfId )
--				EndEvent( )
--				DispatchEventList( sceneId, selfId, targetId )
			end

			if GetNumText() == 2 then	-- 这里喧ng 餴琺击被救援弟子
				x600026_StartPatrol( sceneId, selfId, targetId )
				return
			end
		end

		BeginEvent( sceneId )
			AddText( sceneId, x600026_g_MissionName )
			AddText( sceneId, strText )
		EndEvent( )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600026_g_ScriptId, x600026_g_MissionId, bDone )

	--Th鯽 m鉵任务接收条件
	elseif x600026_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600026_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600026_OnAccept( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--列举事件
--**********************************
function x600026_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600026_g_Name then		--判断该npc喧ng否喧ng对应任务to� 鸬 npc
		return
	end

   --如果已接此任务
	if IsHaveMission( sceneId, selfId, x600026_g_MissionId ) > 0 then
		AddNumText( sceneId, x600026_g_ScriptId, x600026_g_MissionName,3,-1 )
	end
end

--**********************************
--检测Ti猵 th跫�
--**********************************
function x600026_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600026_g_ExpandScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--Ti猵 th�
--**********************************
function x600026_OnAccept( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x600026_g_MissionId ) == 0 then					--没有任务才可以走这里
		if GetLevel( sceneId, selfId ) < 40 then
			CallScriptFunction( x600026_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Kh鬾g 瘘 鹌ng c" )
			return
		end

		--加入任务到玩家列表
		AddMission( sceneId, selfId, x600026_g_MissionId, x600026_g_ScriptId, 0, 0, 0 )	-- kill、area、item
		if IsHaveMission( sceneId, selfId, x600026_g_MissionId ) <= 0 then
			return
		end

		SetMissionEvent( sceneId, selfId, x600026_g_MissionId, 4 ) -- 注册 x600026_OnLockedTarget 事件
		CallScriptFunction( x600026_g_ExpandScript, "OnAccept", sceneId, selfId, targetId, x600026_g_ScriptId )
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600026_g_MissionId )

		-- 随机m祎 c醝门派
		local MenpaiIndex = random( 0, getn(x600026_g_MenpaiInfo) )
		local MenpaiInfo = x600026_g_MenpaiInfo[MenpaiIndex]
		if not MenpaiInfo then
			x600026_NotifyFailTips( sceneId, selfId, "Sai s髏 nghi阭 tr鱪g!" )
			return
		end

		SetMissionByIndex( sceneId, selfId, misIndex, x600026_g_MissionParam_Phase, 1 )
		SetMissionByIndex( sceneId, selfId, misIndex, x600026_g_MissionParam_MasterId, MenpaiInfo.NpcId )
		SetMissionByIndex( sceneId, selfId, misIndex, x600026_g_MissionParam_MenpaiIndex, MenpaiIndex )

		local _, strNpcName, strNpcSceneDesc, nPosX, nPosZ = GetNpcInfoByNpcId(sceneId, MenpaiInfo.NpcId )

		--显示内容告诉玩家已经Ti猵 th巳挝�
		BeginEvent( sceneId )
			AddText( sceneId, x600026_g_MissionName )
			local missionInfo = format( "    %s g n課, ra l畁h cho c醕 h� c t痗 t靘 %s %s (%d, %d) 瓞 c製 vi畁, nh d呓ng uy danh cho b眓 bang.",
				MenpaiInfo.Name, strNpcSceneDesc, strNpcName, nPosX, nPosZ )

			AddText( sceneId, missionInfo )
			AddText( sceneId, "#rC醕 h� 疸 nh " .. x600026_g_MissionName )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
--当锁定m祎 c醝对象
--**********************************
function x600026_OnLockedTarget( sceneId, selfId, objId )
	if IsHaveMission( sceneId, selfId, x600026_g_MissionId ) < 1 then
		return		-- 没有该任务
	end
	
	-- 如果当前to� 鸬 Npc喧ng副本中to� 鸬 Npc,那么,不能再进入副本了
	--if LuaFnGetSceneType(sceneId) == 1  then
	--	return
	--end
	
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600026_g_MissionId )
	local MenpaiIndex = GetMissionParam( sceneId, selfId, misIndex, x600026_g_MissionParam_MenpaiIndex )
	local MenpaiInfo = x600026_g_MenpaiInfo[MenpaiIndex]
	if not MenpaiInfo then
		x600026_NotifyFailTips( sceneId, selfId, "Sai s髏 nghi阭 tr鱪g!" )
		return
	end

	local _, strNpcName, _noUse1, _noUse2, _noUse3, _noUse4, nSceneId = GetNpcInfoByNpcId( sceneId, MenpaiInfo.NpcId )	

	if ( GetName( sceneId, objId ) == strNpcName and  nSceneId == sceneId ) then							-- 掌门
		local missionInfo = format( "    M祎 疳m ng叨i kh鬾g r� th鈔 ph x鈓 ph誱 v鄌 v鵱g c 鸶a, v鈟 h鉳 甬 t� c黙 m鬾 ph醝 ch鷑g ta, 皤 ngh� c製 vi畁 m鬾 ph醝 ch鷑g ta" )

		TAddText( sceneId, missionInfo )
		TAddNumText( sceneId, x600026_g_ScriptId, "V鄌 v鵱g c 鸶a", 10, 1, x600026_g_ScriptId )
		return
	end

--	--喧ng否喧ng副本
--	local sceneType = LuaFnGetSceneType( sceneId )
--	if sceneType ~= 1 then
--		return
--	end

	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype == MenpaiInfo.Type then
		local GroupID = GetMonsterGroupID( sceneId, objId )
		-- 因为巡逻 NPC 被 餴琺中以后不会再次响应 餴琺击事件,所以这里不作额外处理
		if GroupID == x600026_g_ProtegeGroup then
			local PlayerGender = GetSex( sceneId, selfId )
			local rank

			if PlayerGender == 0 then
				rank = "N� hi畃"
			else
				rank = " c醕 h�"
			end

			local missionInfo = format( "    衋 t� %s c製 vi畁 t呓ng tr�, 鹫i ngh頰 c黙 qu� bang 皙n ch猼 c鹡g kh鬾g qu阯", rank )

			TAddText( sceneId, missionInfo )
			TAddNumText( sceneId, x600026_g_ScriptId, "H銀 theo t読 h� ph� v鈟", 10, 2, x600026_g_ScriptId )
			return
		end
	end
end

--**********************************
--玩家同意进入副本
--**********************************
function x600026_AcceptEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600026_g_MissionId ) > 0 then					--有任务才可以走这里
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600026_g_MissionId )

		-- 这里不把玩家传到上m祎 c醝场景,因为护送任务中,玩家m祎 旦离开场景
		-- 被护送to� 鸬  NPC 可能死亡,也可能走到终 餴琺,也可能副本已经设置为关闭标记
		-- 都可能导致玩家无意义 餴琺进入,所以m祎 旦同意进入副本,m祎 律进入新副本

		SetMissionByIndex( sceneId, selfId, misIndex, x600026_g_IsMissionOkFail, 0 )	--将任务to� 鸬 第0号数据设置为0,表示未完成to� 鸬 任务
		SetMissionByIndex( sceneId, selfId, misIndex, x600026_g_Param_sceneid, -1 )		--将任务to� 鸬 第2号数据设置为-1, 用于保存副本to� 鸬 场景号
		x600026_MakeCopyScene( sceneId, selfId )
	end
end

--**********************************
--开始进入护送过程
--**********************************
function x600026_StartPatrol( sceneId, selfId, targetId )
	local flag = LuaFnGetCopySceneData_Param( sceneId, 8 )
	if flag == 1 then															-- 已经开始护送
		return
	end

	local GroupID = GetMonsterGroupID( sceneId, targetId )
	if GroupID == x600026_g_ProtegeGroup then
		--启动该任务to� 鸬 任务时钟器
		StartMissionTimer( sceneId, selfId, x600026_g_MissionId )
		SetMissionEvent( sceneId, selfId, x600026_g_MissionId, 5 )
		SetPatrolId( sceneId, targetId, x600026_g_PatrolId )							-- 设置巡逻路径
		LuaFnSetCopySceneData_Param( sceneId, 8, 1 )							--标示已经开始护送
		SetUnitReputationID( sceneId, selfId, targetId, GetUnitReputationID( sceneId, selfId, selfId ) )
		SetMonsterFightWithNpcFlag( sceneId, targetId, 1 )				-- 打开允许怪物和怪物Cu礳 chi猲 to� 鸬 标记
		-- GetMonsterFightWithNpcFlag
	end
end

--**********************************
--创建副本
--**********************************
function x600026_MakeCopyScene( sceneId, selfId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600026_g_MissionId )
	local MenpaiIndex = GetMissionParam( sceneId, selfId, misIndex, x600026_g_MissionParam_MenpaiIndex )
	local MenpaiInfo = x600026_g_MenpaiInfo[MenpaiIndex]
	if not MenpaiInfo then
		x600026_NotifyFailTips( sceneId, selfId, "Sai s髏 nghi阭 tr鱪g!" )
		return
	end

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, MenpaiInfo.Map )						--地图喧ng必须选取to� 鸬 ,而且必须T読 Config/SceneInfo.ini里配置好
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x600026_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x600026_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, MenpaiInfo.Type )				--设置副本数据,这里将0号索引to� 鸬 数据设置为999,用于表示副本号999(数字自定义)
	LuaFnSetCopySceneData_Param( sceneId, 1, x600026_g_ScriptId )					--将1号数据设置为副本场景事件脚本号
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							--设置定时器调用次数
	LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							--设置副本入口场景号, 初始化
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							--设置副本关闭标志, 0开放,1关闭
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							--设置离开倒计时次数
	LuaFnSetCopySceneData_Param( sceneId, 6, 0 )							-- 餴琺击被护送者to� 鸬 次数
	LuaFnSetCopySceneData_Param( sceneId, 7, MenpaiIndex )					--标示这喧ng第几c醝场景
	LuaFnSetCopySceneData_Param( sceneId, 8, 0 )							--标示喧ng否已经开始护送

	local PlayerMaxLevel = GetHumanMaxLevelLimit() --modi:lby20071127

	local mylevel = GetLevel( sceneId, selfId )
	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end

	LuaFnSetSceneLoad_Area( sceneId, MenpaiInfo.Exit )
	LuaFnSetSceneLoad_Monster( sceneId, format( MenpaiInfo.Monster, iniLevel ) )

	LuaFnSetCopySceneData_Param( sceneId, CopyScene_LevelGap, mylevel - iniLevel ) --c别差,CopyScene_LevelGap T読  scene.lua 中赋值

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--初始化完成后调用创建副本函数
	if bRetSceneID > 0 then
		x600026_NotifyFailTips( sceneId, selfId, "D竎h chuy琻 th鄋h c鬾g!" )
	else
		x600026_NotifyFailTips( sceneId, selfId, "S� l唼ng b鋘 sao 疸 皙n gi緄 h課, 皤 ngh� l醫 n鎍 th� l読!" )
	end

end

--**********************************
--副本事件
--**********************************
function x600026_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )					--设置副本入口场景号
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- 处于无法执行逻辑to� 鸬 状态
		return
	end

	if IsHaveMission( sceneId, leaderObjId, x600026_g_MissionId ) > 0 then			--有任务才可以走这里
		local misIndex = GetMissionIndexByID( sceneId, leaderObjId, x600026_g_MissionId )
		local MenpaiIndex = GetMissionParam( sceneId, leaderObjId, misIndex, x600026_g_MissionParam_MenpaiIndex )
		local MenpaiInfo = x600026_g_MenpaiInfo[MenpaiIndex]
		if not MenpaiInfo then
			x600026_NotifyFailTips( sceneId, leaderObjId, "Sai s髏 nghi阭 tr鱪g!" )
			return
		end

		--将任务to� 鸬 第2号数据设置为副本to� 鸬 场景号
		SetMissionByIndex( sceneId, leaderObjId, misIndex, x600026_g_Param_sceneid, destsceneId )
		NewWorld( sceneId, leaderObjId, destsceneId, MenpaiInfo.EntrancePos.x, MenpaiInfo.EntrancePos.z )
	end
end

--**********************************
--有玩家进入副本事件
--**********************************
function x600026_OnPlayerEnter( sceneId, selfId )
	local MenpaiIndex = LuaFnGetCopySceneData_Param( sceneId, 7 )
	local MenpaiInfo = x600026_g_MenpaiInfo[MenpaiIndex]
	if not MenpaiInfo then
		x600026_NotifyFailTips( sceneId, selfId, "Sai s髏 nghi阭 tr鱪g!" )
		return
	end

	if IsHaveMission( sceneId, selfId, x600026_g_MissionId ) == 0 then				-- 如果进入副本前删除任务,则直接传送回
		x600026_NotifyFailTips( sceneId, selfId, "C醕 h� 疸 kh鬾g nh nhi甿 v� n鄖 t� tr呔c" )
		x600026_BackToCity( sceneId, selfId )
		return
	end
end

--**********************************
--有玩家T読 副本中死亡事件
--**********************************
function x600026_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--放弃
--**********************************
function x600026_OnAbandon( sceneId, selfId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600026_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x600026_g_Param_sceneid )

	--删除玩家任务列表中对应to� 鸬 任务
	CallScriptFunction( x600026_g_ExpandScript, "OnAbandon", sceneId, selfId )

	if sceneId == copyscene then											--如果T読 副本里删除任务,则直接传送回
		x600026_NotifyFailTips( sceneId, selfId, "Nhi甿 v� th b読!" )
		x600026_BackToCity( sceneId, selfId )
	end
end

--**********************************
-- 回城,只有Th鄋h ph� 任务副本可以调用此接口
--**********************************
function x600026_BackToCity( sceneId, selfId )
	local MenpaiIndex = LuaFnGetCopySceneData_Param( sceneId, 7 )
	local MenpaiInfo = x600026_g_MenpaiInfo[MenpaiIndex]
	if not MenpaiInfo then
		x600026_NotifyFailTips( sceneId, selfId, "Sai s髏 nghi阭 tr鱪g!" )
		return
	end

	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )					--取 餴琺副本入口场景号
	NewWorld( sceneId, selfId, oldsceneId, MenpaiInfo.BackPos.x, MenpaiInfo.BackPos.z )
end

--**********************************
--继续
--**********************************
function x600026_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600026_g_MissionName )
		AddText( sceneId, x600026_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600026_g_ScriptId, x600026_g_MissionId )
end

--**********************************
--检测喧ng否可以提交
--**********************************
function x600026_CheckSubmit( sceneId, selfId, selectRadioId )
	--判断任务喧ng否已经完成
	local ret = CallScriptFunction( x600026_g_ExpandScript, "CheckSubmit", sceneId, selfId )
	return ret
end

--**********************************
--提交
--**********************************
function x600026_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600026_g_Name then		--判断该npc喧ng否喧ng对应任务to� 鸬 npc
		return
	end

	if x600026_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600026_g_ExpandScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--杀死怪物或玩家
--**********************************
function x600026_OnKillObject( sceneId, selfId, objdataId, objId )
end

--**********************************
--进入区域事件
--**********************************
function x600026_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--道具改变
--**********************************
function x600026_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--副本场景定时器事件
--**********************************
function x600026_OnCopySceneTimer( sceneId, nowTime )

	--副本时钟读取及设置
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						--取 餴琺已经执行to� 鸬 定时次数
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							--设置新to� 鸬 定时器调用次数

	--副本关闭标志
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for i=0, membercount-1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	if leaveFlag == 1 then															--C 离开
		--离开倒计时间to� 鸬 读取和设置
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount >= x600026_g_CloseTick then										--倒计时间到,大家都出去吧
			--将当前副本场景里to� 鸬 所有人传送回原来进入时候to� 鸬 场景
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x600026_BackToCity( sceneId, mems[i] )
				end
			end
		else
			--通知当前副本场景里to� 鸬 所有人,场景关闭倒计时间
			local strText = format( "C醕 h� s� r秈 kh鰅 n絠 n鄖 trong v騨g %d gi鈟 n鎍", ( x600026_g_CloseTick - leaveTickCount ) * x600026_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x600026_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	end
end

--**********************************
--定时事件
--**********************************
function x600026_OnTimer( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600026_g_MissionId ) < 1 then
		return		-- 没有该任务
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600026_g_MissionId )

	local MenpaiIndex = LuaFnGetCopySceneData_Param( sceneId, 7 )
	local MenpaiInfo = x600026_g_MenpaiInfo[MenpaiIndex]
	if not MenpaiInfo then
		x600026_NotifyFailTips( sceneId, selfId, "Sai s髏 nghi阭 tr鱪g!" )
		return
	end

	--喧ng否喧ng副本
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		ResetMissionEvent( sceneId, selfId, x600026_g_MissionId, 5 )			-- 不再走此心跳
		return
	end

	--喧ng否喧ng所C to� 鸬 副本
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype == MenpaiInfo.Type then
		local monstercount = GetMonsterCount( sceneId )
		local i, monsterId, GroupID

		for i = 0, monstercount - 1 do
			monsterId = GetMonsterObjID( sceneId, i )
			GroupID = GetMonsterGroupID( sceneId, monsterId )
			-- 因为巡逻 NPC 被 餴琺中以后不会再次响应 餴琺击事件,所以这里不作额外处理
			if GroupID == x600026_g_ProtegeGroup then
				local x, z = GetLastPatrolPoint( sceneId, 0 )
				local npcX, npcZ = GetWorldPos( sceneId, monsterId )

				if (x - npcX) * (x - npcX) + (z - npcZ) * (z - npcZ) < 4 then	-- 离终 餴琺不到 2 米
					SetMissionByIndex( sceneId, selfId, misIndex, x600026_g_IsMissionOkFail, 1 )
					ResetMissionEvent( sceneId, selfId, x600026_g_MissionId, 5 )		-- 不再走此心跳
					ResetMissionEvent( sceneId, selfId, x600026_g_MissionId, 4 )		-- 不再让 餴琺击
					LuaFnDeleteMonster( sceneId, monsterId )
					LuaFnSetCopySceneData_Param( sceneId, 4, 1 )				-- 副本关闭标记
					x600026_NotifyFailTips( sceneId, selfId, "Nhi甿 v� ho鄋 th鄋h, h銀 quay v� th鄋h ph鴆 m畁h" )
				end

				return
			end
		end

		-- 被护送to� 鸬  NPC 死亡
		x600026_NotifyFailTips( sceneId, selfId, "Nhi甿 v� th b読!" )
		SetMissionByIndex( sceneId, selfId, misIndex, x600026_g_IsMissionOkFail, 2 )	-- Nhi甿 v� th b読
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	end

	-- 离开了副本或者被护送to� 鸬  NPC 死亡都停止走计时器
	ResetMissionEvent( sceneId, selfId, x600026_g_MissionId, 5 )						-- 不再走此心跳
end

function x600026_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
