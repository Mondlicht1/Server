--Thi猽 L鈓NPC
--普通弟子
--普通

--**********************************
--事件交互入口
--**********************************
function x009030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  N絠 n鄖 ch韓h l� v� l鈓 th醤h 鸶a - Thi猽 L鈓 T�. N猽 c醕 h� c gi鷓 疝, m秈 皙n g ch� c眓g ch鵤 t靘 Tri Kh醕h t錸g.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
