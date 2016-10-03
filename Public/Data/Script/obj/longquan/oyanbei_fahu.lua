--³ƽ


--�ű���
x031007_g_scriptId = 031007

--��ӵ��to� � �¼�ID�б�
x031007_g_eventList={}

--**********************************
--�¼��б�
--**********************************
function x031007_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"  Th� ch�, th� ch� c� t�ng nghe n�i g�n Kim S�n t� ch�ng t�i c� th�p L�i Phong? V� sau ch�ng bi�t th� n�o m� s�p m�t, th�t k� l�, ch�ng l� do Ph�t t� hi�n linh?")
	for i, eventId in x031007_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x031007_OnDefaultEvent( sceneId, selfId,targetId )
	x031007_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x031007_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x031007_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x031007_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x031007_g_eventList do
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
function x031007_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x031007_g_eventList do
		if missionScriptId == findId then
			x031007_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x031007_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x031007_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ������to� � ����
--**********************************
function x031007_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x031007_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x031007_OnDie( sceneId, selfId, killerId )
end

