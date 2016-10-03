--ϴɱ��

--�ű���
x800110_g_scriptId = 800110

x800110_g_ModScript = 800112

function x800110_OnDefaultEvent( sceneId, selfId, targetId )

	--  �i�m����ǰɱ��ֵ
	local pk_value = LuaFnGetHumanPKValue(sceneId, selfId);
	if pk_value then
	else
		return 0;
	end

	-- �ж���ng����ɱ��
	if pk_value < 1 then
		x800110_NotifyFail(sceneId, selfId, "C�c h� kh�ng c� s�t kh�",targetId)
--		Msg2Player(sceneId, selfId, "C�c h� kh�ng c� s�t kh�", MSG2PLAYER_PARA);
		return 0;
	end

	-- �����ng�����㹻to� � �ƶ�ֵ�ͽ�Ǯ���۳�1 �i�mɱ��
	if CallScriptFunction( x800110_g_ModScript, "CheckCost", sceneId, selfId, targetId ,1 ) ~= 1 then
		return 0
	end

	-- ����1 �i�mɱ��ֵ���۳��ƶ�ֵ�ͽ��
	CallScriptFunction( x800110_g_ModScript, "PayForClean", sceneId, selfId, 1 )
	
	-- �۳�1 �i�mɱ��ֵ
	LuaFnSetHumanPKValue(sceneId, selfId, pk_value - 1)
	LuaFnAuditGoodbadDecPKValue( sceneId, selfId, 1 ); --��¼���ƶ�ֵ����ɱ��to� � ͳ����Ϣ....
	
	x800110_NotifyFail( sceneId, selfId, "C�c h� gi�i tr� th�nh c�ng 1 �i�m s�t kh�." ,targetId)
--	x800110_NotifyFailTips(sceneId, selfId, "C�c h� gi�i tr� th�nh c�ng 1 �i�m s�t kh�.");
	
	-- [ QUFEI 2007-11-09 15:36 UPDATE BugID 27611 ]		
	local LogInfo	= format( "[ChangePKValue]:ClearPKValue sceneId=%d, GUID=%0X, PKValueBgn=%d, PKValueEnd=%d",
			sceneId,
			LuaFnObjId2Guid( sceneId, selfId ),			
			pk_value,
			LuaFnGetHumanPKValue(sceneId, selfId) )
	WriteCheckLog( sceneId, selfId, LogInfo )

end

-- ************************
-- NPC�Ի������е���to� � ����
-- ************************
function x800110_OnEnumerate( sceneId, selfId,targetId )

	AddNumText(sceneId, x800110_g_scriptId, "Tr� 1 �i�m s�t kh�", 6, x800110_g_scriptId)

end


--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x800110_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--�Ի�����ʾ
function x800110_NotifyFail( sceneId, selfId, Tip ,targetId)
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchEventList(sceneId,selfId,targetId)
end