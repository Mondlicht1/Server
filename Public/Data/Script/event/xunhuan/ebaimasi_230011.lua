--白马寺任务
--找人
--MisDescBegin
--脚本号
x230011_g_ScriptId = 230011

--前提任务
--g_MissionIdPre =

--任务号
x230011_g_MissionId = 4011

--M鴆 ti陁 nhi甿 v鴑pc
x230011_g_Name ="Tr� Thanh 姓i S�"

--任务归类
x230011_g_MissionKind = 1

--衅ng c nhi甿 v� 
x230011_g_MissionLevel = 10000

--喧ng否喧ngTinh英任务
x230011_g_IfMissionElite = 0

--下面几项喧ng动态显示to� 鸬 内容,用于T読 任务列表中动态显示任务情况**********************
--任务喧ng否已经完成
x230011_g_IsMissionOkFail = 0		--变量to� 鸬 第0位

--以上喧ng动态**************************************************************

--任务变量第m祎 位用来存储随机 餴琺到to� 鸬 脚本号

--任务文本描述
x230011_g_MissionName="Tu h鄋h B誧h M� T�"
x230011_g_MissionInfo="#{event_xunhuan_0001}"  --任务描述
x230011_g_MissionTarget="#{event_xunhuan_0002}"		--M鴆 ti陁 nhi甿 v�
x230011_g_ContinueInfo="A Di 朽 Ph... #rThi猽 hi畃 疸 t譶g ho鄋 th鄋h nhi甿 v� \"Th鼀 lao\" ch遖?"		--未Ho鄋 t nhi甿 v鴗o� 鸬 npc对话
x230011_g_MissionComplete="Thi畁 tai thi畁 tai, thi猽 hi畃 v� n呔c v� d鈔, ngh頰 d鹡g ki阯 c叨ng, ng鄖 sau s� th鄋h c鬾g "					--Ho鄋 t nhi甿 v鴑pc说话to� 鸬 话

--控制脚本
x230011_g_ControlScript=230000

--任务奖励


--MisDescEnd
--**********************************
--任务入口函数
--**********************************
function x230011_OnDefaultEvent( sceneId, selfId, targetId )	-- 餴琺击该任务后执行此脚本
	if GetName( sceneId, targetId ) ~= x230011_g_Name then		--判断该npc喧ng否喧ng对应任务to� 鸬 npc
		return
	end

	--如果已接此任务
	if IsHaveMission( sceneId, selfId, x230011_g_MissionId ) > 0 then
		--发送任务需求to� 鸬 信息
		BeginEvent( sceneId )
			AddText( sceneId, x230011_g_MissionName )
			AddText( sceneId, x230011_g_ContinueInfo )
		EndEvent( )
		bDone = x230011_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x230011_g_ScriptId, x230011_g_MissionId, bDone )
	--Th鯽 m鉵任务接收条件
	elseif x230011_CheckAccept( sceneId, selfId ) > 0 then
		--发送任务Ti猵 th毕允総o� 鸬 信息
		BeginEvent( sceneId )
			AddText( sceneId, x230011_g_MissionName )
			AddText( sceneId, x230011_g_MissionInfo )
			AddText( sceneId, "#{M_MUBIAO}" )
			AddText( sceneId, x230011_g_MissionTarget )
		EndEvent( )
		DispatchMissionInfo( sceneId, selfId, targetId, x230011_g_ScriptId, x230011_g_MissionId )
	end
end

--**********************************
--列举事件
--**********************************
function x230011_OnEnumerate( sceneId, selfId, targetId )
 	if GetName( sceneId, targetId ) ~= x230011_g_Name then		--判断该npc喧ng否喧ng对应任务to� 鸬 npc
		return
	end

   --如果已接此任务
	if IsHaveMission( sceneId, selfId, x230011_g_MissionId ) > 0 or x230011_CheckAccept( sceneId, selfId ) > 0 then
		AddNumText( sceneId, x230011_g_ScriptId, x230011_g_MissionName,3,-1 )
    end
end

--**********************************
--检测Ti猵 th跫�
--**********************************
function x230011_CheckAccept( sceneId, selfId )
	if CallScriptFunction( x230011_g_ControlScript, "CheckAccept", sceneId, selfId ) == 1 then
		--检测玩家喧ng否符合Ti猵 th挝駎o� 鸬 条件
		return 1
	else
		return 0
	end
end

--**********************************
--Ti猵 th�
--**********************************
function x230011_OnAccept( sceneId, selfId, targetId )
 	if GetName( sceneId, targetId ) ~= x230011_g_Name then		--判断该npc喧ng否喧ng对应任务to� 鸬 npc
		return
	end

	--加入任务到玩家列表
	CallScriptFunction( x230011_g_ControlScript, "OnAccept", sceneId, selfId, targetId, x230011_g_ScriptId )

	if IsHaveMission( sceneId, selfId, x230011_g_MissionId ) <= 0 then
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x230011_g_MissionId )
	SetMissionByIndex( sceneId, selfId, misIndex, 6, 1 )						--根据序列号把任务变量to� 鸬 第6位置1 (任务完成情况)

	--显示内容告诉玩家已经Ti猵 th巳挝�
	BeginEvent( sceneId )
		AddText( sceneId, x230011_g_MissionInfo )
		AddText( sceneId,"#r        Ng叨i nh nhi甿 v�: B誧h M� T� tu h鄋h" )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--放弃
--**********************************
function x230011_OnAbandon( sceneId, selfId )
	--删除玩家任务列表中对应to� 鸬 任务
	CallScriptFunction( x230011_g_ControlScript, "OnAbandon", sceneId, selfId )
end

--**********************************
--继续
--**********************************
function x230011_OnContinue( sceneId, selfId, targetId )
	--提交任务时to� 鸬 � 餴琺餍畔�
	BeginEvent( sceneId )
	AddText( sceneId, x230011_g_MissionName )
	AddText( sceneId, x230011_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x230011_g_ScriptId, x230011_g_MissionId )
end

--**********************************
--检测喧ng否可以提交
--**********************************
function x230011_CheckSubmit( sceneId, selfId )
	return CallScriptFunction( x230011_g_ControlScript, "CheckSubmit", sceneId, selfId )
end

--**********************************
--提交
--**********************************
function x230011_OnSubmit( sceneId, selfId, targetId, selectRadioId )
 	if GetName( sceneId, targetId ) ~= x230011_g_Name then		--判断该npc喧ng否喧ng对应任务to� 鸬 npc
		return
	end

	CallScriptFunction( x230011_g_ControlScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--杀死怪物或玩家
--**********************************
function x230011_OnKillObject( sceneId, selfId, objdataId ,objId)--参数意思: 场景号、玩家objId、怪物表位置号、怪物objId
end

--**********************************
--进入区域事件
--**********************************
function x230011_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--道具改变
--**********************************
function x230011_OnItemChanged( sceneId, selfId, itemdataId )
end
