--T� Ch�uNPC
--ʿ��
--��ͨ
--�ű���
x001054_g_scriptId = 001054

--��ӵ��to� � �¼�ID�б�
x001054_g_eventList={500020}	

--**********************************
--�¼��б�
--**********************************
function x001054_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = " c� n߽ng "
		else
			PlayerSex = " c�c h�"
		end
		AddText(sceneId,"  "..PlayerName..PlayerSex.." v� s� an nguy c�a ��i T�ng, v� ng߶i th�n c� th� y�n t�m s�ng, ch�ng ta ph�i ch�m ch� luy�n t�p h�ng ng�y")
		for i, eventId in x001054_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x001054_OnDefaultEvent( sceneId, selfId,targetId )
	x001054_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x001054_OnEventRequest( sceneId, selfId, targetId, eventId )
	CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
	return
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x001054_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001054_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--�ܾ���NPCto� � ����
--**********************************
function x001054_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x001054_g_eventList do
		if missionScriptId == findId then
			x001054_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x001054_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001054_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ������to� � ����
--**********************************
function x001054_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001054_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x001054_OnDie( sceneId, selfId, killerId )
end
