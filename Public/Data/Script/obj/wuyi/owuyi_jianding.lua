--武夷NPC
--涧汀
--5～8级鉴定商

x032006_g_scriptId = 032006
x032006_g_shoptableindex = 140

--**********************************
--事件交互入口
--**********************************
function x032006_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "    � 疴y ta c� m祎 v鄆 cu痭 s醕h c� th� gi醡 鸶nh trang b�, ng呓i c� mu痭 xem kh鬾g?" )
		AddNumText( sceneId, x032006_g_scriptId, "Mua Ph� gi醡 鸶nh", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中m祎 项
--**********************************
function x032006_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x032006_g_shoptableindex )
	end
end
