--L�c D߽ngNPC
--��������
--��ͨ

--�ű���
x000033_g_scriptId = 000033

--��ӵ��to� � �¼�ID�б�
x000033_g_eventList={200052, 200053, 200095, 200096, 200099, 200100}--200050,200054

x000033_g_RSMissionId = 101
x000033_g_ActivateMissionId = 45			-- ��������
x000033_g_SongXinScriptId = 006668		-- ����
x000033_g_ShaGuaiScriptId = 006666		-- ɱ��
x000033_g_XunWuScriptId = 006667			-- Ѱ��

x000033_g_RoundStorytelling = {
		[0] = { misIndex = { 1039350 }, script = x000033_g_XunWuScriptId },
		[1] = { misIndex = { 1039351 }, script = x000033_g_XunWuScriptId },
		[2] = { misIndex = { 1039352 }, script = x000033_g_XunWuScriptId },
		[3] = { misIndex = { 1039353 }, script = x000033_g_XunWuScriptId },
		[4] = { misIndex = { 1039354 }, script = x000033_g_XunWuScriptId }}
			
x000033_g_SongXinMissionList = {
		[0] = { misIndex = { 1018350 }, script = x000033_g_SongXinScriptId },
		[1] = { misIndex = { 1018351 }, script = x000033_g_SongXinScriptId },
		[2] = { misIndex = { 1018352 }, script = x000033_g_SongXinScriptId }}
			
x000033_g_ShaGuaiMissionList = {
		[0] = { misIndex = { 1039355 }, script = x000033_g_XunWuScriptId },
		[1] = { misIndex = { 1039356 }, script = x000033_g_XunWuScriptId },
		[2] = { misIndex = { 1039357 }, script = x000033_g_XunWuScriptId }}
			

--**********************************
--�¼��б�
--**********************************
function x000033_UpdateEventList( sceneId, selfId,targetId )
		
	local PlayerName = GetName( sceneId, selfId )
	local PlayerSex = GetSex( sceneId, selfId )
	if PlayerSex == 0 then
		PlayerSex = " c� n߽ng "
	else
		PlayerSex = " c�c h� "
	end

	BeginEvent( sceneId )
		AddText(sceneId,"  ��i h�i t�c c�u l�n n�y ng߶i xem th�t l� ��ng, tri�u ��i T�ng m�i n�m t� ch�c m�t l�n, l� n�o th�c s� mu�n so t�i ngh� t�c c�u?")

		local missionIndex = GetScriptIDByMissionID( sceneId, selfId, x000033_g_RSMissionId )
		if missionIndex ~= -1 then
			local missionName = TGetMissionName( missionIndex )
			if missionName ~= "Nhi�m v� Ng�n Xuy�n C�ng Ch�a" and IsMissionHaveDone( sceneId, selfId, x000033_g_ActivateMissionId ) > 0 then
				AddNumText( sceneId, x000033_g_scriptId, "Nhi�m v� Ng�n Xuy�n C�ng Ch�a", 3, 1 )
			end
		elseif IsMissionHaveDone( sceneId, selfId, x000033_g_ActivateMissionId ) > 0 then
			AddNumText( sceneId, x000033_g_scriptId, "Nhi�m v� Ng�n Xuy�n C�ng Ch�a", 3, 1 )
		end

		for i, eventId in x000033_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
		end
					
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
end

--**********************************
--�¼��������
--**********************************
function x000033_OnDefaultEvent( sceneId, selfId,targetId )
	x000033_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x000033_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x000033_g_eventList do
		if eventId == findId then			
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
		
	local num = GetNumText()
	if num == 1 then										-- Nhi�m v� Ng�n Xuy�n C�ng Ch�a
		if IsHaveMission( sceneId, selfId, x000033_g_RSMissionId ) > 0 then
			x000033_NotifyFailBox( sceneId, selfId, targetId, "    C�c h� v�n c�n Nhi�m v� k�ch t�nh li�n quan chua ho�n th�nh. H�y �n sau khi c�c h� �� ho�n th�nh nhi�m v� li�n quan" )
			return
		end
		
		-- �����ng��Th�a m�n���񼤻�����
		if IsMissionHaveDone( sceneId, selfId, x000033_g_ActivateMissionId ) <= 0 then
			return 0
		end
		
		--���½���to� � Nhi�m v� Ng�n Xuy�n C�ng Ch�a��ng����ng����50����
		--begin modified by zhangguoxin 090208
		local nDayCount = GetMissionData(sceneId, selfId, MD_JQXH_YINCHUAN_LIMITI)
		local nCount = 		floor(nDayCount/100000)
		local nTime = 		mod(nDayCount,100000)
		--local nDayTime = 	floor(nTime/100)	--��m�t �ν�����to� � ʱ��(����)
		local nDayTime = 	nTime								--��m�t �ν�����to� � ʱ��(����)
		
		--local CurTime = GetHourTime()				--��ǰʱ��
		local CurTime = GetDayTime()					--��ǰʱ��
		--local CurDaytime = floor(CurTime/100)	--��ǰʱ��(��)
		local CurDaytime = CurTime							--��ǰʱ��(��)
		--end modified by zhangguoxin 090208
		
		if nDayTime == CurDaytime  then -- ����
			if nCount >= 50  then
				BeginEvent( sceneId )
					AddText( sceneId, "  H�m nay b�n �� g�p nhi�u r�c r�i, h�i tr� l�i v�o ng�y mai" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				return
			end
			
		else		-- ��to� � m�t ��
			SetMissionData(sceneId, selfId, MD_JQXH_YINCHUAN_LIMITI, 0)
		end

		local mission = x000033_g_RoundStorytelling[0];
		local relation = GetMissionData(sceneId, selfId, MD_RELATION_YINCHUAN)
		local playerlevel = GetLevel( sceneId, selfId )
		
		-- ��c�p���޴���
		if playerlevel >= 100 then
			playerlevel = 90
		end
		
		playerlevel = floor( playerlevel / 10 ) * 10
		local randtype = random(100)
		
		-- ��������
		if randtype <= 60 then
			if playerlevel == 70 then
				mission = x000033_g_SongXinMissionList[0];
			elseif playerlevel == 80 then
				mission = x000033_g_SongXinMissionList[1];
			elseif playerlevel == 90 then
				mission = x000033_g_SongXinMissionList[2];			
			end
		-- ɱ������
		elseif randtype <= 95 then
			if playerlevel == 70 then
				mission = x000033_g_ShaGuaiMissionList[0];
			elseif playerlevel == 80 then
				mission = x000033_g_ShaGuaiMissionList[1];
			elseif playerlevel == 90 then
				mission = x000033_g_ShaGuaiMissionList[2];			
			end
		-- Ѱ������
		elseif randtype <= 100 then
			if relation <= 999 then
				mission = x000033_g_RoundStorytelling[0];
			elseif relation <= 1999 then
				mission = x000033_g_RoundStorytelling[1];
			elseif relation <= 3999 then
				mission = x000033_g_RoundStorytelling[2];
			elseif relation <= 6499 then
				mission = x000033_g_RoundStorytelling[3];
			elseif relation <= 9999 then
				mission = x000033_g_RoundStorytelling[4];
			end
		end
				
		CallScriptFunction( mission.script, "OnDefaultEvent", sceneId, selfId, targetId, mission.misIndex[ random( getn(mission.misIndex) ) ] )		
		
		return
	end	
	
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x000033_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000033_g_eventList do
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
function x000033_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x000033_g_eventList do
		if missionScriptId == findId then
			x000033_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end	
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x000033_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000033_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end	
end

--**********************************
--�ύ������to� � ����
--**********************************
function x000033_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000033_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end	
end

--**********************************
--�����¼�
--**********************************
function x000033_OnDie( sceneId, selfId, killerId )
end

--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x000033_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�ύ��Ʒ
--**********************************
function x000033_OnMissionCheck( sceneId, selfId, targetId, scriptId, index1, index2, index3, indexpet, missionIndex )
	
	for i, eventId in x000033_g_XunWuScriptId do
		
		if eventId == scriptId then
			CallScriptFunction( scriptId, "OnMissionCheck", sceneId, selfId, targetId, scriptId, index1, index2, index3, indexpet, missionIndex )
			return 1
		end
	end
		
end
