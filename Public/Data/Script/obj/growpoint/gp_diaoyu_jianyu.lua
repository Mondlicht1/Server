--���� �i�m
--��Ӧ�����: ����	���㼼��to� � ���9
--����
--�ű���712014
--����100%
--��c�p1

--ÿ�δ򿪱ض� ��t ���cto� � ��Ʒ
x712014_g_MainItemId = 20102014
--���� �i�m��to� � ��Ʒ
--g_SubItemId = 20304005
--C�n ����Id
x712014_g_AbilityId = 9
--C�n ���ܵ�c�p
x712014_g_AbilityLevel = 2


function 	x712014_OnCreate(sceneId,growPointType,x,y)
	ItemCount = 0-- ��Ʒ����
	ItemBoxId = ItemBoxEnterScene(x,y,growPointType,sceneId,QUALITY_MUST_BE_CHANGE,ItemCount)	--��������
end

function	 x712014_OnOpen(sceneId,selfId,targetId)
	--�����㼼�ܵ�c�p
	AbilityId		=	GetItemBoxRequireAbilityID(sceneId,targetId)
	AbilityLevel = QueryHumanAbilityLevel(sceneId,selfId,AbilityId)
	if AbilityLevel<x712014_g_AbilityLevel then
		return OR_NO_LEVEL
	end

	-- ��t ���c�����,����m�t �ε�����to� � ʱ��
	x712014_g_FishTime = random(80000)+20000	-- ��t ���cm�t c�i20-100 gi�y֮��to� � �����
	--x712014_g_FishTime = random(8000)+2000	-- ��t ���cm�t c�i2-10 gi�y֮��to� � �����
	SetAbilityOperaTime(sceneId,selfId,x712014_g_FishTime)	--����m�t �ε�����to� � ʱ��
	--SetAbilityOperaRobotTime(sceneId, selfId,g_totaltime)	--���ۼ�ʱ�丶��...
	
	return OR_OK

end

function	x712014_OnProcOver(sceneId,selfId,targetId)
   
	ret_1 = TryRecieveItem(sceneId,selfId,x712014_g_MainItemId,QUALITY_MUST_BE_CHANGE)
	if ret_1 > 0 then					-->0��ʾ��Ʒ�ɹ����뱳����
		Msg2Player(sceneId,selfId,"�����m�t ������.",MSG2PLAYER_PARA)
		-- ����������
		ABilityID	=	GetItemBoxRequireAbilityID(sceneId,targetId)
		CallScriptFunction(ABILITYLOGIC_ID, "GainExperience", sceneId, selfId, ABilityID, x712014_g_AbilityLevel)
	elseif ret_1 == -1 then
		Msg2Player(sceneId,selfId,"��������",MSG2PLAYER_PARA)
	end
	return 0
end