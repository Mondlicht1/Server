--��ҽ���m�t c�i area ʱ����
function x400922_OnEnterArea( sceneId, selfId )
	misIndex = GetMissionIndexByID(sceneId,selfId,1220)
	if misIndex < 0 or misIndex > 20 then
		return
	end
	num = GetMissionParam(sceneId,selfId,misIndex,0)
	if	num == 1 then
		NewWorld( sceneId, selfId, 0, 268, 87 )
	else
		CallScriptFunction((801018), "OnAbandon",sceneId, selfId)
		CallScriptFunction((801018), "BackToCity",sceneId, selfId)

	end
end

--���T�i m�t c�i area ����m�t ��ʱ��û����ʱ����
function x400922_OnTimer( sceneId, selfId )
	-- �� gi�y,��T�i C�i n�y  area ͣ�������
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5 gi�y����δ����
	if StandingTime >= 5000 then
		x400922_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--����뿪m�t c�i area ʱ����
function x400922_OnLeaveArea( sceneId, selfId )
end

