-- 402041
-- 童贳
--珍珑副本任务npc

--脚本号
x402041_g_scriptId = 402041


--所拥有to� 鸬 事件ID列表
x402041_g_eventList={}

--**********************************
--事件列表
--**********************************
function x402041_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"#{CUJU_20071012}")

		local nSceneId = LuaFnGetCopySceneData_Param(sceneId, 3)
	
		if nSceneId == 0  then
			AddNumText( sceneId, x402041_g_scriptId, "羞a ta quay v� L誧 D呓ng", 9, 10 )
		elseif nSceneId == 1  then
			AddNumText( sceneId, x402041_g_scriptId, "羞a ta quay v� T� Ch鈛", 9, 11 )
		elseif nSceneId == 2  then
			AddNumText( sceneId, x402041_g_scriptId, "羞a ta quay v� 姓i L�", 9, 12 )
		end
		
		for i, findId in x402041_g_eventList do
			CallScriptFunction( x402041_g_eventList[i], "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x402041_OnDefaultEvent( sceneId, selfId,targetId )
	x402041_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中m祎 项
--**********************************
function x402041_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 10  then
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 0,204,59)
		return
	end
	
	if GetNumText() == 11  then
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 1,185,148)
		return
	end
	
	if GetNumText() == 12  then
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 2,280,95)
		return
	end
	
	
	for i, findId in x402041_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ti猵 th薔PCto� 鸬 任务
--**********************************
function x402041_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x402041_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			return
		end
	end
end

--**********************************
--拒绝此NPCto� 鸬 任务
--**********************************
function x402041_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后,要Tr� v玁PCto� 鸬 事件列表
	for i, findId in x402041_g_eventList do
		if missionScriptId == findId then
			x402041_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续(已经接了任务)
--**********************************
function x402041_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x402041_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--提交已做完to� 鸬 任务
--**********************************
function x402041_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x402041_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--死亡事件
--**********************************
function x402041_OnDie( sceneId, selfId, killerId )
end
