--保护帮派驻地
--普通

--脚本号
x805043_g_ScriptId	= 805043

--所拥有to� 鸬 事件ID列表
x805043_g_EventList	= { 805042 }


--接取任务to� 鸬 最低等c
x805043_g_minLevel			= 20

--**********************************
--事件列表
--**********************************
function x805043_UpdateEventList( sceneId, selfId, targetId )

		CallScriptFunction( x805043_g_EventList[1], "OnEnumerate", sceneId, selfId, targetId )
	
end

--**********************************
--事件交互入口
--**********************************
function x805043_OnDefaultEvent( sceneId, selfId, targetId )
	x805043_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中m祎 项
--**********************************
function x805043_OnEventRequest( sceneId, selfId, targetId, eventId )

	for i, findId in x805043_g_EventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--Ti猵 th薔PCto� 鸬 任务
--**********************************
function x805043_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )

	for i, findId in x805043_g_EventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			return
		end
	end

end

--**********************************
--拒绝此NPCto� 鸬 任务
--**********************************
function x805043_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )

	--拒绝之后,要Tr� v玁PCto� 鸬 事件列表
	for i, findId in x805043_g_EventList do
		if missionScriptId == findId then
			x805043_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--继续(已经接了任务)
--**********************************
function x805043_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )

	for i, findId in x805043_g_EventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--提交已做完to� 鸬 任务
--**********************************
function x805043_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )

	for i, findId in x805043_g_EventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end

end

--**********************************
--死亡事件
--**********************************
function x805043_OnDie( sceneId, selfId, killerId )
end
