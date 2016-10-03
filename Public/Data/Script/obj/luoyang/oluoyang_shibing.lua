--��i L�NPC
--ʿ��
--��ͨ
--�ű���
x000080_g_scriptId = 000080

--��ӵ��to� � �¼�ID�б�
x000080_g_eventList={500000}	

--**********************************
--�¼��б�
--**********************************
function x000080_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = " c� n߽ng"
		else
			PlayerSex = " c�c h�"
		end
		AddText(sceneId,"  "..PlayerName..PlayerSex..", v� s� an nguy c�a n߾c ��i T�ng, � cho ng߶i th�n ch�ng ta c� th� s�ng y�n b�nh, ch�ng t�i s� c�ng d�ng c�ng t�p luy�n!")
		for i, eventId in x000080_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x000080_OnDefaultEvent( sceneId, selfId,targetId )
	x000080_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x000080_OnEventRequest( sceneId, selfId, targetId, eventId )
	CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
	return
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x000080_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000080_g_eventList do
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
function x000080_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x000080_g_eventList do
		if missionScriptId == findId then
			x000080_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x000080_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000080_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ������to� � ����
--**********************************
function x000080_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000080_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x000080_OnDie( sceneId, selfId, killerId )
end