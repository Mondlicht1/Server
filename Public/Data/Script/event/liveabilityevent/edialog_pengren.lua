--�Ի��¼� 

--�ű���
x713601_g_ScriptId = 713601

--**********************************
--������ں���
--**********************************
function x713601_OnDefaultEvent( sceneId, selfId, targetId )
	dialog = "#{event_liveabilityevent_0001}"
		BeginEvent(sceneId)
		AddText(sceneId, dialog)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--�о��¼�
--**********************************
function x713601_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713601_g_ScriptId,"T�i h� mu�n t�m hi�u n�u n߾ng",11,-1)
end

--**********************************
--���Ti�p th�����
--**********************************
function x713601_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x713601_OnAccept( sceneId, selfId, AbilityId )
end