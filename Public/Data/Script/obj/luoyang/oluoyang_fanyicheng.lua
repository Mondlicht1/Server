--L�c D߽ngNPC
--���Ƴ�
--��ͨ

x000143_g_ScriptId	= 143
x000143_g_EventList	= { 808008, 808009 }

--**********************************
--�¼��������
--**********************************
function x000143_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, "  Ta l� di d�n ti�p ��i s�, n�u c�c h� v�a di d�n �n ��y, c� c�n gi�p �� g� th� h�y l�n ti�ng." )
		for i, eventId in x000143_g_EventList do
			CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
		end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x000143_OnEventRequest( sceneId, selfId, targetId, eventId )

	for i, findId in x000143_g_EventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end

end