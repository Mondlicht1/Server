--琼州NPC
--刘季
--6级打造图纸商

x035006_g_scriptId = 035006
x035006_g_shoptableindex = 108

--**********************************
--事件交互入口
--**********************************
function x035006_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "    N鄖... mau ch鱪 th� c醕 h� th韈h r癷 餴 餴, 鹱ng 瓞 m鱥 ng叨i bi猼 ta 餫ng � 疴y." )
		AddNumText( sceneId, x035006_g_scriptId, "Ng呓i mu痭 mua g� n鄌?", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中m祎 项
--**********************************
function x035006_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x035006_g_shoptableindex )
	end
end
