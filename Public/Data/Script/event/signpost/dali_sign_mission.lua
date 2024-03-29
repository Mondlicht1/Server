-- ��i L�
--ѭ�����񷢲���
--��·�ű�
x500047_g_scriptId = 500047

-- ��·���� type: 1 Ϊ��c�p�˵�, 2 Ϊֱ����·
x500047_g_Signpost = {
	{ type=2, name="��i L� T�o v�n S�", x=54, y=192, tip="��i L� T�o v�n S�", desc="��i L� T�o v�n s� V߽ng Nh��c V� � �߶ng l�n ph�a T�y, �i v� h߾ng T�y s� nh�n th�y. �n ph�m TAB m� b�n �, ch�nh l� ch� vi�t ch� \"T�o\"", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500047_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500047_g_Signpost do
		AddNumText(sceneId, x500047_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500047_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500047_g_Signpost[GetNumText()]

	if signpost.type == 1 then
		BeginEvent(sceneId)
			AddText(sceneId, signpost.name .. ": ")
			CallScriptFunction( signpost.eventId, "OnEnumerate", sceneId, selfId, targetId )
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
	elseif signpost.type == 2 then
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, signpost.x, signpost.y, signpost.tip )

		BeginEvent(sceneId)
			AddText(sceneId, signpost.desc)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
	end

end
