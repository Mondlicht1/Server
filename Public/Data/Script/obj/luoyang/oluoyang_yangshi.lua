--L誧 D呓ngNPC
--杨时
--普通

--**********************************
--事件交互入口
--**********************************
function x000040_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n呓ng"
	else
		PlayerSex = " c醕 h�"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  "..PlayerName..PlayerSex..", c醕 h� c鹡g 皙n b醝 ki猲 s� ph� �? Ta v� s� huynh 皙n 疴y th錷 s� ph�, kh鬾g g 疬㧟 s� ph� b鱪 ta s� kh鬾g 餴 疴u c�")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
