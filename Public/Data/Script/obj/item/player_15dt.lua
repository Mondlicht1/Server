-- ����1.5��Kinh nghi�mҩˮ
-- ����m�t c�iҩˮ,Ϊ�����ṩm�t c�iСʱ1.5��Kinh nghi�mʱ��

--�ű���
x300045_g_scriptId = 300045
x300045_g_ItemId = 30008016
x300045_g_BuffId = 62

x300045_g_BuffPalyer_25 = 60
x300045_g_BuffAll_15 = 62
x300045_g_BuffPet_25 = 61
x300045_g_BuffPet_2 = 53

--**********************************
--�¼��������
--**********************************
function x300045_OnDefaultEvent( sceneId, selfId, nItemIndex )
	
	-- ����������Լ�,���ܳ�
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300045_g_BuffAll_15) == 1   then
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �ang s� d�ng d��c li�u nh�n ��i kinh nghi�m, vui l�ng sau khi m�t hi�u qu� h�y s� d�ng ti�p.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	-- ���������2.5to� � ,�Ͳ��ó�
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300045_g_BuffPalyer_25) == 1   then
		BeginEvent(sceneId)
			AddText(sceneId,"Tr�n ng߶i c�c h� �� t�n t�i th�i gian nh�n ��i kinh nghi�m qu� cao!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
		
	-- �������� ˫��Kinh nghi�mʱ�� ����ʹ��
	local nCurHaveTime = DEGetMoneyTime(sceneId, selfId)
	if nCurHaveTime > 0  and  DEIsLock(sceneId, selfId)~=1  then
		BeginEvent(sceneId)
			AddText(sceneId,"Tr�n ng߶i c�c h� �� t�n t�i th�i gian nh�n ��i kinh nghi�m qu� cao!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	x300045_UseItem( sceneId, selfId, nItemIndex)
	
end

function x300045_IsSkillLikeScript( sceneId, selfId)
	return 0
end

--**********************************
--
--**********************************
function x300045_EatMe( sceneId, selfId, nItemIndex)
	x300045_UseItem( sceneId, selfId, nItemIndex)
end

--**********************************
-- 
--**********************************
function x300045_UseItem( sceneId, selfId, nItemIndex)
	-- �ȼ��C�i n�y  nItemIndex to� � ��Ʒ��ng����ng�͵�ǰto� � ��Ӧ,
	if GetItemTableIndexByIndex(sceneId, selfId, nItemIndex) ~= x300045_g_ItemId  then
		BeginEvent(sceneId)
			AddText(sceneId,"  Sai s�t trong tay n�i")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	-- ��m�t c�iҩ
	local ret = EraseItem(sceneId, selfId, nItemIndex)

	if ret == 1   then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x300045_g_BuffId, 100 )
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� t�ng 1.5 kinh nghi�m nh�n v�t trong 1 gi�")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	else
		BeginEvent(sceneId)
			AddText(sceneId,"V�t ph�m kh�ng th� s� d�ng")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	end
end
