--T� Ch�uNPC
--����ʯ
--m�t ��

--�ű���
x001000_g_scriptId = 001000

--��ӵ��to� � �¼�ID�б�
x001000_g_eventList={212130, 212133}

--**********************************
--�¼��б�
--**********************************
function x001000_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Thi�n tai kh�ng ��ng s�, ph�p t�c c�a t� t�ng kh�ng ��ng � m� ph�ng m�t c�ch c�ng nh�c, nh�ng l�i n�i c�a c�c th�i t�c h� l�u kh�ng ��ng ph�i lo l�ng.")
		for i, eventId in x001000_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end

		-- L�nh �ƺ�
		if (IsMissionHaveDone(sceneId,selfId, 255) > 0 ) then
			AddNumText(sceneId, x001000_g_scriptId, "Nh�n danh hi�u", 6, 999);
		end

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x001000_OnDefaultEvent( sceneId, selfId,targetId )
	x001000_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x001000_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText()==999  then
		LuaFnAwardTitle( sceneId, selfId,  11, 235)
		SetCurTitle(sceneId, selfId,  11, 235)
		LuaFnDispatchAllTitle(sceneId, selfId)
		return
	end

	for i, findId in x001000_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x001000_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001000_g_eventList do
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
function x001000_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x001000_g_eventList do
		if missionScriptId == findId then
			x001000_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x001000_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001000_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ������to� � ����
--**********************************
function x001000_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001000_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x001000_OnDie( sceneId, selfId, killerId )
end
