--黄龙NPC
--洪霸
--野外宝石贩子

x023007_g_scriptId = 023007
x023007_g_shoptableindex = 111

--**********************************
--事件交互入口
--**********************************
function x023007_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Gi� b醤 c黙 ch鷑g t鬷 � 疴y th h絥 trong th鄋h ph� r nhi玼, tin hay kh鬾g th� t鵼" )
		AddNumText( sceneId, x023007_g_scriptId, "Xem xem ng呓i b醤 g� v", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中m祎 项
--**********************************
function x023007_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		if(GetLevel(sceneId, selfId) < 30 ) then
			BeginEvent( sceneId )
			AddText( sceneId, "#{BSSR_20080131_01}" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		DispatchShopItem( sceneId, selfId, targetId, x023007_g_shoptableindex )
	end
end
