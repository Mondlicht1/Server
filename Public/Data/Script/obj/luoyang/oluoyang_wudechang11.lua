--����NPC
--��²�
--��ͨ

x000082_g_ScriptId	= 000082

--������Ϣ(�������ƣ�SceneID��PosX��PosY������ID)
x000082_g_mpInfo		= {}
x000082_g_mpInfo[0]	= { "����", 16,  96, 152, MP_XINGSU }
x000082_g_mpInfo[1]	= { "��ң", 14,  67, 145, MP_XIAOYAO }
x000082_g_mpInfo[2]	= { "����",  9,  96, 127, MP_SHAOLIN }
x000082_g_mpInfo[3]	= { "��ɽ", 17,  95, 120, MP_TIANSHAN }
x000082_g_mpInfo[4]	= { "����", 13,  96, 120, MP_DALI }
x000082_g_mpInfo[5]	= { "����", 15,  89, 139, MP_EMEI }
x000082_g_mpInfo[6]	= { "�䵱", 12, 103, 140, MP_WUDANG }
x000082_g_mpInfo[7]	= { "����", 11,  98, 167, MP_MINGJIAO }
x000082_g_mpInfo[8]	= { "ؤ��", 10,  91, 116, MP_GAIBANG }

x000082_g_Yinpiao = 40002000 

x000082_g_Impact_NotTransportList = { 5929, 5944 } -- ��ֹ���͵�Impact
x000082_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}", "#{XSHCD_20080418_099}" } -- ��ֹ���͵�Impact��ʾ��Ϣ

--**********************************
--�¼��������
--**********************************
function x000082_OnDefaultEvent( sceneId, selfId,targetId )
	CallScriptFunction( (300053), "ChuanSong", sceneId, selfId, 400, 1 )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x000082_OnEventRequest( sceneId, selfId, targetId, eventId )
	CallScriptFunction( (300053), "ChuanSong", sceneId, selfId, GetNumText(),1)
end
--  add by zchw
function x000082_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 200, 211, 20 );
	return
end
--**********************************
--��������ID��ȡ������Ϣ
--**********************************
function x000082_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x000082_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x000082_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end