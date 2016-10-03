--C醝 BangNPC
--掌门人
--宋长老
--普通

x010005_g_scriptId = 010005
x010005_g_eventList = {229009,229012,808092}

--**********************************
--事件交互入口
--**********************************
function x010005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"C醝 Bang n猽 mu痭 ph醫 tri琻 l緉 m課h, qu� th馽 kh鬾g th� ch� th鈛 nh kh c醝. G 疴y ta thu m祎 甬 t�, h ta tr呔c kia l� h騛 th唼ng.")
		for i, findId in x010005_g_eventList do
			CallScriptFunction( x010005_g_eventList[i], "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件列表选中m祎 项
--**********************************
function x010005_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x010005_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, MP_GAIBANG )
			return
		end
	end
end

