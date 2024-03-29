-- 连环副本任务
-- 熔岩之地

--************************************************************************
--MisDescBegin

-- 脚本号
x050222_g_ScriptId = 050222

-- 任务号
x050222_g_MissionId = 1258					--1256 黄金之链--1257 玄佛珠--1258 熔岩之地

-- M鴆 ti陁 nhi甿 v� NPC
x050222_g_Name = "H� Duy畉"

--任务归类
x050222_g_MissionKind = 8

--衅ng c nhi甿 v� 
x050222_g_MissionLevel = 10000

-- 任务文本描述
x050222_g_MissionName = "Dung Nham Chi 懈a"
x050222_g_MissionInfo = "    "														-- 任务描述
x050222_g_MissionTarget = "    #{LLFBM_80918_3}"						-- M鴆 ti陁 nhi甿 v�
--x050222_g_ContinueInfo = "    "					-- 未Ho鄋 t nhi甿 v鴗o� 鸬 npc对话
x050222_g_SubmitInfo = "#{LLFB_80816_53}"										-- 提交时to� 鸬 答复
--x050222_g_MissionComplete = "   #{LLFB_80816_53}"	--Ho鄋 t nhi甿 v鴑pc说to� 鸬 话

x050222_g_IsMissionOkFail = 0														-- 0 号位置: 当前任务喧ng否完成(0未完成；1完成；2th b読)
x050222_g_IsKillBossFire = 1														-- 1 号位置: 杀死H鯽 Di璵 Y陁 Ma数量(0和1)
x050222_g_Param_sceneid = 3															-- 3 号位置: 当前任务数据to� 鸬 3位置设置为场景ID

-- 任务完成情况,内容动态刷新,从任务参数to� 鸬 第1位开始
x050222_g_Custom	= { {id="秀 gi猼 ch猼 #r  H鯽 Di璵 Y陁 Ma",num=1} }

--MisDescEnd
--************************************************************************

--x050222_g_huangjinzhilian = 40004453	--黄金之链
--x050222_g_heyuanxin = 40004460	--何悦to� 鸬 信
x050222_g_xuanfouzhu = 40004454	--玄佛珠

x050222_g_MonsterSuiCong = "Y陁 Ma T鵼 T鵱g"			--小怪妖魔随从
x050222_g_BossHuoYanYao = "H鯽 Di璵 Y陁 Ma"			-- bossH鯽 Di璵 Y陁 Ma

MonsterSuiCongIDTbl = {13240,13241,13242,13243,13244,13245,13246,13247,13248,13249}			--小怪妖魔随从
BossHuoYanYaoIDTbl = {13260,13261,13262,13263,13264,13265,13266,13267,13268,13269}		-- bossH鯽 Di璵 Y陁 Ma

x050222_g_BossHuoYanYaoPos ={67,48}

x050222_g_MonsterSuiCongPos = {{187,	176},{172,	187},{187,	165},{164,	174},{148,	185},{152,	193},{144,	160},{208,	154},{151,	174},{134,	155},
{181,	168},{177,	146},{143,	128},{153,	124},{151,	113},{171,	117},{187,	94},{191,	80},{204,	97},{212,	102},
{207,	60},{191,	54},{184,	61},{162,	49},{152,	53},{143,	77},{149,	72},{147,	77},{106,	214},{97,	218},
{89,	202},{78,	208},{74,	204},{65,	212},{45,	203},{70,	174},{84,	164},{75,	151},{62,	150},{68,	142},
{58,	118},{69,	115},{89,	113},{98,	110},{91,	98},{54,	114},{43,	105},{52,	99},{69,	105}, --减少1c醝
{80,	84},{85,	81},{97,	89},{105,	76},{51,	80},{45,	73},{80,	74},{97,	62},{50,	60},{69,	55},
{73,	51},{44,	49},{56,	42},{48,	32},{43,	34},{67,	28},{77,	35},{85,	38},{102,	31},--减少1c醝
{106,	40},{108,	49},{72,	39},{186,	156},{147,	199},{137,	211},{130,	190},{139,	163},{211,	175},{216,	177},
{220,	167},{67,	88},{64,	91},{91,	130},{85,	133},{179,	101},--减少4c醝
{186,	104},{139,	91},{215,	88},{176,	53},{135,	96},{139,	52},{135,	56},{133,	206},--减少2c醝
{221,	198},{215,	192},{206,	199},{194,	205},{191,	213},{196,	193},{185,	198},{205,	182},{220,	184},{177,	207},
{188,	184},{172,	210},{172,	196},{226,	173},{175,	177},{177,	185},{197,	200},{205,	188},{224,	194},{182,	194},
{201,	170},{212,	171},{160,	196},{159,	210},{205,	160},{220,	159},{165,	182},{149,	215},{174,	165},{157,	179},
{143,	205},{137,	198},{144,	191},{155,	167},{178,	154},{195,	151},{213,	151},{135,	171},{142,	166},{157,	151},
{158,	60},{173,	64},{201,	45},{190,	34},{199,	66},{161,	77},{141,	83},{156,	107},{162,	119},{203,	89},
{177,	91},{195,	115},{134,	74},{144,	119},{162,	98},{190,	71},{141,	57},{211,	62},{159,	42},{196,	85},
{71,	45},{49,	50},{65,	58},{80,	54},{82,	46},{74,	60},{56,	60},{62,	42},{52,	40},{80,	33},
{84,	57},{43,	56},{46,	38},{63,	51},{68,	65},{58,	68},{85,	66},{94,	51},{71,	75},{53,	88},
{102,	210},{91,	215},{71,	195},{62,	214},{51,	203},{66,	184},{84,	157},{52,	211},{77,	169},{76,	134},
{214,	189},{221,	187},{207,	197},{217,	197},{201,	202},{221,	204},{208,	209},{215,	210}--加8c醝
}

x050222_g_NumText_Main = 1					-- 接任务to� 鸬 选项
x050222_g_NumText_EnterCopyScene = 2		-- 要求进入副本to� 鸬 选项

x050222_g_CopySceneMap = "huomuchang.nav"
x050222_g_CopySceneArea = "huomuchang_area.ini"
x050222_g_CopySceneMonsterIni = "huomuchang_monster.ini"

x050222_g_CopySceneType = FUBEN_RONGYANZHIDI		-- 副本类型,定义T読 ScriptGlobal.lua里面
x050222_g_LimitMembers = 1					-- 可以进副本to� 鸬 最小队伍人数
x050222_g_TickTime = 5						-- 回调脚本to� 鸬 时钟时间(单位:  gi鈟/次)
x050222_g_LimitTotalHoldTime = 360			-- 副本可以存活to� 鸬 时间(单位: 次数),如果此时间到了,则任务将会th b読
x050222_g_CloseTick = 6						-- 副本关闭前倒计时(单位: 次数)
x050222_g_NoUserTime = 30					-- 副本中没有人后可以继续保存to� 鸬 时间(单位:  gi鈟)

x050222_g_Fuben_X = 217
x050222_g_Fuben_Z = 221
x050222_g_Back_X = 295
x050222_g_Back_Z = 68

x050222_g_TakeTimes = 10											-- 每天最多L頽h 次数
--**********************************
-- 任务入口函数
--**********************************
function x050222_OnDefaultEvent( sceneId, selfId, targetId )	--  餴琺击该任务后执行此脚本
	if GetName( sceneId, targetId ) ~= x050222_g_Name then		-- 判断该npc喧ng否喧ng对应任务to� 鸬 npc
		return
	end

	local numText = GetNumText()

	if IsHaveMission( sceneId, selfId, x050222_g_MissionId ) == 0 then
		if numText == x050222_g_NumText_Main then
			if LuaFnGetAvailableItemCount( sceneId, selfId, x050222_g_xuanfouzhu ) < 1 then
				BeginEvent( sceneId )
				AddText( sceneId, "#{LLFB_80816_44}" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
			elseif x050222_CheckAccept( sceneId, selfId, targetId ) > 0 then
				--发送任务Ti猵 th毕允総o� 鸬 信息
				BeginEvent( sceneId )
					AddText( sceneId, "#{LLFB_80816_45}" )
				EndEvent( )
				DispatchMissionInfo( sceneId, selfId, targetId, x050222_g_ScriptId, x050222_g_MissionId )
			end
		end
	else
		if numText == x050222_g_NumText_Main then
			local bDone = x050222_CheckSubmit( sceneId, selfId )

			BeginEvent( sceneId )
				--AddText( sceneId, x050222_g_MissionName )
	
				if bDone == 1 then
					AddText( sceneId, x050222_g_SubmitInfo )
				else
						AddText( sceneId, "#{LLFB_80816_47}" )
						AddNumText( sceneId, x050222_g_ScriptId, "Dung Nham Chi 懈a", 10, x050222_g_NumText_EnterCopyScene )
						EndEvent( sceneId )
					DispatchEventList( sceneId, selfId, targetId )
					return
				end
			EndEvent( )
			--DispatchMissionDemandInfo( sceneId, selfId, targetId, x050222_g_ScriptId, x050222_g_MissionId, bDone )
			DispatchMissionContinueInfo( sceneId, selfId, targetId, x050222_g_ScriptId, x050222_g_MissionId )
		elseif numText == x050222_g_NumText_EnterCopyScene then
			x050222_AcceptEnterCopyScene( sceneId, selfId, targetId )
		end
	end
end

--**********************************
-- 不能有其他to� 鸬 任务,没有Tr� v� 0,有Tr� v� 1
--**********************************
function x050222_CheckConflictMission( sceneId, selfId )
	local missionId = 0

	if IsHaveMission( sceneId, selfId, 1256 ) > 0 then
		return 1
	end
	
	if IsHaveMission( sceneId, selfId, 1257 ) > 0 then
		return 1
	end

	return 0
end

--**********************************
-- 列举事件
--**********************************
function x050222_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x050222_g_Name then		--判断该npc喧ng否喧ng对应任务to� 鸬 npc
		return
	end

	-- 不能有其他to� 鸬 任务
	if x050222_CheckConflictMission( sceneId, selfId ) == 1 then
		return
	end

	AddNumText( sceneId, x050222_g_ScriptId, x050222_g_MissionName, 4, x050222_g_NumText_Main )
end

--**********************************
-- 检测Ti猵 th跫�
--**********************************
function x050222_CheckAccept( sceneId, selfId, targetId )
	-- 已经接过则不符合条件
	if IsHaveMission( sceneId, selfId, x050222_g_MissionId ) > 0 then
		return 0
	end

	-- 不能有其他to� 鸬 任务
	if x050222_CheckConflictMission( sceneId, selfId ) == 1 then
		return 0
	end
	
	-- m祎 天只能领 x050222_g_TakeTimes 次
	local DayTimes, oldDate, nowDate, takenTimes

	DayTimes = GetMissionData( sceneId, selfId, MD_XINSANHUAN_3_DAYTIME )
	oldDate = mod( DayTimes, 100000 )
	takenTimes = floor( DayTimes/100000 )

	nowDate = GetDayTime()
	if nowDate ~= oldDate then
		takenTimes = 0
		SetMissionData( sceneId, selfId, MD_XINSANHUAN_3_DAYTIME, nowDate )
	end

	--5次
	if takenTimes >= x050222_g_TakeTimes then
		x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_3}" )
		return 0
	end

	-- 检测玩家喧ng否符合刚放弃任务
	local iTime = GetMissionData( sceneId, selfId, MD_XINSANHUAN_3_LAST )			-- 上m祎 次放弃任务to� 鸬 时间(单位: m祎 刻钟)
	--begin modified by zhangguoxin 090208
	--local CurTime = GetHourTime()												-- 当前时间(单位: m祎 刻钟)
	local CurTime = GetQuarterTime()												-- 当前时间(单位: m祎 刻钟)
	--end modified by zhangguoxin 090208

	if iTime+1  >= CurTime then
		x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_4}" )
		return 0
	end

	-- 等c达到75
	if GetLevel(sceneId, selfId) < 75 then
		x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_5}" )
		return 0
	end

	-- 所有心法达到45
	if x050222_CheckAllXinfaLevel(sceneId, selfId, 45) == 0  then
		x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_5}" )
		return 0
	end

	-- 身上任务数量喧ng否达到上限20c醝
	if GetMissionCount( sceneId, selfId ) >= 20 then						
		x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_6}" )
		return 0
	end
	
	if LuaFnGetAvailableItemCount( sceneId, selfId, x050222_g_xuanfouzhu ) < 1 then
		x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_44}" )
		return 0
	end

	return 1
end

--**********************************
--Ti猵 th�
--**********************************
function x050222_OnAccept( sceneId, selfId, targetId )
	-- 加入任务到玩家列表
	AddMission( sceneId, selfId, x050222_g_MissionId, x050222_g_ScriptId, 1, 0, 0 )			-- kill、area、item
	if IsHaveMission( sceneId, selfId, x050222_g_MissionId ) <= 0 then
		return
	end

	-- m祎 天只能领 x050222_g_TakeTimes 次
	local DayTimes = GetMissionData( sceneId, selfId, MD_XINSANHUAN_3_DAYTIME )
	local takenTimes = floor( DayTimes/100000 )
	DayTimes = (takenTimes+1)*100000 + GetDayTime()
	SetMissionData( sceneId, selfId, MD_XINSANHUAN_3_DAYTIME, DayTimes )

--	SetMissionEvent( sceneId, selfId, x050222_g_MissionId, 4 ) -- 注册 OnLockedTarget 事件

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050222_g_MissionId )

	SetMissionByIndex( sceneId, selfId, misIndex, x050222_g_IsMissionOkFail, 0 )	-- 任务完成情况置为未完成
	SetMissionByIndex( sceneId, selfId, misIndex, x050222_g_IsKillBossFire, 0 )
	SetMissionByIndex( sceneId, selfId, misIndex, x050222_g_Param_sceneid, -1 )		-- 副本号置为 -1

	--显示内容告诉玩家已经Ti猵 th巳挝�
	BeginEvent( sceneId )
			AddText( sceneId, "#{LLFB_80816_47}" )
			AddNumText( sceneId, x050222_g_ScriptId, "Dung Nham Chi 懈a", 10, x050222_g_NumText_EnterCopyScene )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- 请求进入副本场景
--**********************************
function x050222_AcceptEnterCopyScene( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x050222_g_MissionId ) > 0 then					-- 有任务才可以走这里
		local misIndex = GetMissionIndexByID( sceneId, selfId, x050222_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x050222_g_Param_sceneid )
		if copysceneid >= 0 then												-- 进过副本
		-- 将自己传送到副本场景
			if GetMissionParam( sceneId, selfId, misIndex, x050222_g_IsMissionOkFail ) == 2 then
				x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_46}" )--提示任务th b読
			elseif IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				NewWorld( sceneId, selfId, copysceneid, x050222_g_Fuben_X, x050222_g_Fuben_Z )
			else
				x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_46}" )--提示任务th b読
			end
			return
		end

		if LuaFnHasTeam( sceneId, selfId ) == 0 then
			x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_48}" )
			return
		end

		if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
			x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_10}" )
			return
		end
		
		local teamMemberCount = GetTeamMemberCount(sceneId, selfId);
		local nearMemberCount = GetNearTeamCount(sceneId, selfId);
		if not nearMemberCount or nearMemberCount < x050222_g_LimitMembers then
			x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_49}" )
			return
		end

		if not teamMemberCount or teamMemberCount ~= nearMemberCount then
			x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_12}" )
			return
		end
		
		local outmessage = "#{FB0}"
		local issatisfy = 1 --喧ng否Th鯽 m鉵条件
		local memberID = 0
		local isAccept = 0 --喧ng否有人已经接了任务
		local Acceptmessage = "" --已经接了任务to� 鸬 提示与其他公共提示不同
		for	i = 0, nearMemberCount - 1 do
			memberID = GetNearTeamMember( sceneId, selfId, i )
			outmessage = outmessage.."#r#BTh鄋h vi阯  "..GetName(sceneId, memberID)
			if GetLevel(sceneId, memberID) >= 75 then
				outmessage = outmessage.."#{FB1}"
			else
				outmessage = outmessage.."#{FB2}"
				issatisfy = 0
			end
			
			if x050222_CheckAllXinfaLevel(sceneId, memberID, 45) == 1 then
				outmessage = outmessage.."#{FB3}"
			else
				outmessage = outmessage.."#{FB4}"
				issatisfy = 0
			end
			
			if IsHaveMission( sceneId, memberID, x050222_g_MissionId ) > 0 then
				local misIndex = GetMissionIndexByID( sceneId, memberID, x050222_g_MissionId )

			 	if GetMissionParam( sceneId, memberID, misIndex, x050222_g_IsMissionOkFail ) == 0 then
			 		if GetMissionParam( sceneId, memberID, misIndex, x050222_g_Param_sceneid ) == -1 then
						outmessage = outmessage.."#{FB5}"
					else
						outmessage = outmessage.."#{FB6}"
						issatisfy = 0
						
						if isAccept == 0 then
							Acceptmessage = "#G"..GetName(sceneId, memberID)
						else
							Acceptmessage = Acceptmessage.."#W, #G"..GetName(sceneId, memberID)
						end
						isAccept = 1
					end
				else
					outmessage = outmessage.."#{FB6}"
					issatisfy = 0
				end
			else
				outmessage = outmessage.."#{FB6}"
				issatisfy = 0
			end
		end
		
		if isAccept == 1 then
			Acceptmessage = "#{FB7}"..Acceptmessage.."#{FB8}"
			x050222_NotifyFailBox( sceneId, selfId, targetId, Acceptmessage)
			return
		end
		
		if issatisfy == 0 then
			x050222_NotifyFailBox( sceneId, selfId, targetId, outmessage)
			return
		end
		
		--计算副本中怪to� 鸬 等c....
		local mylevel = 0
		local memId
		local tempMemlevel = 0
		local level0 = 0
		local level1 = 0
	
		for	i = 0, nearMemberCount - 1 do
			memId = GetNearTeamMember(sceneId, selfId, i)
			tempMemlevel = GetLevel(sceneId, memId)
			level0 = level0 + (tempMemlevel ^ 4 )
			level1 = level1 + (tempMemlevel ^ 3 )
		end
	
		if level1 == 0 then
			mylevel = 0
		else
			mylevel = level0/level1
		end
	
		if nearMemberCount == -1 then
			mylevel = GetLevel(sceneId, selfId)
		end
	
		--计算等c段....
		local PlayerMaxLevel = GetHumanMaxLevelLimit()
		local iniLevel
		if mylevel < 10 then
			iniLevel = 1
		elseif mylevel < PlayerMaxLevel then
			iniLevel = floor((mylevel-75)/5) + 1
			if iniLevel < 0 then
				iniLevel = 1
			elseif iniLevel > 10 then
				iniLevel = 10
			end
		else
			iniLevel = 10
		end

		local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
		LuaFnSetSceneLoad_Map( sceneId, x050222_g_CopySceneMap )						-- 地图喧ng必须选取to� 鸬 ,而且必须T読 Config/SceneInfo.ini里配置好
		LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
		LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x050222_g_NoUserTime * 1000 )
		LuaFnSetCopySceneData_Timer( sceneId, x050222_g_TickTime * 1000 )
		LuaFnSetCopySceneData_Param( sceneId, 0, x050222_g_CopySceneType )				-- 设置副本数据,这里将0号索引to� 鸬 数据设置为999,用于表示副本号999(数字自定义)
		LuaFnSetCopySceneData_Param( sceneId, 1, x050222_g_ScriptId )					-- 将1号数据设置为副本场景事件脚本号
		LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							-- 设置定时器调用次数
		LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							-- 设置副本入口场景号, 初始化
		LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							-- 设置副本关闭标志, 0开放,1关闭
		LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							-- 设置离开倒计时次数
		LuaFnSetCopySceneData_Param( sceneId, 6, GetTeamId( sceneId, selfId ) )	-- 保存队伍号
		LuaFnSetCopySceneData_Param( sceneId, 7, mylevel )				-- 队伍to� 鸬 基础等c
		LuaFnSetCopySceneData_Param( sceneId, 8, iniLevel )				-- 
		LuaFnSetCopySceneData_Param( sceneId, 9, 0 )							-- 
		LuaFnSetCopySceneData_Param( sceneId, 10, 0 )							-- 
		LuaFnSetCopySceneData_Param( sceneId, 11, 0 )							-- 
		LuaFnSetCopySceneData_Param( sceneId, 12, 0 )							-- 
		LuaFnSetCopySceneData_Param( sceneId, 13, 0 )							-- 

		LuaFnSetSceneLoad_Area( sceneId, x050222_g_CopySceneArea )

		LuaFnSetSceneLoad_Monster( sceneId, x050222_g_CopySceneMonsterIni )

		local bRetSceneID = LuaFnCreateCopyScene( sceneId )						-- 初始化完成后调用创建副本函数
		if bRetSceneID > 0 then
			x050222_NotifyFailTips( sceneId, selfId, "D竎h chuy琻 th鄋h c鬾g!" )
			AuditXinSanHuanCreateFuben( sceneId, selfId, 3 )
		else
			x050222_NotifyFailTips( sceneId, selfId, "S� l唼ng b鋘 sao 疸 皙n gi緄 h課, 皤 ngh� l醫 n鎍 th� l読!" )
		end
	end
end

--**********************************
--副本事件
--**********************************
function x050222_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )				-- 设置副本入口场景号
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then											-- 找不到该玩家
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then		-- 处于无法执行逻辑to� 鸬 状态
		return
	end

	--取 餴琺玩家附近to� 鸬 队友数量(包括自己)
	local i, nearMemberCount, member
	local members = {}
	local validmembercount = 0

	nearMemberCount = GetNearTeamCount( sceneId, leaderObjId )
	for i = 0, nearMemberCount - 1 do
		member = GetNearTeamMember( sceneId, leaderObjId, i )
		if IsHaveMission( sceneId, member, x050222_g_MissionId ) > 0 then		-- 有任务
			validmembercount = validmembercount + 1
			members[validmembercount] = member
		end
	end

	local misIndex  
	for i = 1, validmembercount do 
		if IsHaveMission( sceneId, members[i], x050222_g_MissionId ) > 0 then
			misIndex = GetMissionIndexByID( sceneId, members[i], x050222_g_MissionId )
			if LuaFnIsCanDoScriptLogic( sceneId, members[i] ) == 1 then			-- 处于可以执行逻辑to� 鸬 状态
				--将任务to� 鸬 第1号数据设置为副本to� 鸬 场景号  
				SetMissionByIndex( sceneId, members[i], misIndex, x050222_g_Param_sceneid, destsceneId )
		--		SetMissionEvent( sceneId, members[i], x050222_g_MissionId, 0 )			-- 关心杀怪事件
				NewWorld( sceneId, members[i], destsceneId, x050222_g_Fuben_X, x050222_g_Fuben_Z )
			end  
		end
	end  
end  

--**********************************  
--有玩家进入副本事件  
--**********************************  
function x050222_OnPlayerEnter( sceneId, selfId )  
end

--**********************************
--obj死亡
--**********************************
function x050222_OnDie( sceneId, objId, selfId )--C醝 n鄖 selfId可能喧ng宠物
	local objType = GetCharacterType( sceneId, selfId )
	if objType == 3 then --如果喧ng宠物to� 鸬 话,把C醝 n鄖 ID设置成主人ID
		selfId = GetPetCreator( sceneId, selfId )
	end
	
	if selfId == -1 then
		return
	end
	
	--喧ng否喧ng副本
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--喧ng否喧ng所C to� 鸬 副本
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x050222_g_CopySceneType then
		return
	end

	--副本关闭标志
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														-- 如果副本已经被置成关闭状态,则杀怪无效
		return
	end

	--取 餴琺当前场景里to� 鸬 人数
	local num = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	
	for i = 0, num - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	--取 餴琺杀死怪物to� 鸬 name
	local szName = GetName( sceneId, objId )

	if szName == x050222_g_BossHuoYanYao then
		local misIndex = 0
		for i = 0, num - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then						-- 不T読 场景to� 鸬 不做此操作
				x050222_NotifyFailTips( sceneId, mems[i], "M鴆 ti畊 nhi甿 v�" )
				x050222_NotifyFailTips( sceneId, mems[i], "Gi猼 ch猼 "..x050222_g_BossHuoYanYao..": 1/1" )
				if IsHaveMission( sceneId, mems[i], x050222_g_MissionId ) > 0 then
					misIndex = GetMissionIndexByID( sceneId, mems[i], x050222_g_MissionId )
					SetMissionByIndex( sceneId, mems[i], misIndex, x050222_g_IsKillBossFire, 1 )
					SetMissionByIndex( sceneId, mems[i], misIndex, x050222_g_IsMissionOkFail, 1 )	-- 任务完成
				end
			end
		end

		local BroadcastMsg = "#W#{_INFOUSR$N}#{LLFB_80816_51}#{LLFB_80816_52}"
		BroadcastMsg = gsub( BroadcastMsg, "%$N", GetName( sceneId, selfId ) )
		BroadMsgByChatPipe( sceneId, selfId, BroadcastMsg, 4 )
		
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )--设置离开场景
	end
end

--**********************************
--杀死怪物或玩家
--**********************************
function x050222_OnKillObject( sceneId, selfId, objdataId, objId )						-- 参数意思: 场景号、玩家objId、怪物表位置号、怪物objId
end

--**********************************
--有玩家T読 副本中死亡事件
--**********************************
function x050222_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--离开副本
--**********************************
function x050222_Exit( sceneId, selfId )
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				-- 取 餴琺副本入口场景号
	NewWorld( sceneId, selfId, oldsceneId, x050222_g_Back_X, x050222_g_Back_Z )
end

--**********************************
--继续
--**********************************
function x050222_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x050222_g_MissionName )
		AddText( sceneId, "T痶 ti猵 t鴆" )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x050222_g_ScriptId, x050222_g_MissionId )
end

--**********************************
--放弃
--**********************************
function x050222_OnAbandon( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050222_g_MissionId ) == 0 then
		return
	end
	
	--C 扣除玄佛珠,只扣m祎 c醝
	if LuaFnDelAvailableItem( sceneId, selfId, x050222_g_xuanfouzhu, 1 ) > 0 then
		local misIndex = GetMissionIndexByID( sceneId, selfId, x050222_g_MissionId )
		local copyscene = GetMissionParam( sceneId, selfId, misIndex, x050222_g_Param_sceneid )
	
		-- 设置放弃连环任务to� 鸬 时间
		--begin modified by zhangguoxin 090208
		--local CurTime = GetHourTime()											-- 当前时间
		local CurTime = GetQuarterTime()											-- 当前时间
		--end modified by zhangguoxin 090208
		SetMissionData( sceneId, selfId, MD_XINSANHUAN_3_LAST, CurTime )
	
		--删除玩家任务列表中对应to� 鸬 任务
		DelMission( sceneId, selfId, x050222_g_MissionId )
		
		--喧ng否喧ng所C to� 鸬 副本
		local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	
		if sceneId == copyscene and fubentype == x050222_g_CopySceneType then											-- 如果T読 副本里删除任务,则直接传送回
			x050222_NotifyFailTips( sceneId, selfId, "Nhi甿 v� th b読!" )
			local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		-- 取 餴琺副本入口场景号
			NewWorld( sceneId, selfId, oldsceneId, x050222_g_Back_X, x050222_g_Back_Z )
		end
	end
end

--**********************************
--副本场景定时器事件
--**********************************
function x050222_OnCopySceneTimer( sceneId, nowTime )
	--副本时钟读取及设置
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						-- 取 餴琺已经执行to� 鸬 定时次数
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							-- 设置新to� 鸬 定时器调用次数

	--副本关闭标志
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for i = 0, membercount - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

--	local LevelGap = LuaFnGetCopySceneData_Param( sceneId, CopyScene_LevelGap )

	if leaveFlag == 1 then															-- C 离开
		--离开倒计时间to� 鸬 读取和设置
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount >= x050222_g_CloseTick then										-- 倒计时间到,大家都出去吧
			--将当前副本场景里to� 鸬 所有人传送回原来进入时候to� 鸬 场景
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
					x050222_Exit( sceneId, mems[i] )
				end
			end
		else
			--通知当前副本场景里to� 鸬 所有人,场景关闭倒计时间
			local strText = format( "B課 s� r秈 kh鰅 hi畁 tr叨ng sau %d gi鈟!", ( x050222_g_CloseTick - leaveTickCount ) * x050222_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
					x050222_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount == x050222_g_LimitTotalHoldTime then									-- 副本总时间限制到了
		--此处设置副本任务有时间限制to� 鸬 情况,当时间到后处理...
		local misIndex = 0
		for	i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
				x050222_NotifyFailTips( sceneId, mems[i], "秀 h猼 th秈 gian, r秈 c鋘h..." )
				if IsHaveMission( sceneId, mems[i], x050222_g_MissionId ) > 0 then
					misIndex = GetMissionIndexByID( sceneId, mems[i], x050222_g_MissionId )
					if GetMissionParam( sceneId, mems[i], misIndex, x050222_g_IsMissionOkFail ) ~= 1 then
						SetMissionByIndex( sceneId, mems[i], misIndex, x050222_g_IsMissionOkFail, 2 )	-- 如果没有完成就设置为th b読
					end
				end
				x050222_Exit( sceneId, mems[i] )
			end
		end
		--设置副本关闭标志
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	elseif TickCount == 1 then									-- 刷怪
		local mylevel = LuaFnGetCopySceneData_Param( sceneId, 7 )
		local iniLevel = LuaFnGetCopySceneData_Param( sceneId, 8 )

		local HuoYanYaoID = BossHuoYanYaoIDTbl[1]
		if BossHuoYanYaoIDTbl[iniLevel] then
			HuoYanYaoID = BossHuoYanYaoIDTbl[iniLevel]
		end
		
		local SuiCongID = MonsterSuiCongIDTbl[1]
		if MonsterSuiCongIDTbl[iniLevel] then
			SuiCongID = MonsterSuiCongIDTbl[iniLevel]
		end

		local monsterID = LuaFnCreateMonster( sceneId, HuoYanYaoID, x050222_g_BossHuoYanYaoPos[1], x050222_g_BossHuoYanYaoPos[2], 14, 269, 050222 )
		SetLevel( sceneId, monsterID, mylevel+3 )--等c比m祎 般小怪高3c
		SetCharacterName( sceneId, monsterID, x050222_g_BossHuoYanYao )
		MonsterTalk(sceneId,monsterID,"Dung Nham Chi 懈a", "Ng呓i d醡 x鬾g v鄌 n絠 n鄖, c醕 ng呓i s� b� thi陁 th鄋h tro b鴌! Ha ha ha...")
		
		for i = 1, getn( x050222_g_MonsterSuiCongPos ) do
			monsterID = LuaFnCreateMonster( sceneId, SuiCongID, x050222_g_MonsterSuiCongPos[i][1], x050222_g_MonsterSuiCongPos[i][2], 14, -1, 050222 )
			SetLevel( sceneId, monsterID, mylevel )
			SetCharacterName( sceneId, monsterID, x050222_g_MonsterSuiCong )
		end

	else
		--定时检查队伍成员to� 鸬 队伍号,如果不符合,则踢出副本
		local oldteamid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- 取 餴琺保存to� 鸬 队伍号

		for	i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 and oldteamid ~= GetTeamId( sceneId, mems[i] ) then
				x050222_NotifyFailTips( sceneId, mems[i], "B課 kh鬾g c騨 trong 鸬i ng�, r秈 c鋘h..." )
				x050222_Exit( sceneId, mems[i] )
			end
		end
		
		--每2 ph鷗提示m祎 次,单数计时
		if mod( TickCount*x050222_g_TickTime, 60 ) == 0 and mod( TickCount*x050222_g_TickTime+60, 120 ) == 0 then
			for	i = 0, membercount - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
					local Minute = floor( (360 - TickCount)*x050222_g_TickTime/60 )
					x050222_NotifyFailTips( sceneId, mems[i], "Th秈 gian c騨 l読 "..Minute.." ph鷗" )
				end
			end	
		end
		
	end
end

--**********************************
--检测喧ng否可以提交
--**********************************
function x050222_CheckSubmit( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050222_g_MissionId ) <= 0 then
		return 0
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050222_g_MissionId )				--  餴琺到任务to� 鸬 序列号
	if GetMissionParam( sceneId, selfId, misIndex, x050222_g_IsMissionOkFail ) ~= 1 then
		return 0
	end

	if LuaFnGetAvailableItemCount( sceneId, selfId, x050222_g_xuanfouzhu ) < 1 then
		return 0
	end

	return 1
end

--**********************************
--提交
--**********************************
function x050222_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x050222_g_Name then		--判断该npc喧ng否喧ng对应任务to� 鸬 npc
		return
	end
	
	if x050222_CheckSubmit( sceneId, selfId ) == 1 then
		--x050222_NotifyFailBox( sceneId, selfId, targetId, x050222_g_MissionComplete )
		if LuaFnDelAvailableItem( sceneId, selfId, x050222_g_xuanfouzhu, 1 ) > 0 then--C 扣除玄佛珠,只扣m祎 c醝
			DelMission( sceneId, selfId, x050222_g_MissionId )
		
			local exp = GetLevel( sceneId, selfId ) * 3323 - 45613 --参考了老三环副本to� 鸬 Kinh nghi甿计算
			-- 鹫t 疬㧟Kinh nghi甿
			if exp < 1 then
				exp = 1
			end
			AddExp(sceneId, selfId, exp)

			-- 任务籱祎 疃臣�
			LuaFnAuditQuest(sceneId, selfId, "Dung Nham Chi 懈a nhi甿 v� tu ho鄋 L鈛 Lan")
		end
	end
end

--**********************************
-- 对话窗口信息提示
--**********************************
function x050222_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- 屏幕中间信息提示
--**********************************
function x050222_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--检测心法喧ng不够接任务
--**********************************
function x050222_CheckAllXinfaLevel(sceneId, selfId, level)
	local nMenpai = GetMenPai(sceneId, selfId)
	if nMenpai<0 or nMenpai>8   then
		return 0
	end
	
	for i=1, 6 do
		local nXinfaLevel = LuaFnGetXinFaLevel(sceneId, selfId, nMenpai*6 + i)
		if nXinfaLevel < level    then
			return 0
		end
	end
	return 1
end
