--�Ի��¼� npc��ӱ��

--�ű���
x713608_g_ScriptId = 713608

--**********************************
--������ں���
--**********************************
function x713608_OnDefaultEvent( sceneId, selfId, targetId)
	dialog = "#{event_liveabilityevent_0008}"
		BeginEvent(sceneId)
		AddText(sceneId, dialog)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--�о��¼�
--**********************************
function x713608_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713608_g_ScriptId,"T�m hi�u h�i d��c",11,-1)
end

--**********************************
--���Ti�p th�����
--**********************************
function x713608_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x713608_OnAccept( sceneId, selfId, AbilityId )
end