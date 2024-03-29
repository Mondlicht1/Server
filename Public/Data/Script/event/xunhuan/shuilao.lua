--水牢任务主事件脚本
--任务
--脚本号
x232000_g_ScriptId	= 232000

--所拥有to� 鸬 事件ID列表
x232000_g_EventList	= { 232001 }

--任务号
x232000_g_MissionId			= 1212
--下m祎 c醝任务to� 鸬 ID
x232000_g_MissionIdNext	= 1213
--M鴆 ti陁 nhi甿 v鴑pc
x232000_g_Name			= "H� Di阯 B醥"
--任务文本描述
x232000_g_MissionName			= "B靚h 鸶nh Thu� lao ph鋘 lo課"
x232000_g_MissionInfo			= "  D﹑ y阯 ph鋘 lo課 th鼀 lao."	--任务描述
x232000_g_MissionTarget		= "  H� Di阯 B醥 � T� Ch鈛 #{_INFOAIM244,215,1, H� Di阯 B醥} y陁 c gi鷓 h ho鄋 th鄋h nhi甿 v� th鼀 lao."	--M鴆 ti陁 nhi甿 v�
x232000_g_ContinueInfo		= "  Nhi甿 v� ho鄋 th鄋h ch遖?"		--未Ho鄋 t nhi甿 v鴗o� 鸬 npc对话
x232000_g_MissionComplete	= "  C醡 絥 c醕 h� r nhi玼!"		--Ho鄋 t nhi甿 v鴑pc说to� 鸬 话
--环数上限
--x232000_g_MaxRound	= 20

--环数修改 20-29  1次 30-49  2次 50-69  4次 70-89  7次 90以上 10次 120以上 20次
x232000_g_MaxRoundList = {{lev=20,rnd=1},{lev=30,rnd=2},{lev=50,rnd=4},{lev=70,rnd=7},{lev=90,rnd=10},{lev=120,rnd=20}}

--接取任务to� 鸬 最低等c
x232000_g_minLevel	= 20


--**********************************
--任务入口函数
--**********************************
-- 餴琺击该任务后执行此脚本
function x232000_OnDefaultEvent( sceneId, selfId, targetId )

	--判断该npc喧ng否喧ng对应任务to� 鸬 npc
	if LuaFnGetName( sceneId, targetId ) ~= x232000_g_Name then
		return
	end

	--如果玩家已经接了任务
	if IsHaveMission( sceneId, selfId, x232000_g_MissionId ) > 0 then

		local misIndex			= GetMissionIndexByID( sceneId, selfId, x232000_g_MissionId )
		local misRealScript	= GetMissionParam( sceneId, selfId, misIndex, 1 )
		CallScriptFunction( misRealScript, "OnDefaultEvent", sceneId, selfId, targetId )

	--如果未接任务
	else

		--检测等c
		if LuaFnGetLevel( sceneId, selfId ) < x232000_g_minLevel then
			x232000_NotifyTip( sceneId, selfId, "衅ng c c黙 c醕 h� qu� th, ph誱 nh鈔 kh� l㱮 h読" )
			x232000_NotifyTip( sceneId, selfId, "V鏽 瘙i ng呓i 皙n"..x232000_g_minLevel.."Sau khi th錸g c t緄 t靘 ta" )
			return 0
		end

		--取 餴琺玩家附近to� 鸬 队友数量(包括自己)
		local i				= 0
		--械i vi阯 列表
		local lstMem	= { selfId }
		--附近械i vi阯 to� 鸬 c醝数
		local numMem	= 1
		if LuaFnHasTeam( sceneId, selfId ) ~= 0 then
			--如果喧ng队长
			if LuaFnIsTeamLeader( sceneId, selfId ) ~= 0 then
				numMem		= GetNearTeamCount( sceneId, selfId )
				for	i=0, numMem-1 do
					lstMem[i+1] = GetNearTeamMember( sceneId, selfId, i )
				end
			end
		end

		--随机选m祎 c醝任务
--	local rand	= random( 230011, 230012 )
		local	rand	= x232000_g_EventList[1]
		for	i=1, numMem do
			CallScriptFunction( rand, "OnDefaultEvent", sceneId, lstMem[i], targetId )
		end

	end

end

--**********************************
--列举事件
--**********************************
function x232000_OnEnumerate( sceneId, selfId, targetId )

	--判断该npc喧ng否喧ng对应任务to� 鸬 npc
	if LuaFnGetName( sceneId, targetId ) ~= x232000_g_Name then
		return
	end

	--如果已接任务或Th鯽 m鉵任务接收条件,则列出任务
	if IsHaveMission( sceneId, selfId, x232000_g_MissionId ) > 0 or x232000_CheckAccept( sceneId, selfId ) > 0 then
		AddNumText( sceneId, x232000_g_ScriptId, x232000_g_MissionName,4,-1 )
	end

end

--**********************************
--检测Ti猵 th跫�,也供子任务调用
--**********************************
function x232000_CheckAccept( sceneId, selfId )

	--已经接过则不符合条件
	if IsHaveMission( sceneId, selfId, x232000_g_MissionId ) > 0 then
		return 0
	end

	-- [ QUFEI 2007-08-27 19:13 UPDATE BugID 23910 ]
	local iDayCount = GetMissionData( sceneId, selfId, MD_SHUILAO_ACCEPT_TIME )	
	local nMonth = LuaFnGetThisMonth()
	local nDay   = LuaFnGetDayOfThisMonth()
	local nData  = (nMonth+1)*100+nDay							
	

	if iDayCount ~= nData then								--不喧ng今天to� 鸬 话则Ti猵 th问� 0

		SetMissionData( sceneId, selfId, MD_SHUILAO_ACCEPT_COUNT, 0 )
	end

	--检测玩家喧ng否符合Ti猵 th挝駎o� 鸬 条件

	local	iDayCount	= GetMissionData( sceneId, selfId, MD_BAIMASI_DAYCOUNT )

	local	iTime	= GetMissionData( sceneId, selfId, MD_BAIMASI_DAYTIME )
	local iDayTime	= floor( iTime/100 )				--上m祎 次交或放弃任务to� 鸬 时间(天数)
	local iQuarterTime	= mod( iTime, 100 )			--上m祎 次交或放弃任务to� 鸬 时间(m祎 刻种)
	local iDayHuan	= iDayCount	--当天内完成to� 鸬 S� l nhi甿 v� 

	--------------------------------------------------------
	--local CurTime		= GetHourTime()								--当前时间
	local CurTime		= GetQuarterTime()								--当前时间
	local CurDaytime= floor(CurTime/100)					--当前时间(天)
	

	if iDayTime ~= CurDaytime then	
		iDayHuan	= 0
		iDayCount		= iDayHuan;
		--设置循环任务to� 鸬 时间
		SetMissionData( sceneId, selfId, MD_BAIMASI_DAYTIME, CurTime )
		SetMissionData( sceneId, selfId, MD_BAIMASI_DAYCOUNT, iDayCount )

	end
	--------------------------------------------------------
	

	if iDayHuan >= x232000_GetMaxRound(sceneId,selfId) then

	--检测喧ng否S� l nhi甿 v� 已达上限
	--if iDayHuan >= x232000_g_MaxRound then
		x232000_NotifyTip( sceneId, selfId, "Nhi甿 v� h鬽 nay 疸 v唼t qu� s� l quy 鸶nh" )
		return 0
	end

	--这里貌似喧ng没用to� 鸬  注释 by zhangguoxin 090208
	--local CurTime				= GetHourTime()					--当前时间
	--local CurDaytime		= floor( CurTime/100 )	--当前时间(天)
	--local CurQuarterTime= mod( CurTime, 100 ) 	--当前时间(m祎 刻钟)
	--end modified by zhangguoxin 090208
	--------------------------------------------------------
--	if iDayTime == CurDaytime then
--		if CurQuarterTime == iQuarterTime then
--			x232000_NotifyTip( sceneId, selfId, "你现T読 不能L頽h C醝 n鄖 任务" )
--			return 0
--		end
--	end
	--------------------------------------------------------
	return 1
end

--**********************************
--Ti猵 th�,仅供子任务调用设置公共参数
--**********************************
function x232000_OnAccept( sceneId, selfId, targetId, scriptId )

	--判断该npc喧ng否喧ng对应任务to� 鸬 npc
 	if LuaFnGetName( sceneId, targetId ) ~= x232000_g_Name then
		return
	end

	-- [ QUFEI 2007-08-27 19:13 UPDATE BugID 23910 ]
	local nMonth = LuaFnGetThisMonth()
	local nDay   = LuaFnGetDayOfThisMonth()
	local nData  = (nMonth+1)*100+nDay							
	SetMissionData( sceneId, selfId, MD_SHUILAO_ACCEPT_TIME, nData )
	-- PrintNum(nData)

	local	iDayCount	= GetMissionData( sceneId, selfId, MD_SHUILAO_ACCEPT_COUNT )	--当天内Ti猵 th挝駎o� 鸬 次数
		
	--检测喧ng否S� l nhi甿 v� 已达上限


	if iDayCount >= x232000_GetMaxRound(sceneId,selfId) then
	--if iDayCount >= x232000_g_MaxRound then
		x232000_NotifyTip( sceneId, selfId, "Nhi甿 v� h鬽 nay 疸 v唼t qu� s� l quy 鸶nh" )
		return
	else
		-- PrintStr("Succesy")
		iDayCount = iDayCount + 1
		-- PrintNum(iDayCount)
		SetMissionData( sceneId, selfId, MD_SHUILAO_ACCEPT_COUNT, iDayCount )
	end

	--加入任务到玩家列表
	AddMission( sceneId, selfId, x232000_g_MissionId, scriptId, 0, 0, 1 )
	-- 餴琺到任务to� 鸬 序列号
	local	misIndex		= GetMissionIndexByID( sceneId, selfId, x232000_g_MissionId )
	--根据序列号把任务变量to� 鸬 第0位置0 (任务完成情况)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 0 )
	--根据序列号把任务变量to� 鸬 第1位置为任务脚本号
	SetMissionByIndex( sceneId, selfId, misIndex, 1, scriptId )

	-- 餴琺到环数
	local	MissionRound= GetMissionData( sceneId, selfId, MD_BAIMASI_HUAN )
	--环数增加1
	MissionRound			= MissionRound + 1
	
	--if	MissionRound > x232000_g_MaxRound then
	if	MissionRound > x232000_GetMaxRound(sceneId,selfId) then
		SetMissionData( sceneId, selfId, MD_BAIMASI_HUAN, 1 )
	else
		SetMissionData( sceneId, selfId, MD_BAIMASI_HUAN, MissionRound )
	end

end

--**********************************
--放弃,仅供子任务调用
--**********************************
function x232000_OnAbandon( sceneId, selfId )

  DelMission( sceneId, selfId, x232000_g_MissionId )
  --环数不清0,允许自由放弃
	--SetMissionData( sceneId, selfId, MD_BAIMASI_HUAN, 0 )
	--begin modified by zhangguoxin 090208
	local	iDayCount	= GetMissionData( sceneId, selfId, MD_BAIMASI_DAYCOUNT )
	--local iDayHuan	= floor( iDayCount/100000 )		--当天内完成to� 鸬 S� l nhi甿 v� 
	local iDayHuan	= iDayCount		--当天内完成to� 鸬 S� l nhi甿 v� 
	--local iTime			= mod(iDayCount,100000)
	local iTime			= GetMissionData( sceneId, selfId, MD_BAIMASI_DAYTIME )
	local iDayTime	= floor(iTime/100)						--上m祎 次交或放弃任务to� 鸬 时间(天数)
	
	--local CurTime		= GetHourTime()								--当前时间
	local CurTime		= GetQuarterTime()								--当前时间
	local CurDaytime= floor(CurTime/100)					--当前时间(天)

	if iDayTime ~= CurDaytime then								--不喧ng今天to� 鸬 话詍祎 肥�0
		SetMissionData( sceneId, selfId, MD_SHUILAO_ACCEPT_COUNT, 0 )
		iDayHuan	= 0
	end

	--iDayCount		= iDayHuan * 100000 + CurTime
	iDayCount		= iDayHuan;
	SetMissionData( sceneId, selfId, MD_BAIMASI_DAYTIME, CurTime )
	--设置循环任务to� 鸬 时间
	SetMissionData( sceneId, selfId, MD_BAIMASI_DAYCOUNT, iDayCount )
	--end modified by zhangguoxin 090208
end

--**********************************
--继续
--**********************************
function x232000_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--检测喧ng否可以提交
--**********************************
function x232000_CheckSubmit( sceneId, selfId )

	if IsHaveMission( sceneId, selfId, x232000_g_MissionId ) <= 0 then
		return 0
	end

	-- 餴琺到任务to� 鸬 序列号
	local	misIndex	= GetMissionIndexByID( sceneId, selfId, x232000_g_MissionId )
	if GetMissionParam( sceneId, selfId, misIndex, 0 ) == 1 then
		return 1
	end

	return  0
end

--**********************************
--提交,仅供子任务调用
--**********************************
function x232000_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	if x232000_CheckSubmit( sceneId, selfId ) ~= 1 then
		return
	end

	if DelMission( sceneId, selfId, x232000_g_MissionId ) <= 0 then
		return
	end
	--如果有后续任务,则删除
	if IsHaveMission( sceneId, selfId, x232000_g_MissionIdNext ) > 0 then
		DelMission( sceneId, selfId, x232000_g_MissionIdNext )
	end

	local	Level			= GetLevel( sceneId, selfId )
	--begin modified by zhangguoxin 090208
	local iDayCount	= GetMissionData( sceneId, selfId, MD_BAIMASI_DAYCOUNT )
	--local iTime			= mod( iDayCount, 100000 )
	local iTime			= GetMissionData( sceneId, selfId, MD_BAIMASI_DAYTIME )
	local iDayTime	= floor( iTime/100 )				--上m祎 次交或放弃任务to� 鸬 时间(天数)
	local iQuarterTime	= mod( iTime, 100 )			--上m祎 次交或放弃任务to� 鸬 时间(刻)
	--local iDayHuan	= floor( iDayCount/100000 )	--当天内完成to� 鸬 S� l nhi甿 v� 
	local iDayHuan	= iDayCount	--当天内完成to� 鸬 S� l nhi甿 v� 

	--local CurTime				= GetHourTime()					--当前时间
	local CurTime				= GetQuarterTime()					--当前时间
	local CurDaytime		= floor( CurTime/100 )	--当前时间(天)
	local CurQuarterTime= mod( CurTime, 100 )		--当前时间(刻)

	--上次Ho鄋 t nhi甿 v鷑g同m祎 天内
	if CurDaytime == iDayTime then
		iDayHuan			= iDayHuan + 1
	--上次Ho鄋 t nhi甿 v籘読 同m祎 天,重置
	else
		iDayTime			= CurDaytime
		iQuarterTime	= 0
		iDayHuan			= 1
	end

	local	Reward_Append	= 1
	
	if iDayHuan <= x232000_GetMaxRound(sceneId,selfId) then
	--if iDayHuan <= x232000_g_MaxRound then
		Reward_Append	= 2
	end
	
	--iDayCount	= iDayHuan * 100000 + iDayTime * 100 + iQuarterTime
	iDayCount	= iDayHuan;
	local newTime = iDayTime * 100 + iQuarterTime;
	--设置循环任务to� 鸬 环数
	SetMissionData( sceneId, selfId, MD_BAIMASI_DAYTIME, newTime )
	SetMissionData( sceneId, selfId, MD_BAIMASI_DAYCOUNT, iDayCount )
	--begin modified by zhangguoxin 090208
	local	MissionRound	= GetMissionData( sceneId, selfId, MD_BAIMASI_HUAN )

	--衰减系数
	local l_Exp		= 0.75
	local l_Money	= (49+Level) / (160+40*Level)
	--计算奖励Kinh nghi甿to� 鸬 数量
	local Round		= mod( MissionRound, 10 )
	if Round == 0 then
		Round = 10
	end

	--等c+环数函数,受Kinh nghi甿调节常数to� 鸬 影响
	local Exp		= 2400 * (Level+4) * Round * l_Exp / 120
	--等c+环数函数,受Kinh nghi甿调节常数to� 鸬 影响
	local Money	= 2400 * (Level+4) * Round * l_Money /120

	if MissionRound > 10 then
		--10环以上,每环额外增加m祎 定Kinh nghi甿增量,金钱没有增量
		Exp	= 2400 * (Level+4) * l_Exp / 120 + Exp
	end

	Exp		= Exp * Reward_Append
	Exp		= floor(Exp)
	Money	= floor(Money)

	--增加Kinh nghi甿值和钱
	--添加任务奖励
--AddExp( sceneId, selfId, Exp )
	AddMoney( sceneId, selfId, Money )
	--显示对话框
	BeginEvent( sceneId )
--	AddText( sceneId, "  做 餴琺不错,这里有" .. Exp .. " 餴琺Kinh nghi甿值和#{_MONEY"..Money.."},算喧ng给C黙 ng呓i 奖励." )
		AddText( sceneId, "  L鄊 kh� l, � 疴y c� #{_MONEY"..Money.."}, coi nh� tg th叻ng cho ng呓i" )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	--记录统计信息
	LuaFnAuditShuiLao(sceneId, selfId)
end

--**********************************
--杀死怪物或玩家
--**********************************
function x232000_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--进入区域事件
--**********************************
function x232000_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--道具改变
--**********************************
function x232000_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--接任务后显示to� 鸬 界面
--**********************************
function x232000_AcceptDialog(sceneId, selfId, rand, g_Dialog, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, g_Dialog )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--交任务后显示to� 鸬 界面
--**********************************
function x232000_SubmitDialog( sceneId, selfId, rand )
end

--**********************************
--把信送到后显示to� 鸬 界面
--**********************************
function x232000_SubmitDialog( sceneId, selfId, rand )
end

--**********************************
--醒目提示
--**********************************
function x232000_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--取 餴琺本事件to� 鸬 MissionId,用于obj文件中对话情景to� 鸬 判断
--**********************************
function x232000_GetEventMissionId( sceneId, selfId )
	return x232000_g_MissionId
end

------------------------------
--取 餴琺最多完成次数
------------------------------
function x232000_GetMaxRound(sceneId,selfId)
	
	local	level	= GetLevel( sceneId, selfId )
	local index = 5
	while level < x232000_g_MaxRoundList[index].lev do
		index = index - 1
		if index == 1 then
			break
		end
	end

	return x232000_g_MaxRoundList[index].rnd
  
end
