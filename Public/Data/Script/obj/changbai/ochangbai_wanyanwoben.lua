--�����ӱ�

--�ű���
x022006_g_scriptId = 022006

--��ӵ��to� � �¼�ID�б�
x022006_g_eventList={212110}	

--**********************************
--�¼��б�
--**********************************
function x022006_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"  Cha v� gia gia c�i nhau, sau �� cha ra ngo�i �i s�n, m�y ng�y r�i ta kh�ng g�p cha r�i, th�t l� nh� ng߶i qu�.")
	for i, eventId in x022006_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x022006_OnDefaultEvent( sceneId, selfId,targetId )
	x022006_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x022006_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x022006_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x022006_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x022006_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
			end
			return
		end
	end
end

--**********************************
--�ܾ���NPCto� � ����
--**********************************
function x022006_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x022006_g_eventList do
		if missionScriptId == findId then
			x022006_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x022006_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x022006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ������to� � ����
--**********************************
function x022006_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x022006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x022006_OnDie( sceneId, selfId, killerId )
end