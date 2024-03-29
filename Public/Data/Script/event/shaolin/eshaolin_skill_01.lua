-- 212140
-- Thi猽 L鈓任务 Thi猽 L鈓旧事

-- 玩家等c大于等于30c.
-- 金刚经、法华经,达摩心经,龙树心经,释迦经衅ng c t鈓 ph醦 諰inh�25c,大光明经衅ng c t鈓 ph醦 諰inh�30c.C醝 n鄖 条件T読  餴琺“Ti猵 th挝瘛眛o� 鸬 时候再进行提示.

--MisDescBegin
--脚本号
x212140_g_ScriptId = 212140

--Ti猵 th挝馧PC属性
x212140_g_Position_X=217
x212140_g_Position_Z=255
x212140_g_SceneID=2
x212140_g_AccomplishNPC_Name="V呓ng Thi玼"

--任务号
x212140_g_MissionId = 961

--目标NPC
x212140_g_Name	="V呓ng Thi玼"

--任务归类
x212140_g_MissionKind = 20

--衅ng c nhi甿 v� 
x212140_g_MissionLevel = 30

--喧ng否喧ngTinh英任务
x212140_g_IfMissionElite = 0

--任务名
x212140_g_MissionName="Chuy畁 c� Thi猽 L鈓"
x212140_g_MissionInfo="#{Mis_shaolin_961}"
x212140_g_MissionTarget="T読 #Gth鄋h 姓i L� Tu V錸 朽i#W t靘 #RV呓ng Thi玼 #W#{_INFOAIM217,255,2,V呓ng Thi玼}."
x212140_g_MissionComplete="  C醕 h� l� 甬 t� Thi猽 L鈓 �, ph呓ng tr唼ng c黙 c醕 h� Huy玭 T� 鹫i s� v鏽 kh鯽 ch� ?"

x212140_g_MoneyBonus=1000
x212140_g_exp=2000

x212140_g_Custom	= { {id="秀 t靘 疬㧟 V呓ng Thi玼",num=1} }
x212140_g_IsMissionOkFail = 0

--MisDescEnd

x212140_g_Xinfa = {{id=1,limit=25,name="Kim Cang Kinh"},
									 {id=2,limit=25,name="Ph醦 Hoa Kinh"},
									 {id=3,limit=30,name="姓i Quang Minh Kinh"},
									 {id=4,limit=25,name="姓t Ma T鈓 Kinh"},
									 {id=5,limit=25,name="Long Th� T鈓 Kinh"},
									 {id=6,limit=25,name="Th韈h Ca Kinh"},
									 }
x212140_g_Menpai = 0

--**********************************
--任务入口函数
--**********************************
function x212140_OnDefaultEvent( sceneId, selfId, targetId )
	--如果玩家完成过C醝 n鄖 任务
	if (IsMissionHaveDone(sceneId,selfId,x212140_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x212140_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x212140_g_Name then
			x212140_OnContinue( sceneId, selfId, targetId )
		end
	
	--Th鯽 m鉵任务接收条件
	elseif x212140_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212140_g_Name then
			--发送任务Ti猵 th毕允総o� 鸬 信息
			BeginEvent(sceneId)
				AddText(sceneId,x212140_g_MissionName)
				AddText(sceneId,x212140_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x212140_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x212140_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x212140_g_ScriptId,x212140_g_MissionId)
		end
	end
end

--**********************************
--列举事件
--**********************************
function x212140_OnEnumerate( sceneId, selfId, targetId )

	--如果玩家完成过C醝 n鄖 任务
	if IsMissionHaveDone(sceneId,selfId,x212140_g_MissionId) > 0 then
		return 
	--如果已接此任务
	elseif IsHaveMission(sceneId,selfId,x212140_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x212140_g_Name then
			AddNumText(sceneId, x212140_g_ScriptId,x212140_g_MissionName,2,-1);
		end
	--Th鯽 m鉵任务接收条件
	elseif x212140_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212140_g_Name then
			AddNumText(sceneId,x212140_g_ScriptId,x212140_g_MissionName,1,-1);
		end
	end

end

--**********************************
--检测Ti猵 th跫�
--**********************************
function x212140_CheckAccept( sceneId, selfId )
	-- 1,检测玩家喧ng不喧ng已经做过
	if (IsMissionHaveDone(sceneId,selfId,x212140_g_MissionId) > 0 ) then
		return 0
	end
		
	-- 等c检测
	if GetLevel(sceneId, selfId) < x212140_g_MissionLevel then
		return 0
	end
	
	-- 门派检测
	if GetMenPai(sceneId, selfId) ~= x212140_g_Menpai  then
		return 0
	end
	
	return 1
end

--**********************************
--Ti猵 th�
--**********************************
function x212140_OnAccept( sceneId, selfId, targetId )
	if x212140_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end

	-- 检查玩家to� 鸬 心法喧ng不喧ng达到了要求(前六种衅ng c t鈓 ph醦 大于等于30c)
	if x212140_CheckAllXinfaLevel(sceneId, selfId) == 0  then
		x212140_DispatchXinfaLimit(sceneId, selfId, targetId)
		return
	end

	--加入任务到玩家列表
	local ret = AddMission(sceneId,selfId, x212140_g_MissionId, x212140_g_ScriptId, 0, 0, 0)
	if ret <= 0 then
		local strText = "#YDanh s醕h nhi甿 v�#W: c黙 c醕 h� 疸 馥y r癷"
		Msg2Player(sceneId, selfId, strText, MSG2PLAYER_PARA)
   	BeginEvent(sceneId)
			AddText(sceneId, strText)
	  EndEvent(sceneId)
  	DispatchMissionTips(sceneId,selfId)
		return
	end
	local strText = "#Y Ti猵 nh nhi甿 v�: Chuy畁 c� Thi猽 L鈓."
	Msg2Player(sceneId, selfId, strText, MSG2PLAYER_PARA)
 	BeginEvent(sceneId)
		AddText(sceneId, strText)
  EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

	local misIndex = GetMissionIndexByID(sceneId,selfId,x212140_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)

end

--**********************************
--放弃
--**********************************
function x212140_OnAbandon( sceneId, selfId )
	--删除玩家任务列表中对应to� 鸬 任务
  DelMission( sceneId, selfId, x212140_g_MissionId )
end

--**********************************
--继续
--**********************************
function x212140_OnContinue( sceneId, selfId, targetId )
	--提交任务时to� 鸬 � 餴琺餍畔�
  BeginEvent(sceneId)
		AddText(sceneId,x212140_g_MissionName)
		AddText(sceneId,x212140_g_MissionComplete)
		AddMoneyBonus( sceneId, x212140_g_MoneyBonus )
  EndEvent()
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x212140_g_ScriptId,x212140_g_MissionId)
end

--**********************************
--检测喧ng否可以提交
--**********************************
function x212140_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x212140_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--提交
--**********************************
function x212140_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x212140_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--添加任务奖励
		AddMoney(sceneId,selfId, x212140_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x212140_g_exp)
		DelMission( sceneId, selfId, x212140_g_MissionId )
		MissionCom( sceneId, selfId, x212140_g_MissionId )
		Msg2Player( sceneId, selfId,"#Y Ho鄋 th鄋h nhi甿 v�: Chuy畁 c� Thi猽 L鈓 ",MSG2PLAYER_PARA )
	end
end

--**********************************
--杀死怪物或玩家
--**********************************
function x212140_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--进入区域事件
--**********************************
function x212140_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--道具改变
--**********************************
function x212140_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--检测心法喧ng不够接任务
--**********************************
function x212140_CheckAllXinfaLevel(sceneId, selfId)
	for i, xinfa in x212140_g_Xinfa do
		if LuaFnGetXinFaLevel(sceneId, selfId, xinfa.id) < xinfa.limit  then
			return 0
		end
	end
	return 1
end

--**********************************
--向玩家显示心法差距
--**********************************
function x212140_DispatchXinfaLimit(sceneId, selfId, targetId)
	
	BeginEvent(sceneId)
		AddText(sceneId,"#Y" .. x212140_g_MissionName)
		AddText(sceneId,"  衅ng c t鈓 ph醦 c黙 c醕 h� kh鬾g 瘘 r癷, vi s� l鄊 sao d醡 瓞 c醕 h� m誳 hi琺 餴 t靘 V呓ng Thi玼 疬㧟 ?")
		AddText(sceneId,"衅ng c t鈓 ph醦 c黙 c醕 h�:")
		local str
		local bOk = 0
		for i, xinfa in x212140_g_Xinfa do
			if LuaFnGetXinFaLevel(sceneId, selfId, xinfa.id) < xinfa.limit  then
				str = "[衅ng c kh鬾g 瘘]"
				bOk = 0
			else
				str = "[Ho鄋 th鄋h]"
				bOk = 1
			end
			local str1 = "    " .. xinfa.name .. ":" .. tostring(LuaFnGetXinFaLevel(sceneId, selfId, xinfa.id)) .. "/" .. xinfa.limit .. str
			if bOk == 1  then
				str1 = "#Y" .. str1
			else
				str1 = "#R" .. str1
			end
			AddText(sceneId,str1)
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end
