-- 中秋任务

--************************************************************************
--MisDescBegin

-- 脚本号
x050009_g_ScriptId = 050009

-- 任务号
x050009_g_MissionId = 395					-- 395 - 399

--上m祎 c醝任务to� 鸬 ID
x050009_g_MissionIdNext = 396

-- M鴆 ti陁 nhi甿 v鴑pc
x050009_g_Name = "Nh誧 Th叨ng Vi阯"

--任务归类
x050009_g_MissionKind = 3

--衅ng c nhi甿 v� 
x050009_g_MissionLevel = 10000

-- 任务文本描述
x050009_g_MissionName = "Nhi甿 v� trung thu"
x050009_g_MissionInfo = "    Nghe giang h� 鸢n rg, g 疴y c� m祎 s� cao th� nh ph 疬秐g s� t緄 d� l� trung thu" ..
				"T c鬾g 姓i T痭g ta, l鷆 痼 疸 b� t呔ng qu鈔 D呓ng V錸 Qu鋘g phong t鯽 t読" ..
				"恤n Ho鄋g, c醕 h� ch nh v� n呔c quy猼 黏u?"								-- 任务描述

x050009_g_MissionTarget = "    B鈟 gi� mau 皙n 恤n Ho鄋g (252, 144) T呔ng qu鈔 D呓ng V錸 Qu鋘g n絠 痼 vi畁 tr� h ch痭g 疝 s� ti猲 c鬾g c黙 Nh Ph 羞秐g cao th�. "	-- M鴆 ti陁 nhi甿 v�

x050009_g_ContinueInfo = "    "				-- 未Ho鄋 t nhi甿 v鴗o� 鸬 npc对话
x050009_g_MissionComplete = ""				-- Ho鄋 t nhi甿 v鴑pc说to� 鸬 话

-- 任务奖励

--MisDescEnd
--************************************************************************

x050009_g_NumText_Mission = 1				-- 中秋任务
x050009_g_NumText_Intro = 2					-- 任务介绍
x050009_g_NumText_ViewMoon = 3				-- 去往T鈟 H吧驮�

--**********************************
--判断喧ng否中秋时间
--**********************************
function x050009_IsMidAutumnPeriod( sceneId, selfId )
	--begin modified by zhangguoxin 090207
	--local CurTime = GetHourTime()						--当前时间
	--CurTime = CurTime-36500 --C醝 n鄖 数据每年都要维护
	local CurTime = GetQuarterTime();
	
	--local today = floor( CurTime/100 )						--当前时间(天)
	local today = mod(floor( CurTime/100 ), 1000)		--当前时间(天)
	local CurQuarterTime = mod( CurTime, 100 )			--当前时间(刻)
	--end modified by zhangguoxin 090207

	local firstDay = 257								-- 2008年9 月 14 日,包含当日
	local lastDay = 283									-- 2008年10 月 9 日,包含当日

	if today == firstDay and CurQuarterTime < 48 then
		return 0
	end

	if today == lastDay and CurQuarterTime > 47 then
		return 0
	end

	if today < firstDay or today > lastDay then
		return 0
	end

	return 1
end

--**********************************
--判断中秋物品喧ng否有效
--**********************************
function x050009_IsItemValid( sceneId, itemSN )--由物品to� 鸬 脚本枣泥馅月饼、薄荷馅月饼、豆沙馅月饼等等调用到这里,已经没有使用
	local today = GetDayTime()							--当前时间(天)
	local lastDay = 6303								-- 10 月 31 日

	-- 10 月 31 日以后失效
	if today > lastDay then
		return 0
	end

	return 1
end

--**********************************
--列举事件
--**********************************
function x050009_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x050009_g_Name then		--判断该npc喧ng否喧ng对应任务to� 鸬 npc
		return
	end

	if x050009_IsMidAutumnPeriod( sceneId, selfId ) == 0 then
		return
	end

	if IsHaveMission( sceneId, selfId, x050009_g_MissionId ) <= 0 then
		AddNumText( sceneId, x050009_g_ScriptId, "Nhi甿 v� trung thu", -1, x050009_g_NumText_Mission )
	else
		AddNumText( sceneId, x050009_g_ScriptId, "T緄 T鈟 H� th叻ng nguy畉", -1, x050009_g_NumText_ViewMoon )
	end

	AddNumText( sceneId, x050009_g_ScriptId, "Nhi甿 v� gi緄 thi畊", -1, x050009_g_NumText_Intro )
end

--**********************************
--任务入口函数
--**********************************
function x050009_OnDefaultEvent( sceneId, selfId, targetId )	-- 餴琺击该任务后执行此脚本
	if GetNumText() == x050009_g_NumText_Mission then
		x050009_AssignMission( sceneId, selfId, targetId )
	elseif GetNumText() == x050009_g_NumText_Intro then
		x050009_MissionIntro( sceneId, selfId, targetId )
	elseif GetNumText() == x050009_g_NumText_ViewMoon then
		x050009_ViewMoon( sceneId, selfId, targetId )
	else
		return
	end
end

--**********************************
--发布任务
--**********************************
function x050009_AssignMission( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x050009_g_MissionName )
		AddText( sceneId, x050009_g_MissionInfo )
	EndEvent( )
	DispatchMissionInfo( sceneId, selfId, targetId, x050009_g_ScriptId, x050009_g_MissionId )
end

--**********************************
--任务介绍
--**********************************
function x050009_MissionIntro( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "    T読 T� Ch鈛 (193, 148) h銀 k韈h ho誸 nhi甿 v� Nh誧 Th叨ng Vi阯 - 疸 t靘 th" ..
						"恤n Ho鄋g (252, 144) t呔ng qu鈔 D呓ng V錸 Qu鋘g 餴 v鄌 tr chi猲 ph� b鋘 - ti陁 di畉" ..
						"BOSS 餺誸 疬㧟 餴琺 t韈h l鹹 trung thu (nh�: l畁h b鄆 nh ph 疬秐g, c� th� giao cho D呓ng" ..
						"V錸 Qu鋘g 餺誸 疬㧟 m m髇 qu� qu�) - h銀 餴 t緄 ba t豼 l � ba th鄋h th� l緉" ..
						"詎g ch� � 疴y d鵱g 餴琺 t韈h l鹹 鸨i l nguy阯 li畊 th馽 ph (b祎 m� tinh, h呓ng li畊 lo読 遳, 疬秐g th唼ng h課g)," )
		AddText( sceneId, "歇n Ng叨i c鬾g b� nhi甿 v� c� th� chuy琻 t緄 T鈟 H� th叻ng nguy畉, h銀 t靘 皙n T� c黙 D� T鈟 H� (280" ..
						", 184) d鵱g 3 c醝 v li畊 Th裞 錸 鸨i l m祎 b醤h trung thu (ng鐄 nhi阯 kh醕 nhau" ..
						"Kh v�: B醤h trung thu nh鈔 M裻 T醥, B醤h trung thu nh鈔 B誧 H�, b醤h trung thu nh鈔 效u, Nh鉵" ..
						"Nh鈔 b醤h trung thu...b醤h trung thu, huy猼 kh� 鸢ng th秈 疬㧟 n誴 馥y, 鸢ng th秈 c鹡g t錸g th阭 c醕 lo読 h� tr� kh醕 nhau" ..
						"Th秈 h課 b鋙 h鄋h 鸬 t呓i ngon c黙 b醤h Trung thu t緄 31 th醤g 10. 邪ng th秈 m瞚 l thay m祎 h礽 trung thu" )
		AddText( sceneId, "L 疬㧟 tg th叻ng kinh nghi甿 t呓ng 裯g. C� th� t緄 D� T鈟 H� mua qu� trung thu" ..
						"Hoa, th秈 gian hoa trong l� trung thu c� hi畊 l馽 t緄 ng鄖 31 th醤g 10" )
	EndEvent( )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--去往T鈟 H吧驮�
--**********************************
function x050009_ViewMoon( sceneId, selfId, targetId )
	local scene, x, z = 121, 272, 181
	NewWorld( sceneId, selfId, scene, x, z )
end

--**********************************
--检测Ti猵 th跫�
--**********************************
function x050009_CheckAccept( sceneId, selfId )
	if x050009_IsMidAutumnPeriod( sceneId, selfId ) > 0 then
		return 1
	end

	return 0
end

--**********************************
--Ti猵 th�
--**********************************
function x050009_OnAccept( sceneId, selfId, targetId )
	--检测喧ng否任务已经达到20c醝,如果到了,则不能接
	if GetMissionCount( sceneId, selfId ) == 20 then
		x050009_NotifyFailTips( sceneId, selfId, "Kh鬾g th� ti猵 nh nhi玼 nhi甿 v�" )
		return
	end

	if IsHaveMission( sceneId, selfId, x050009_g_MissionId ) <= 0 then
		AddMission( sceneId, selfId, x050009_g_MissionId, x050009_g_ScriptId, 0, 0, 0 )		-- kill、area、item
		if IsHaveMission( sceneId, selfId, x050009_g_MissionId ) <= 0 then
			return
		end
	end

	x050009_NotifyFailBox( sceneId, selfId, targetId, x050009_g_MissionTarget )
end

--**********************************
--放弃任务
--**********************************
function x050009_OnAbandon( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050009_g_MissionId ) == 0 then
		return
	end

	if IsHaveMission( sceneId, selfId, x050009_g_MissionIdNext ) > 0 then
		x050009_NotifyFailTips( sceneId, selfId, "Xin v裻 b� nhi甿 v� nh ph 疬秐g tr呔c!" )
		return
	end

	DelMission( sceneId, selfId, x050009_g_MissionId )
end

--**********************************
--对话窗口信息提示
--**********************************
function x050009_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--醒目信息提示
--**********************************
function x050009_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
