--L誧 D呓ngNPC
--宗喀达
--普通

--**********************************
--事件交互入口
--**********************************
function x000041_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Kh鬾g kh� � th鄋h L誧 D呓ng, 穑c h絥 nhi玼 so v緄 kh鬾g kh� th鄋h La Ta. Th馽 kh鬾g quen l...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
