--姓i L齆PC
--丫鬟
--普通

--**********************************
--事件交互入口
--**********************************
function x002047_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ta l� a ho鄋.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
