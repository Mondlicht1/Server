--Thi�u L�mNPC	��
--����
--��ͨ

--�ű���
x009012_g_ScriptId = 009012

--��ӵ��to� � �¼�
estudy_fofa = 713529
elevelup_fofa = 713588
edialog_fofa = 713611
--��ӵ��to� � �¼�ID�б�
x009012_g_eventList={estudy_fofa,elevelup_fofa}	
--MessageNum = 1		--MessageNum��ng�Ի����,���ڵ��ò�ͬ�Ի�
--**********************************
--�¼��б�
--**********************************
function x009012_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"K� n�ng c�a ta ch� d�y � t� b�n ph�i.")
	for i, eventId in x009012_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	AddNumText( sceneId, x009012_g_ScriptId, "Gi�i thi�u Ph�t ph�p", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x009012_OnDefaultEvent( sceneId, selfId,targetId )
	x009012_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x009012_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_022}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	for i, findId in x009012_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x009012_g_ScriptId )
			return
		end
	end
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x009012_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x009012_g_eventList do
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
function x009012_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x009012_g_eventList do
		if missionScriptId == findId then
			x009012_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x009012_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x009012_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ������to� � ����
--**********************************
function x009012_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x009012_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x009012_OnDie( sceneId, selfId, killerId )
end
