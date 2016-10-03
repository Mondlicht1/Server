--ɱ������
--�������
--���ִ�ɱTh�c ��o B�ch Vi�n����
--MisDescBegin
--�ű���
x210213_g_ScriptId = 210213

--Ti�p th�����NPC����
x210213_g_Position_X=160.0895
x210213_g_Position_Z=156.9309
x210213_g_SceneID=2
x210213_g_AccomplishNPC_Name="Tri�u Thi�n S�"

--��m�t c�i����to� � ID
--g_MissionIdPre =

--�����
x210213_g_MissionId = 453

--Ŀ��NPC
x210213_g_Name	="Tri�u Thi�n S�"

--�������
x210213_g_MissionKind = 13

--��ng c�p nhi�m v� 
x210213_g_MissionLevel = 4

--��ng����ngTinhӢ����
x210213_g_IfMissionElite = 0

--���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������**********************

--����C�n ɱ��to� � ��
x210213_g_DemandKill ={{id=719,num=8}}		--������1λ

--������ng��̬**************************************************************

--�����ı�����
x210213_g_MissionName="L�n �u gi�t qu�i v�t"
x210213_g_MissionInfo="#{event_dali_0018}"
x210213_g_MissionTarget="#{event_dali_0019}"
x210213_g_ContinueInfo="C�c h� �� gi�t ch�t 8 con #RTh�c ��o B�ch Vi�n#W ch�a?"
x210213_g_MissionComplete="  L�m r�t t�t, b�y gi� #RTh�c ��o B�ch Vi�n#W � #Gаi Th�ch Than#W c�ng kh�ng d�m t�y ti�n t�p k�ch b� t�nh r�i"
x210213_g_SignPost = {x = 160, z = 156, tip = "Tri�u Thi�n S�"}
--������
x210213_g_MoneyBonus=200
x210213_g_ItemBonus={{id=40002108,num=1},{id=30101001,num=5}}

x210213_g_DemandTrueKill ={{name="Th�c ��o B�ch Vi�n",num=8}}
x210213_g_IsMissionOkFail = 1		--����to� � ��0λ

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x210213_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	--��������ɹ�C�i n�y ����(ʵ��������������������Ͳ�����ʾ,����ng�ټ��m�t �αȽϰ�ȫ)
    --if IsMissionHaveDone(sceneId,selfId,x210213_g_MissionId) > 0 then
	--	return
	--end
	--����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x210213_g_MissionId) > 0 then
		--������������to� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x210213_g_MissionName)
			AddText(sceneId,x210213_g_ContinueInfo)
			--for i, item in g_DemandItem do
			--	AddItemDemand( sceneId, item.id, item.num )
			--end
			AddMoneyBonus( sceneId, x210213_g_MoneyBonus )
		EndEvent( )
		bDone = x210213_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210213_g_ScriptId,x210213_g_MissionId,bDone)
    --Th�a m�n�����������
    elseif x210213_CheckAccept(sceneId,selfId) > 0 then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			BeginEvent(sceneId)
				AddText(sceneId,x210213_g_MissionName)
				AddText(sceneId,x210213_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210213_g_MissionTarget)
				for i, item in x210213_g_ItemBonus do
					AddItemBonus( sceneId, item.id, item.num )
				end
				AddMoneyBonus( sceneId, x210213_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210213_g_ScriptId,x210213_g_MissionId)
    end
end

--**********************************
--�о��¼�
--**********************************
function x210213_OnEnumerate( sceneId, selfId, targetId )
    --��������ɹ�C�i n�y ����
    if IsMissionHaveDone(sceneId,selfId,x210213_g_MissionId) > 0 then
    	return
	end
    --����ѽӴ�����
    if IsHaveMission(sceneId,selfId,x210213_g_MissionId) > 0 then
		AddNumText(sceneId,x210213_g_ScriptId,x210213_g_MissionName,2,-1);
		--Th�a m�n�����������
	elseif x210213_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210213_g_ScriptId,x210213_g_MissionName,1,-1);
	end
end

--**********************************
--���Ti�p th�����
--**********************************
function x210213_CheckAccept( sceneId, selfId )
	--C�n 4c�p���ܽ�
	if GetLevel( sceneId, selfId ) >= 4 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ti�p th�
--**********************************
function x210213_OnAccept( sceneId, selfId )
	--������������б�
	AddMission( sceneId,selfId, x210213_g_MissionId, x210213_g_ScriptId, 1, 0, 0 )		--��������
	misIndex = GetMissionIndexByID(sceneId,selfId,x210213_g_MissionId)			-- �i�m������to� � ���к�
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--�������кŰ��������to� � ��0λ��0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--�������кŰ��������to� � ��1λ��0
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�: ��m�t ��ɱ��",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210213_g_SignPost.x, x210213_g_SignPost.z, x210213_g_SignPost.tip )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, 7, 71, 250, "��Գ" )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, 75, 71, 250, "��Գ" )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, 76, 71, 250, "��Գ" )
end

--**********************************
--����
--**********************************
function x210213_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
    DelMission( sceneId, selfId, x210213_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210213_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x210213_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x210213_g_MissionName)
		AddText(sceneId,x210213_g_MissionComplete)
		AddMoneyBonus( sceneId, x210213_g_MoneyBonus )
		for i, item in x210213_g_ItemBonus do
			AddItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210213_g_ScriptId,x210213_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x210213_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210213_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	misIndex = GetMissionIndexByID(sceneId,selfId,x210213_g_MissionId)
    num = GetMissionParam(sceneId,selfId,misIndex,1)
    if num == x210213_g_DemandTrueKill[1].num then
			return 1
		end
	return 0
end

--**********************************
--�ύ
--**********************************
function x210213_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x210213_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
    	BeginAddItem(sceneId)
			for i, item in x210213_g_ItemBonus do
				AddItem( sceneId,item.id, item.num )
			end
		ret = EndAddItem(sceneId,selfId)
		--����������
	if ret > 0 then
			AddMoney(sceneId,selfId,x210213_g_MoneyBonus );
			LuaFnAddExp( sceneId, selfId, 1200)
			--�۳�������Ʒ
			--for i, item in g_DemandItem do
			--	DelItem( sceneId, selfId, item.id, item.num )
			--end
		ret = DelMission( sceneId, selfId, x210213_g_MissionId )
		if ret > 0 then
			MissionCom( sceneId, selfId, x210213_g_MissionId )
				AddItemListToHuman(sceneId,selfId)
				Msg2Player(  sceneId, selfId,"#YHo�n t�t nhi�m v�: ��m�t ��ɱ��",MSG2PLAYER_PARA )
			end
		else
		--������û�мӳɹ�
			BeginEvent(sceneId)
				strText = "��������,�޷�Ho�n t�t nhi�m v�"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	end
end

--**********************************
--ɱ����������
--**********************************
function x210213_OnKillObject( sceneId, selfId, objdataId ,objId)

	if GetName(sceneId,objId) == x210213_g_DemandTrueKill[1].name	  then
		--  ��t ���c������
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			
			-- ����û��C�i n�y ����
			if IsHaveMission(sceneId, humanObjId, x210213_g_MissionId) > 0 then
				local misIndex = GetMissionIndexByID(sceneId,humanObjId,x210213_g_MissionId)
				local nNum = GetMissionParam(sceneId,humanObjId,misIndex,1)
	 			if nNum < x210213_g_DemandTrueKill[1].num then
	 				if nNum == x210213_g_DemandTrueKill[1].num - 1 then
	 					SetMissionByIndex(sceneId,humanObjId,misIndex,0,1)
	 				end
	 				
			    SetMissionByIndex(sceneId,humanObjId,misIndex,1,nNum+1)
			  	BeginEvent(sceneId)
					strText = format("�� gi�t ch�t %d/8 Th�c ��o B�ch Vi�n", GetMissionParam(sceneId,humanObjId,misIndex,1) )
					AddText(sceneId,strText);
			  	EndEvent(sceneId)
			  	DispatchMissionTips(sceneId,humanObjId)
	 			end
			end
		end
	end

end

--**********************************
--���������¼�
--**********************************
function x210213_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x210213_OnItemChanged( sceneId, selfId, itemdataId )
end