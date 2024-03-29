--杀怪任务
--为国为民
--新手村杀闪电豹和山蛛任务
--MisDescBegin
--脚本号
x210217_g_ScriptId = 210217

--Ti猵 th挝馧PC属性
x210217_g_Position_X=160.0895
x210217_g_Position_Z=156.9309
x210217_g_SceneID=2
x210217_g_AccomplishNPC_Name="Tri畊 Thi阯 S�"

--上m祎 c醝任务to� 鸬 ID
--g_MissionIdPre =

--任务号
x210217_g_MissionId = 457

--目标NPC
x210217_g_Name	="Tri畊 Thi阯 S�"

--任务归类
x210217_g_MissionKind = 13

--衅ng c nhi甿 v� 
x210217_g_MissionLevel = 6

--喧ng否喧ngTinh英任务
x210217_g_IfMissionElite = 0

--下面几项喧ng动态显示to� 鸬 内容,用于T読 任务列表中动态显示任务情况**********************
--任务喧ng否已经完成
x210217_g_IsMissionOkFail = 0		--变量to� 鸬 第0位

--任务C 杀死to� 鸬 怪
x210217_g_DemandKill ={{id=906,num=8}}		--变量第1位

--以上喧ng动态**************************************************************

--任务文本描述
x210217_g_MissionName="Gi猼 c鄋g nhi玼 qu醝 v"
x210217_g_MissionInfo="#{event_dali_0025}"
x210217_g_MissionTarget="#{event_dali_0026}"
x210217_g_ContinueInfo="  C醕 h� 疸 gi猼 8 con #RS絥 Th�#W ch遖?"
x210217_g_MissionComplete="  L鄊 r t痶, b鈟 gi� #RS絥 Th�#W c黙 #GV� L唼ng S絥#W c鹡g kh鬾g d醡 t鵼 ti畁 t k韈h c醕 huynh 甬 T鄌 Bang"
x210217_g_SignPost = {x = 160, z = 156, tip = "Tri畊 Thi阯 S�"}
--任务奖励
x210217_g_MoneyBonus=20
x210217_g_ItemBonus={{id=40002108,num=1},{id=10113000,num=1}}
x210217_g_SignPost_1 = {x = 127, z = 195, tip = "S絥 Th�"}

--MisDescEnd

x210217_g_DemandTrueKill ={{name="S絥 Th�",num=8}}

--**********************************
--任务入口函数
--**********************************
function x210217_OnDefaultEvent( sceneId, selfId, targetId )	-- 餴琺击该任务后执行此脚本
	--如果玩家完成过C醝 n鄖 任务(实际上如果完成了任务这里就不会显示,但喧ng再检测m祎 次比较安全)
    --if IsMissionHaveDone(sceneId,selfId,x210217_g_MissionId) > 0 then
	--	return
	--end
	--如果已接此任务
	if IsHaveMission(sceneId,selfId,x210217_g_MissionId) > 0 then
		--发送任务需求to� 鸬 信息
		BeginEvent(sceneId)
			AddText(sceneId,x210217_g_MissionName)
			AddText(sceneId,x210217_g_ContinueInfo)
			--for i, item in g_DemandItem do
			--	AddItemDemand( sceneId, item.id, item.num )
			--end
			AddMoneyBonus( sceneId, x210217_g_MoneyBonus )
		EndEvent( )
		bDone = x210217_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210217_g_ScriptId,x210217_g_MissionId,bDone)
    --Th鯽 m鉵任务接收条件
    elseif x210217_CheckAccept(sceneId,selfId) > 0 then
			--发送任务Ti猵 th毕允総o� 鸬 信息
			BeginEvent(sceneId)
				AddText(sceneId,x210217_g_MissionName)
				AddText(sceneId,x210217_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210217_g_MissionTarget)
				for i, item in x210217_g_ItemBonus do
					AddItemBonus( sceneId, item.id, item.num )
				end
				AddMoneyBonus( sceneId, x210217_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210217_g_ScriptId,x210217_g_MissionId)
    end
end

--**********************************
--列举事件
--**********************************
function x210217_OnEnumerate( sceneId, selfId, targetId )
    --如果玩家完成过C醝 n鄖 任务
    if IsMissionHaveDone(sceneId,selfId,x210217_g_MissionId) > 0 then
    	return
	end
    --如果已接此任务
    if IsHaveMission(sceneId,selfId,x210217_g_MissionId) > 0 then
			AddNumText(sceneId,x210217_g_ScriptId,x210217_g_MissionName,2,-1);
		--Th鯽 m鉵任务接收条件
	elseif x210217_CheckAccept(sceneId,selfId) > 0 then
			AddNumText(sceneId,x210217_g_ScriptId,x210217_g_MissionName,1,-1);
	end
end

--**********************************
--检测Ti猵 th跫�
--**********************************
function x210217_CheckAccept( sceneId, selfId )
	--C 6c才能接
	if GetLevel( sceneId, selfId ) >= 6 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ti猵 th�
--**********************************
function x210217_OnAccept( sceneId, selfId )
	--加入任务到玩家列表
	AddMission( sceneId,selfId, x210217_g_MissionId, x210217_g_ScriptId, 1, 0, 0 )		--添加任务
	misIndex = GetMissionIndexByID(sceneId,selfId,x210217_g_MissionId)			-- 餴琺到任务to� 鸬 序列号
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--根据序列号把任务变量to� 鸬 第0位置0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--根据序列号把任务变量to� 鸬 第1位置0
	Msg2Player(  sceneId, selfId,"#YNh nhi甿 v�#W: gi猼 th阭 nhi玼 qu醝",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210217_g_SignPost.x, x210217_g_SignPost.z, x210217_g_SignPost.tip )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, 6, x210217_g_SignPost_1.x, x210217_g_SignPost_1.z, x210217_g_SignPost_1.tip )
end

--**********************************
--放弃
--**********************************
function x210217_OnAbandon( sceneId, selfId )
	--删除玩家任务列表中对应to� 鸬 任务
  DelMission( sceneId, selfId, x210217_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210217_g_SignPost.tip )
end

--**********************************
--继续
--**********************************
function x210217_OnContinue( sceneId, selfId, targetId )
	--提交任务时to� 鸬 � 餴琺餍畔�
    BeginEvent(sceneId)
		AddText(sceneId,x210217_g_MissionName)
		AddText(sceneId,x210217_g_MissionComplete)
		AddMoneyBonus( sceneId, x210217_g_MoneyBonus )
		for i, item in x210217_g_ItemBonus do
			AddItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210217_g_ScriptId,x210217_g_MissionId)
end

--**********************************
--检测喧ng否可以提交
--**********************************
function x210217_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210217_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	misIndex = GetMissionIndexByID(sceneId,selfId,x210217_g_MissionId)
    num = GetMissionParam(sceneId,selfId,misIndex,0)
    if num == 1 then
		return 1
	end
	return 0
end

--**********************************
--提交
--**********************************
function x210217_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x210217_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
    	BeginAddItem(sceneId)
			for i, item in x210217_g_ItemBonus do
				AddItem( sceneId,item.id, item.num )
			end
		ret = EndAddItem(sceneId,selfId)
		--添加任务奖励
	if ret > 0 then
			AddMoney(sceneId,selfId,x210217_g_MoneyBonus );
			LuaFnAddExp( sceneId, selfId, 1800)
			--扣除任务物品
			--for i, item in g_DemandItem do
			--	DelItem( sceneId, selfId, item.id, item.num )
			--end
		ret = DelMission( sceneId, selfId, x210217_g_MissionId )
		if ret > 0 then
			MissionCom( sceneId, selfId, x210217_g_MissionId )
				AddItemListToHuman(sceneId,selfId)
				Msg2Player(  sceneId, selfId,"#YHo鄋 t nhi甿 v�#W: gi猼 th阭 nhi玼 qu醝",MSG2PLAYER_PARA )
			end
		else
		--任务奖励没有加成功
			BeginEvent(sceneId)
				strText = "Kh鬾g th� Ho鄋 t nhi甿 v�"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	end
end

--**********************************
--杀死怪物或玩家
--**********************************
function x210217_OnKillObject( sceneId, selfId, objdataId ,objId)
	if GetName(sceneId,objId) == x210217_g_DemandTrueKill[1].name	  then
		--  鹫t 疬㧟所有人
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			
			-- 看有没有C醝 n鄖 任务
			if IsHaveMission(sceneId, humanObjId, x210217_g_MissionId) > 0 then
				local misIndex = GetMissionIndexByID(sceneId,humanObjId,x210217_g_MissionId)
				local nNum = GetMissionParam(sceneId,humanObjId,misIndex,1)

	 			if nNum < x210217_g_DemandTrueKill[1].num then
	 				if nNum == x210217_g_DemandTrueKill[1].num - 1 then
	 					SetMissionByIndex(sceneId,humanObjId,misIndex,0,1)
	 				end
	 				
			    SetMissionByIndex(sceneId,humanObjId,misIndex,1,nNum+1)
			  	BeginEvent(sceneId)
					strText = format("秀 gi猼 ch猼 %d/8 S絥 Th�", GetMissionParam(sceneId,humanObjId,misIndex,1) )
					AddText(sceneId,strText);
			  	EndEvent(sceneId)
			  	DispatchMissionTips(sceneId,humanObjId)
	 			end
			end
		end
	end

end

--**********************************
--进入区域事件
--**********************************
function x210217_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--道具改变
--**********************************
function x210217_OnItemChanged( sceneId, selfId, itemdataId )
end
