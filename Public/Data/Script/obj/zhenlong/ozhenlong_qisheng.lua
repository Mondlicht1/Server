--����NPC - ��ʥ

x044000_g_ScriptId = 044000; --�ű���
x044000_g_name	="��ʥ";

--��ӵ��to� � �¼�ID�б�
x044000_g_eventId_yes = 0;
x044000_g_eventId_no = 1;

--**********************************
--�¼��������
--**********************************
function x044000_OnDefaultEvent( sceneId, selfId, targetId )
	x044000_UpdateEventList( sceneId, selfId, targetId );
end

--**********************************
--�¼��б�
--**********************************
function x044000_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId);
		AddText( sceneId, "T�i h� c� th� g�i cho c�c h�, c� c�n kh�ng?" );
		AddNumText( sceneId, x044000_g_ScriptId, "Duy�t", 9, x044000_g_eventId_yes);
		AddNumText( sceneId, x044000_g_ScriptId, "Hu�", 8, x044000_g_eventId_no);
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x044000_OnEventRequest( sceneId, selfId, targetId, eventId )
	local selectEventId	= GetNumText();
	
	if selectEventId then
		if selectEventId == x044000_g_eventId_yes then
			CallScriptFunction(401001, "PlayerExit", sceneId, selfId);
		else
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 1000 )
		end
	end
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x044000_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--�ܾ���NPCto� � ����
--**********************************
function x044000_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
end