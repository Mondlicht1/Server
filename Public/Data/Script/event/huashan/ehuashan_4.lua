-- 1233
--��ɽ�۽�to� � ����߼�����

x001233_g_ScriptId = 001233

x001233_g_ActivityId = 39

function x001233_OnScenePlayerEnter( sceneId, playerId )
	
	-- �����to� � Id��¼���������,
	-- ����m�t c�i��λ��,��������
	for i=0, 500    do
		local nId = GetActivityParam(sceneId, x001233_g_ActivityId, i)
		if nId == -1   then
			SetActivityParam(sceneId, x001233_g_ActivityId, i, playerId)
			SetActivityParam(sceneId, x001233_g_ActivityId, i + 500, 0)
			break
		end
	end
	
	-- ÿc�i����to� � ���� �i�m��ng��m�t ��to� �  
	local nPos_X
	local nPos_Z
	local nMenpai = LuaFnGetMenPai(sceneId, playerId)
	if nMenpai == 0  then
		nPos_X = 134
		nPos_Z = 18
	elseif nMenpai == 1   then
		nPos_X = 22
		nPos_Z = 123
	elseif nMenpai == 2   then
		nPos_X = 236
		nPos_Z = 108
	elseif nMenpai == 3   then
		nPos_X = 193
		nPos_Z = 233
	elseif nMenpai == 4   then
		nPos_X = 93
		nPos_Z = 236
	elseif nMenpai == 5   then
		nPos_X = 236
		nPos_Z = 174
	elseif nMenpai == 6   then	
		nPos_X = 23
		nPos_Z = 182
	elseif nMenpai == 7   then
		nPos_X = 48
		nPos_Z = 34
	elseif nMenpai == 8   then
		nPos_X = 228
		nPos_Z = 38
	elseif nMenpai == 9    then
		--û������to� � ��Ӧ����ng������to� � ,����������,����c�iλ��
		nPos_X = 100
		nPos_Z = 100
	end
	
	-- ���������Ӫ
	SetUnitCampID(sceneId, playerId, playerId, 10+nMenpai)
	
	SetPlayerDefaultReliveInfo( sceneId, playerId, "%50", "%50", "0", sceneId, nPos_X, nPos_Z )

end

function x001233_OnSceneHumanDie( sceneId, selfId, killerId )

	-- ���C�i n�y ɱ����ngc�i����,C�n ���ҵ�����
	local nObjType = GetCharacterType(sceneId, killerId);
	local nHumanId = -1;
	if nObjType then
		if nObjType == 1 then
			nHumanId = killerId;
		elseif nObjType == 3 then
			nHumanId = GetPetCreator(sceneId, killerId);
		end
	end

	if nHumanId == -1 then
		return
	end

	-- �ж���Щ����to� �  ��t ���c����,
	-- 1,ɱ���Լ�to� � ��,������ng������to� � ��,
	if LuaFnGetMenPai(sceneId, selfId) == LuaFnGetMenPai(sceneId, nHumanId)    then
		return
	end

	
	--Ų��ehuashan_1.lua��ȥ�� changed by xindefeng
	-- 2,��C�i n�y  killerId to� � ���ɹ��׶�+1
	--local nMenpaiPoint = GetHumanMenpaiPoint(sceneId, nHumanId)
	--SetHumanMenpaiPoint(sceneId, nHumanId, nMenpaiPoint+1)
	
	-- 3,��C�i n�y  killerId to� � ����ɱ����+1
	CallScriptFunction((001230), "KillPlayer",sceneId, nHumanId, selfId)

end
