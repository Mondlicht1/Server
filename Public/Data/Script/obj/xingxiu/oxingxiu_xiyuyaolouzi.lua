--Tinh T�cNPC
--¨��
--��ͨ

--�ű���
x016011_g_ScriptId = 016011

--��ӵ��to� � �¼�ID�б�
x016011_g_eventList={}	

--**********************************
--�¼��б�
--**********************************
function x016011_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	--AddText(sceneId,"K� n�ng c�a ta ch� d�y � t� b�n ph�i.")
	for i, eventId in x016011_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x016011_OnDefaultEvent( sceneId, selfId,targetId )
	x016011_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x016011_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x016011_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x016011_g_ScriptId )
			return
		end
	end
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x016011_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x016011_g_eventList do
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
function x016011_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x016011_g_eventList do
		if missionScriptId == findId then
			x016011_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x016011_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x016011_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ������to� � ����
--**********************************
function x016011_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x016011_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x016011_OnDie( sceneId, selfId, killerId )
end