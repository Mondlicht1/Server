--L鈛 LanNPC....
--药店老板....

x001116_g_scriptId = 001116
x001116_g_shoptableindex = 179

--**********************************
--事件交互入口
--**********************************
function x001116_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "#{LLGC_20080324_02}" )
		AddNumText( sceneId, x001116_g_scriptId, "Ng呓i mu痭 mua g� n鄌?", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中m祎 项
--**********************************
function x001116_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x001116_g_shoptableindex )
	end
end
