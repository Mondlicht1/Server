--掌门人
--林世长

--脚本号
x011000_g_scriptId = 011000

--所拥有to� 鸬 事件ID列表
x011000_g_eventList={229009, 229012, 808092}
--x011000_g_eventList={201011,201012,210408,808004, 229012}

--**********************************
--事件列表
--**********************************
function x011000_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"Ng叨i tr� tu眎, ng呓i c� chuy畁 g�?");
	for i, eventId in x011000_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x011000_OnDefaultEvent( sceneId, selfId,targetId )
	x011000_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中m祎 项
--**********************************
function x011000_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x011000_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, MP_MINGJIAO )
			return
		end
	end
end

--**********************************
--Ti猵 th薔PCto� 鸬 任务
--**********************************
function x011000_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x011000_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--拒绝此NPCto� 鸬 任务
--**********************************
function x011000_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后,要Tr� v玁PCto� 鸬 事件列表
	for i, findId in x011000_g_eventList do
		if missionScriptId == findId then
			x011000_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续(已经接了任务)
--**********************************
function x011000_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x011000_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--提交已做完to� 鸬 任务
--**********************************
function x011000_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x011000_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--死亡事件
--**********************************
function x011000_OnDie( sceneId, selfId, killerId )
end
