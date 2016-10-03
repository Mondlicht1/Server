--���

--�ű���
x003001_g_scriptId = 003001

--��ӵ��to� � �¼�ID�б�
x003001_g_eventList={}--210809,210300, 210301, 210302, 210304}

--**********************************
--�¼��б�
--**********************************
function x003001_UpdateEventList ( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"  Qu�!!! �, th� ra l� ng߽i, xin l�i nh�. G�n ��y ta b� Qu� l�m cho khi�p ��m kinh h�n. Ta kh�ng bi�t r�t c�c m�nh nh�n th�y ng߶i hay Qu� n�a..")
	for i, eventId in x003001_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--�¼��������
--**********************************
function x003001_OnDefaultEvent( sceneId, selfId,targetId )
	x003001_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x003001_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x003001_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x003001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x003001_g_eventList do
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
function x003001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x003001_g_eventList do
		if missionScriptId == findId then
			x003001_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x003001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x003001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ������to� � ����
--**********************************
function x003001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x003001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x003001_OnDie( sceneId, selfId, killerId )
end
