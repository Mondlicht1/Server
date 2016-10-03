--L�c D߽ngNPC ҩ������NPC   ��������: 1ҩ������to� � ѧϰ 2����ҩ������
--��ӱ��
--��ͨ

--�ű���
x000084_g_ScriptId = 000084

--��ӵ��to� � �¼�Id�б�
--estudy_yaoli = 713527
--elevelup_yaoli = 713586
--edialog_yaoli = 713620
--��ӵ��to� � �¼�ID�б�
x000084_g_eventList={713527,713586}--,713620}
--**********************************
--�¼��б�
--**********************************
function x000084_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"  Ng߽i mu�n h�c k� n�ng d��c l� ch�ng?")
	for i, eventId in x000084_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	AddNumText( sceneId, x000084_g_ScriptId, "Gi�i thi�u d��c l�", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x000084_OnDefaultEvent( sceneId, selfId,targetId )
	x000084_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x000084_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_008}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	for i, findId in x000084_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x000084_g_ScriptId )
		return
		end
	end
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x000084_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000084_g_eventList do
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
function x000084_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x000084_g_eventList do
		if missionScriptId == findId then
			x000084_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x000084_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000084_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ������to� � ����
--**********************************
function x000084_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000084_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x000084_OnDie( sceneId, selfId, killerId )
end