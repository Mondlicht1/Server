--��������

--MisDescBegin
--�ű���
x229022_g_scriptId = 229022

--ǰ������
--g_MissionIdPre =

--M�c ti�u nhi�m v�npc[94,177]
x229022_g_Name	= "V߽ng phu nh�n"

--�����
x229022_g_MissionId = 1202

--�������
x229022_g_MissionKind = 1

--��ng c�p nhi�m v� 
x229022_g_MissionLevel = 10000

--��ng����ngTinhӢ����
x229022_g_IfMissionElite = 0

--���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������**********************
--������ng���Ѿ����
x229022_g_IsMissionOkFail = 0		--����to� � ��0λ

--������ng��̬**************************************************************

--���������m�t λ�����洢��� �i�m��to� � �ű���

--�����ı�����
x229022_g_MissionName="Nhi�m v� li�n ho�n"
x229022_g_MissionInfo=""  --��������
x229022_g_MissionTarget = "%f"
x229022_g_ContinueInfo="L�m t�t l�m"		--δHo�n t�t nhi�m v�to� � npc�Ի�
x229022_g_MissionComplete="�, ta bi�t r�i, ng߽i l�m t�t l�m"					--Ho�n t�t nhi�m v�npc˵��to� � ��

--���������ַ�����ʽ��to� � ����
x229022_g_FormatList = {
								"T�m ���c%n",
								"�em%i t�ng cho %n",
								"�em #Y%p #Wt�ng cho %n",
								"D�y b�o %n",
								}

--ֻ��ngΪ�ͻ�����ʾMissionTarget����, ����to� � ��̬to� � �ַ�������ע�ᵽ��List����
x229022_g_StrList = {
						 "huynh �y ",
						 "mu�i �y ",
						 }

--��ʽ�ַ����ж�Ӧ��g_StringList���ַ���to� � ����, ��ʾ��4��ʼ,�����λ��SetMissionByIndexEx(...)to� � ���ٶ���
x229022_g_StrForePart=4

--��̬item���T�i missionparam�洢to� � ��ʼλ��
x229022_g_ItemForePart=6

x229022_g_MissionRound	= 35		--��¼ѭ���������

x229022_g_MissionLimitTime = 1800000

x229022_g_StopWatch_Pause_Flag = 57

x229022_g_NpcIdIndicator={{key=1,npcIdIndex=5},{key=2,npcIdIndex=6},{key=3,npcIdIndex=5},{key=5,npcIdIndex=6}}


--MisDescEnd

x229022_g_SubMissionType = {wenhou=1, suoqu=2, fubenjiaoxun=3, fubenduowu=4, chongwu=5}

x229022_g_GoodBadDescTable = {
									{key=1, str="D�ng tr� gi� thi�n �c �i v�t ph�m c�a nhi�m v� li�n ho�n"},
									{key=2, str="L�u l�i s� v�ng hi�n c�"},
									{key=3, str="Ti�p t�cnhi�m v� li�n ho�n l�n tr߾c"},
								}


x229022_g_RenwulianPet_Index = 0
x229022_g_RenwulianItem_Index = 21
x229022_g_RenwulianItem50_Index = 21
x229022_g_RenwulianItem100_Index = 42
x229022_g_RenwulianNpc_Index = 6
x229022_g_RenwulianFunbenNpc_Index = 11

--��c�p	Kinh nghi�m��������
x229022_g_ExpBonusBaseTable = {
												{ playerLevel=40, baseExp=3872 },
												{ playerLevel=41, baseExp=3960 },
												{ playerLevel=42, baseExp=4048 },
												{ playerLevel=43, baseExp=4136 },
												{ playerLevel=44, baseExp=4224 },
												{ playerLevel=45, baseExp=4312 },
												{ playerLevel=46, baseExp=4400 },
												{ playerLevel=47, baseExp=4488 },
												{ playerLevel=48, baseExp=4576 },
												{ playerLevel=49, baseExp=4664 },
												{ playerLevel=50, baseExp=4752 },
												{ playerLevel=51, baseExp=4840 },
												{ playerLevel=52, baseExp=4928 },
												{ playerLevel=53, baseExp=5016 },
												{ playerLevel=54, baseExp=5104 },
												{ playerLevel=55, baseExp=5192 },
												{ playerLevel=56, baseExp=5280 },
												{ playerLevel=57, baseExp=5368 },
												{ playerLevel=58, baseExp=5456 },
												{ playerLevel=59, baseExp=5544 },
												{ playerLevel=60, baseExp=5632 },
												{ playerLevel=61, baseExp=5720 },
												{ playerLevel=62, baseExp=5808 },
												{ playerLevel=63, baseExp=5896 },
												{ playerLevel=64, baseExp=5984 },
												{ playerLevel=65, baseExp=6072 },
												{ playerLevel=66, baseExp=6160 },
												{ playerLevel=67, baseExp=6248 },
												{ playerLevel=68, baseExp=6336 },
												{ playerLevel=69, baseExp=6424 },
												{ playerLevel=70, baseExp=6512 },
												{ playerLevel=71, baseExp=6600 },
												{ playerLevel=72, baseExp=6688 },
												{ playerLevel=73, baseExp=6776 },
												{ playerLevel=74, baseExp=6864 },
												{ playerLevel=75, baseExp=6952 },
												{ playerLevel=76, baseExp=7040 },
												{ playerLevel=77, baseExp=7128 },
												{ playerLevel=78, baseExp=7216 },
												{ playerLevel=79, baseExp=7304 },
												{ playerLevel=80, baseExp=7392 },
												{ playerLevel=81, baseExp=7480 },
												{ playerLevel=82, baseExp=7568 },
												{ playerLevel=83, baseExp=7656 },
												{ playerLevel=84, baseExp=7744 },
												{ playerLevel=85, baseExp=7832 },
												{ playerLevel=86, baseExp=7920 },
												{ playerLevel=87, baseExp=8008 },
												{ playerLevel=88, baseExp=8096 },
												{ playerLevel=89, baseExp=8184 },
												{ playerLevel=90, baseExp=8272 },
												{ playerLevel=91, baseExp=8360 },
												{ playerLevel=92, baseExp=8448 },
												{ playerLevel=93, baseExp=8536 },
												{ playerLevel=94, baseExp=8624 },
												{ playerLevel=95, baseExp=8712 },
												{ playerLevel=96, baseExp=8800 },
												{ playerLevel=97, baseExp=8888 },
												{ playerLevel=98, baseExp=8976 },
												{ playerLevel=99, baseExp=9064 },
												{ playerLevel=100, baseExp=9152 },
												{ playerLevel=101, baseExp=9328 },
												{ playerLevel=102, baseExp=9152 },
												{ playerLevel=103, baseExp=9416 },
												{ playerLevel=104, baseExp=9504 },
												{ playerLevel=105, baseExp=9592 },
												{ playerLevel=106, baseExp=9680 },
												{ playerLevel=107, baseExp=9768 },
												{ playerLevel=108, baseExp=9856 },
												{ playerLevel=109, baseExp=9944 },
												{ playerLevel=110, baseExp=10032 },
												{ playerLevel=111, baseExp=10120 },
												{ playerLevel=112, baseExp=10208 },
												{ playerLevel=113, baseExp=10296 },
												{ playerLevel=114, baseExp=10384 },
												{ playerLevel=115, baseExp=10472 },
												{ playerLevel=116, baseExp=10560 },
												{ playerLevel=117, baseExp=10648 },
												{ playerLevel=118, baseExp=10736 },
												{ playerLevel=119, baseExp=10824 },
												{ playerLevel=120, baseExp=10912 },
									}


--�����ӳ�: 
x229022_g_RoundRefixTable = {
												{ round=1,	refix=1.000  },
												{ round=2,	refix=1.051  },
												{ round=3,	refix=1.101  },
												{ round=4,	refix=1.152  },
												{ round=5,	refix=1.202  },
												{ round=6,	refix=1.253  },
												{ round=7,	refix=1.303  },
												{ round=8,	refix=1.354  },
												{ round=9,	refix=1.404  },
												{ round=10,	refix=1.455  },
												{ round=11,	refix=1.055  },
												{ round=12,	refix=1.156  },
												{ round=13,	refix=1.256  },
												{ round=14,	refix=1.357  },
												{ round=15,	refix=1.457  },
												{ round=16,	refix=1.558  },
												{ round=17,	refix=1.658  },
												{ round=18,	refix=1.759  },
												{ round=19,	refix=1.859  },
												{ round=20,	refix=1.960  },
												{ round=21,	refix=1.110  },
												{ round=22,	refix=1.261  },
												{ round=23,	refix=1.411  },
												{ round=24,	refix=1.562  },
												{ round=25,	refix=1.712  },
												{ round=26,	refix=1.863  },
												{ round=27,	refix=2.013  },
												{ round=28,	refix=2.164  },
												{ round=29,	refix=2.314  },
												{ round=30,	refix=2.465  },
												{ round=31,	refix=1.165  },
												{ round=32,	refix=1.366  },
												{ round=33,	refix=1.566  },
												{ round=34,	refix=1.767  },
												{ round=35,	refix=1.967  },
												{ round=36,	refix=2.168  },
												{ round=37,	refix=2.368  },
												{ round=38,	refix=2.569  },
												{ round=39,	refix=2.769  },
												{ round=40,	refix=2.970  },
												{ round=41,	refix=1.220  },
												{ round=42,	refix=1.471  },
												{ round=43,	refix=1.721  },
												{ round=44,	refix=1.972  },
												{ round=45,	refix=2.222  },
												{ round=46,	refix=2.473  },
												{ round=47,	refix=2.723  },
												{ round=48,	refix=2.974  },
												{ round=49,	refix=3.224  },
												{ round=50,	refix=3.475  },
												{ round=51,	refix=1.275  },
												{ round=52,	refix=1.576  },
												{ round=53,	refix=1.876  },
												{ round=54,	refix=2.177  },
												{ round=55,	refix=2.477  },
												{ round=56,	refix=2.778  },
												{ round=57,	refix=3.078  },
												{ round=58,	refix=3.379  },
												{ round=59,	refix=3.679  },
												{ round=60,	refix=3.980  },
												{ round=61,	refix=1.330  },
												{ round=62,	refix=1.681  },
												{ round=63,	refix=2.031  },
												{ round=64,	refix=2.382  },
												{ round=65,	refix=2.732  },
												{ round=66,	refix=3.083  },
												{ round=67,	refix=3.433  },
												{ round=68,	refix=3.784  },
												{ round=69,	refix=4.134  },
												{ round=70,	refix=4.485  },
												{ round=71,	refix=1.385  },
												{ round=72,	refix=1.786  },
												{ round=73,	refix=2.186  },
												{ round=74,	refix=2.587  },
												{ round=75,	refix=2.987  },
												{ round=76,	refix=3.388  },
												{ round=77,	refix=3.788  },
												{ round=78,	refix=4.189  },
												{ round=79,	refix=4.589  },
												{ round=80,	refix=4.990  },
												{ round=81,	refix=1.440  },
												{ round=82,	refix=1.891  },
												{ round=83,	refix=2.341  },
												{ round=84,	refix=2.792  },
												{ round=85,	refix=3.242  },
												{ round=86,	refix=3.693  },
												{ round=87,	refix=4.143  },
												{ round=88,	refix=4.594  },
												{ round=89,	refix=5.044  },
												{ round=90,	refix=5.495  },
												{ round=91,	refix=1.495  },
												{ round=92,	refix=1.996  },
												{ round=93,	refix=2.496  },
												{ round=94,	refix=2.997  },
												{ round=95,	refix=3.497  },
												{ round=96,	refix=3.998  },
												{ round=97,	refix=4.498  },
												{ round=98,	refix=4.999  },
												{ round=99,	refix=5.499  },
												{ round=100, refix=6.000 },
										}

x229022_g_HongyunRateTable = {
		{level=10,	value=400},
		{level=20,	value=332},
		{level=30,	value=332},
		{level=40,	value=284},
		{level=50,	value=249},
		{level=60,	value=220},
		{level=70,	value=200},
		{level=80,	value=180},
		{level=90,	value=166},
		{level=100, value=153},
		{level=110,	value=142},
		{level=120,	value=142},
		{level=130,	value=142},
		{level=140,	value=142},
		{level=150,	value=142},		
		}

function x229022_GetMapIndexByStringValue(stringV)
	for i, v in x229022_g_StrList do
		if v == stringV then
			return i-1
		end
	end
	local strText = format("C�n ph�i %s ��ng k� StrList trong", stringV)
	PrintStr(strText)
	return 0;
end

--�����Ա�ȡ �i�m�����Ϣ
function x229022_GetSexInfo(sex)
	local strSex = "huynh �y "
	if sex <= 0 then
		strSex = "mu�i �y "
	end
	local sexIndex = x229022_GetMapIndexByStringValue(strSex)
	return strSex, sexIndex
end


function x229022_GetOneMissionNpcEx(sceneId, currentNpcId)
	local nNpcId, strNpcName, strNpcScene, nSceneId, nPosX, nPosZ, strNPCDesc
	for i=1, 100 do
		nNpcId, strNpcName, strNpcScene, nSceneId, nPosX, nPosZ, strNPCDesc = GetOneMissionNpc(x229022_g_RenwulianNpc_Index)
		if GetName(sceneId, currentNpcId ) ~= strNpcName then
			--PrintStr("nNpcId=" .. nNpcId .. " currentNpcId=" .. currentNpcId )
			break
		end
	end
	return nNpcId, strNpcName, strNpcScene, nSceneId, nPosX, nPosZ, strNPCDesc
end

--/////////////////////////////////////////////////////////////////////
function x229022_WenHou_Accept(sceneId, selfId, targetId)

	local nNpcId, strNpcName, strNpcScene, nSceneId, nPosX, nPosZ, strNPCDesc = x229022_GetOneMissionNpcEx(sceneId, targetId)

	--������������б�
	local bCanAdd = AddMission( sceneId,selfId, x229022_g_MissionId, x229022_g_scriptId, 0, 0, 0 )
	if bCanAdd < 1 then
		AddText( sceneId, "#{WFRN_090213_01}" ) --hzp 2009-2-13
		return
	end
	
	--hzp 2009-2-13 begin<<
	local  PlayerName=GetName(sceneId,selfId)
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n߽ng "
	else
		PlayerSex = " c�c h� "
	end
	AddText(sceneId,"  " .. PlayerName .. PlayerSex .. ", nhi�m v� li�n ho�n..")
	-->>end
	
	SetMissionEvent(sceneId, selfId, x229022_g_MissionId, 4)
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: nhi�m v� li�n ho�n", MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, nSceneId, nPosX, nPosZ, strNpcName)

	-- �i�m������T�i 20c�i������to� � ���к�
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229022_g_MissionId)

	SetMissionByIndex(sceneId, selfId, misIndex, 0, 0) --����������ng�����(δ���)
	SetMissionByIndex(sceneId, selfId, misIndex, 1, x229022_g_SubMissionType.wenhou)
	SetMissionByIndex(sceneId, selfId, misIndex, 2, -1) --����ʱ������,��ʼ��Ϊ-1
	SetMissionByIndex(sceneId, selfId, misIndex, x229022_g_StrForePart, 0)--formet�ַ�������
	SetMissionByIndex(sceneId, selfId, misIndex, x229022_g_StrForePart+1, nNpcId)

	--����: 
	local missionInfo = {
			"L�u l�m kh�ng g�p %s %s (%d, %d) nh� qu�, c� th� gi�p ta chuy�n l�i v�n an t�i ng߶i ��",
			"%s %s (%d, %d) Di�c T�ng c� �n v�i ta, n�u c� th� thay ta th�m h�i, ta xin nh�n t�m th�nh t�nh n�y,",
			"Ta v� %s %s (%d, %d) giao h�u th�m s�u, nhi�u n�m kh�ng g�p r�t nhung nh�, phi�n ng߽i chuy�n l�i th�m c�a ta",
	}

	local strMissionTarget = format(missionInfo[random(getn(missionInfo))], strNpcScene, strNpcName, nPosX, nPosZ)
	AddText(sceneId, strMissionTarget)

	x229022_OnAccept_Necessary( sceneId, selfId, targetId )
end
--/////////////////////////////////////////////////////////////////////
function x229022_SuoQu_Accept(sceneId, selfId, targetId)

	local nNpcId, strNpcName, strNpcScene, nSceneId, nPosX, nPosZ, strNPCDesc = x229022_GetOneMissionNpcEx(sceneId, targetId)

	local nItemId, strItemName, strItemDesc
	for i=1, 100 do
		nItemId, strItemName, strItemDesc = GetOneMissionItem(x229022_g_RenwulianItem_Index)
		if IsEquipItem(nItemId) > 0 then
			local reqLevel = GeEquipReqLevel(nItemId)
			local playerLevel = GetLevel(sceneId, selfId)
			--������ȡװ��������ҵ�c�p+10to� � װ��.(�������������λ�to� � ����˵��,��ֹ��Ҵ�˵����c�pװ�������۶�����.)
			if playerLevel >= reqLevel and playerLevel < reqLevel+10 then
				break
			end
			if i == 100 then
				--"ͳͳ�����ʺ�ȥ ����")
				x229022_WenHou_Accept(sceneId, selfId, targetId)
				return
			end	--end if
			nItemId, strItemName, strItemDesc = GetOneMissionItem(x229022_g_RenwulianItem_Index)
		else
			break
		end --end if
	end --end for

	--������������б�
	local bCanAdd = AddMission( sceneId,selfId, x229022_g_MissionId, x229022_g_scriptId, 1, 0, 1 )
	if bCanAdd < 1 then
		AddText( sceneId, "#{WFRN_090213_01}" ) --hzp 2009-2-13
		return
	end
	
	--hzp 2009-2-13 begin<<
	local  PlayerName=GetName(sceneId,selfId)
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n߽ng "
	else
		PlayerSex = " c�c h� "
	end
	AddText(sceneId,"  " .. PlayerName .. PlayerSex .. ", nhi�m v� li�n ho�n..")
	-->> end
	
	SetMissionEvent(sceneId, selfId, x229022_g_MissionId, 4)

	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: nhi�m v� li�n ho�n", MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, nSceneId, nPosX, nPosZ, strNpcName)

	-- �i�m������T�i 20c�i������to� � ���к�
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229022_g_MissionId)

	SetMissionByIndex(sceneId, selfId, misIndex, 0, 0) --����������ng�����(δ���)
	SetMissionByIndex(sceneId, selfId, misIndex, 1, x229022_g_SubMissionType.suoqu)
	SetMissionByIndex(sceneId, selfId, misIndex, 2, -1) --����ʱ������,��ʼ��Ϊ-1
	SetMissionByIndex(sceneId, selfId, misIndex, x229022_g_StrForePart+2, nNpcId)
	SetMissionByIndex(sceneId, selfId, misIndex, x229022_g_StrForePart+1, nItemId)
	SetMissionByIndex(sceneId, selfId, misIndex, x229022_g_StrForePart, 1)--formet�ַ�������

	local missionInfo = {
				"Nghe n�i %s %s (%d, %d) c�n ph�i %s, phi�n ng߽i giao h�",
				"M�y ng�y qua %s %s (%d, %d) mu�n ��t t�i %s n�n ��ng ng�i kh�ng y�n, n�u ng߽i c� th� gi�p, �t c� l�i",
				"T�i �i, h�y mang %s %s (%d, %d) giao t�i %s, ng߽i ���c h�u th߷ng",
				"%s %s (%d, %d) nghi�n c�u b� k�p th�n c�ng, do thi�u %s n�n kh� tri�n khai, ng߽i t�i gi�p �i",
				"B�ng h�u ta %s %s (%d, %d) �ang � thu th�p %s, N�u ng߽i c� th� t�m ���c 1 chi�c, b�n ta s� r�t vui m�ng",
				}

	local strMissionTarget = format(missionInfo[random(getn(missionInfo))],
																									strNpcScene, strNpcName, nPosX, nPosZ, strItemName)
	AddText(sceneId, strMissionTarget)

	local demandItemId = GetMissionParam(sceneId, selfId, misIndex, x229022_g_StrForePart+1)
	if HaveItem(sceneId, selfId, demandItemId) > 0 then
		SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
	end

	x229022_OnAccept_Necessary( sceneId, selfId, targetId )
end

--/////////////////////////////////////////////////////////////////////
function x229022_Chongwu_Accept(sceneId, selfId, targetId)
	local petId, petName, petDesc, takeLevel
	for i = 1, 100 do
		petId, petName, petDesc = GetOneMissionPet(x229022_g_RenwulianPet_Index)
		
		--if 1==1 then
		--petId, petName, petDesc = 3000, "S�i Mi�u D� Sinh", "hahaha"
		--break
		--end
		takeLevel = GetPetTakeLevel(petId)
		if takeLevel >= 10 and takeLevel <= GetLevel(sceneId, selfId) then
			break
		elseif i == 10 then
			--ͳͳ�����ʺ�ȥ ����
			x229022_WenHou_Accept(sceneId, selfId, targetId)
			return
		end
	end

	local nNpcId, strNpcName, strNpcScene, nSceneId, nPosX, nPosZ, strNPCDesc = x229022_GetOneMissionNpcEx(sceneId, targetId)

	--������������б�
	local bCanAdd = AddMission( sceneId,selfId, x229022_g_MissionId, x229022_g_scriptId, 0, 0, 0 )
	if bCanAdd < 1 then
		AddText( sceneId, "#{WFRN_090213_01}" ) --hzp 2009-2-13
		return
	end
	
	--hzp 2009-2-13 begin<<
	local  PlayerName=GetName(sceneId,selfId)
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n߽ng "
	else
		PlayerSex = " c�c h� "
	end
	AddText(sceneId,"  " .. PlayerName .. PlayerSex .. ", nhi�m v� li�n ho�n..")
	-->> end
	
	SetMissionEvent(sceneId, selfId, x229022_g_MissionId, 3)
	SetMissionEvent(sceneId, selfId, x229022_g_MissionId, 4)
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: nhi�m v� li�n ho�n", MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, nSceneId, nPosX, nPosZ, strNpcName)

	-- �i�m������T�i 20c�i������to� � ���к�
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229022_g_MissionId)

	SetMissionByIndex(sceneId, selfId, misIndex, 0, 0) --����������ng�����(δ���)
	SetMissionByIndex(sceneId, selfId, misIndex, 1, x229022_g_SubMissionType.chongwu)
	SetMissionByIndex(sceneId, selfId, misIndex, 2, -1) --����ʱ������,��ʼ��Ϊ-1
	SetMissionByIndex(sceneId, selfId, misIndex, x229022_g_StrForePart+2, nNpcId)
	SetMissionByIndex(sceneId, selfId, misIndex, x229022_g_StrForePart+1, petId)

	SetMissionByIndex(sceneId, selfId, misIndex, x229022_g_StrForePart, 2)--formet�ַ�������

	local missionInfo = {
			"Nghe n�i %s %s (%d, %d) c�n ph�i %s, phi�n ng߽i giao h�",
			"M�y ng�y qua %s %s (%d, %d) mu�n ��t t�i %s n�n ��ng ng�i kh�ng y�n, n�u ng߽i c� th� gi�p, �t c� l�i",
			"T�i �i, h�y mang %s %s (%d, %d) giao t�i %s, ng߽i ���c h�u th߷ng",
			"%s %s (%d, %d) nghi�n c�u b� k�p th�n c�ng, do thi�u %s n�n kh� tri�n khai, ng߽i t�i gi�p �i",
			"B�ng h�u ta %s %s (%d, %d) �ang � thu th�p %s, N�u ng߽i c� th� t�m ���c 1 chi�c, b�n ta s� r�t vui m�ng",
			}

	local strMissionTarget = format(missionInfo[random(getn(missionInfo))],
																									strNpcScene, strNpcName, nPosX, nPosZ, petName)
	AddText(sceneId, strMissionTarget)

	--����������to� � ������ng���Ѿ�Th�a m�n�������
	for i=0, 6 do
		local petDataId = LuaFnGetPet_DataID(sceneId,selfId,i)
		if petDataId ~= nil and petDataId >= 0 then
		if GetPetName(petId) == GetPetName(petDataId) then
			SetMissionByIndex(sceneId,selfId,misIndex,0,1)					--��������ɱ�־��Ϊ1
			break
		end
	end
	end

	x229022_OnAccept_Necessary( sceneId, selfId, targetId )
end
--/////////////////////////////////////////////////////////////////////

function x229022_FubenZhanDou_Accept(sceneId, selfId, targetId)

	local round = GetMissionData(sceneId,selfId,MD_RENWULIAN_HUAN)
	-->80��,��������Cu�c chi�n ����.(���ڹ�to� � ��c�pT�i ��ҵ�c�p������,���滷to� � ����������Ѷ�,��20����ȡ����)
	if round > 80 then
		--ͳͳ�����ʺ�ȥ ����
		x229022_WenHou_Accept(sceneId, selfId, targetId)
		return
	end

	local nNpcId,strNpcName,strNpcScene,nSceneId,nPosX,nPosZ,strNPCDesc,sex=x229022_GetOneMissionNpcEx(sceneId, targetId)
	--������������б�
	local bCanAdd = AddMission( sceneId,selfId, x229022_g_MissionId, x229022_g_scriptId, 1, 0, 0 )
	if bCanAdd < 1 then
		AddText( sceneId, "#{WFRN_090213_01}" ) --hzp 2009-2-13
		return
	end
	
	--hzp 2009-2-13 begin<<
	local  PlayerName=GetName(sceneId,selfId)
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n߽ng "
	else
		PlayerSex = " c�c h� "
	end
	AddText(sceneId,"  " .. PlayerName .. PlayerSex .. ", nhi�m v� li�n ho�n..")
	-->> end
	
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: nhi�m v� li�n ho�n", MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, nSceneId, nPosX, nPosZ, strNpcName)

	-- �i�m������T�i 20c�i������to� � ���к�
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229022_g_MissionId)
	SetMissionEvent(sceneId, selfId, x229022_g_MissionId, 4)

	SetMissionByIndex(sceneId, selfId, misIndex, 0, 0) --����������ng�����(δ���)
	SetMissionByIndex(sceneId, selfId, misIndex, 1, x229022_g_SubMissionType.fubenjiaoxun)
	SetMissionByIndex(sceneId, selfId, misIndex, 2, -1) --����ʱ������,��ʼ��Ϊ-1
	SetMissionParamByIndexEx(sceneId, selfId, misIndex, 3, 0, 0) --Ҫ��ɱ��to� � monster����, ��T�i ��û�и�ֵ
	SetMissionParamByIndexEx(sceneId, selfId, misIndex, 3, 1, 0) --�� gi�t ch�t to� � monster����

	SetMissionByIndex(sceneId, selfId, misIndex, x229022_g_StrForePart+1, nNpcId)
	--local strSex, sexIndex = x229022_GetSexInfo(sex)
	--SetMissionByIndex(sceneId, selfId, misIndex, x229022_g_StrForePart+2, sexIndex)

	SetMissionByIndex(sceneId, selfId, misIndex, x229022_g_StrForePart, 3)--formet�ַ�������

	local missionInfo = {
				"Nghe n�i %s %s (%d, %d) �ang l�m �i�u �c, ng߽i h�y thay ta �i d�y b�o h�n",
				"%s %s (%d, %d) t� tr߾c t�i nay kh�ng c� ti�ng t�m l߽ng thi�n, di�t tr� c�i �c � cao c�i thi�n l� vi�c m� �i ta c�n l�m, t�i cho ng߽i 1 b�i h�c ��y",
				"Ta nghe n�i %s %s (%d, %d) g�n ��y l�i ph�m m�y �n, n�u kh�ng d�y d�, h�n s� kh�ng thu ki�m, nhi�m v� n�y giao cho ng߽i",
		}
	local strMissionTarget = format(missionInfo[random(getn(missionInfo))],
					strNpcScene,strNpcName, nPosX, nPosZ)

	AddText(sceneId, strMissionTarget)

	x229022_OnAccept_Necessary( sceneId, selfId, targetId )
end

function x229022_ExchangeMissionItemForGoodBadFn( sceneId, selfId,targetId, needPoint )
	--����������Ʒ
	if( needPoint < 0 ) then
		return
	end
	local iDayTime = GetMissionData(sceneId,selfId,MD_RENWULIAN_EXCHANGEITEM)
	--begin modified by zhangguoxin 090208
	--local CurTime = GetHourTime()		--��ǰʱ��
	--local CurDaytime = floor(CurTime/100)	--��ǰʱ��(��)
	local CurDaytime = GetDayTime()	--��ǰʱ��(��)
	--begin modified by zhangguoxin 090208
	if iDayTime == CurDaytime then
		BeginEvent(sceneId)
			AddText(sceneId, "1 ng�y ch� c� th� d�ng tr� gi� thi�n �c �i 1 l�n!")
		EndEvent()
		DispatchMissionTips(sceneId, selfId)
		return
	end


	local misIndex = GetMissionIndexByID(sceneId,selfId,x229022_g_MissionId)
	local itemId = GetMissionParam(sceneId, selfId, misIndex, x229022_g_StrForePart+1)

	local _, strItemName, strItemDesc = GetItemInfoByItemId(itemId)
	local goodbadValue = LuaFnGetHumanGoodBadValue(sceneId, selfId)
	if goodbadValue < needPoint then
		BeginEvent(sceneId)
			AddText(sceneId, "�i�m thi�n �c c�a ng߽i kh�ng ��, c�n d�n th�m nhi�u ng߶i m�i t�i")
		EndEvent()
		DispatchMissionTips(sceneId, selfId)
	else
		BeginAddItem(sceneId)
		AddItem(sceneId,itemId, 1)
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0 then
			AddItemListToHuman(sceneId,selfId)
			--���������Ѿ����
			SetMissionByIndex(sceneId,selfId,misIndex,0,1)
		end

		LuaFnSetHumanGoodBadValue(sceneId, selfId, goodbadValue-needPoint)
		local str = format("Ng߽i t�n #Y%d #W�i�m thi�n �c, �� ��t ���c th� m�nh mu�n #B%s", needPoint, strItemName)
		SetMissionData(sceneId, selfId, MD_RENWULIAN_EXCHANGEITEM, CurDaytime)

		Msg2Player(  sceneId, selfId,str, MSG2PLAYER_PARA )
	end


end

function x229022_ExchangeMissionItemForGoodBad( sceneId, selfId,targetId )

	--����������Ʒ
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229022_g_MissionId)
	local itemId = GetMissionParam(sceneId, selfId, misIndex, x229022_g_StrForePart+1)
	local _, strItemName, strItemDesc = GetItemInfoByItemId(itemId)

	local nNeedPoint
	if IsEquipItem(itemId) == 1 then --600+4*Lv
		nNeedPoint = 600 + 4 * GeEquipReqLevel(itemId)
	else	--600+4*��Ʒ���ε�c�p
		nNeedPoint = 600 + 4 * 1 --��Ʒ���ε�c�pĿǰû�У.�
	end

	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,x229022_g_scriptId);
		UICommand_AddInt(sceneId,targetId);
		UICommand_AddInt(sceneId,nNeedPoint)
		UICommand_AddString(sceneId,"ExchangeMissionItemForGoodBadFn");
		local str = format("Ng߽i ph�i �i #B%s #W, c�n ph�i ti�u hao tr� gi� thi�n �c #Y%d #W�i�m", strItemName, nNeedPoint)
		UICommand_AddString(sceneId,str);
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)

end

function x229022_CurrentRoundStorageFn( sceneId, selfId,targetId, needPoint )
	if needPoint < 0 then
		return
	end
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229022_g_MissionId)
	local leaveSecond = GetMissionParam(sceneId, selfId, misIndex, 7)
	local goodbadValue = LuaFnGetHumanGoodBadValue(sceneId, selfId)

	--PrintNum(leaveSecond)
	if leaveSecond < 10*60000 then
		BeginEvent(sceneId)
			AddText(sceneId, "Ng߽i �� v��t 20 ph�t, kh�ng th� l�u l�i nhi�m v�")
		EndEvent()
		DispatchMissionTips(sceneId, selfId)
	elseif goodbadValue < needPoint then
		BeginEvent(sceneId)
			AddText(sceneId, "�i�m thi�n �c c�a ng߽i kh�ng ��, c�n d�n th�m nhi�u ng߶i m�i t�i")
		EndEvent()
		DispatchMissionTips(sceneId, selfId)
	else
		LuaFnSetHumanGoodBadValue(sceneId, selfId, goodbadValue-needPoint)
		local str = format("Ng߽i t�n #Y%d #W�i�mtr� gi� thi�n �c, nhi�m v� li�n ho�n s� v�ng �� l�u l�i", needPoint)
		Msg2Player(  sceneId, selfId,str, MSG2PLAYER_PARA )
		--���������Ѿ��洢to� � ��־
		SetMissionByIndex(sceneId,selfId,misIndex,2,1)
		--ֹͣ����ʱ��
		StopMissionTimer(sceneId, selfId, x229022_g_MissionId)
		SetMissionData(sceneId,selfId,x229022_g_StopWatch_Pause_Flag,1)
	end

	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end

function x229022_CurrentRoundStorage( sceneId, selfId,targetId )
	local  nNeedPoint = 1000
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,x229022_g_scriptId);
		UICommand_AddInt(sceneId,targetId);
		UICommand_AddInt(sceneId,nNeedPoint)
		UICommand_AddString(sceneId,"CurrentRoundStorageFn");
		local str = format("L�u l�i s� v�ng c�n ph�i ti�u hao tr� gi� thi�n �c #Y%d #W�i�m, ng߽i x�c �nh kh�ng?", nNeedPoint)
		UICommand_AddString(sceneId,str);
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)

end

function x229022_ContinueStoredMissionFn(sceneId, selfId, targetId,flag)
	if flag < 0 then
		return
	end
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229022_g_MissionId)		-- �i�m������T�i 20c�i������to� � ���к�
	-- �i�m������
	local round = GetMissionData(sceneId,selfId,MD_RENWULIAN_HUAN)
	local str = format("Ng߽i �� ti�p t�c nhi�m v� li�n ho�n, s� v�ng hi�n th�i l� #Y%d #Wv�ng", round)
	Msg2Player(  sceneId, selfId,str, MSG2PLAYER_PARA )
	--��������ʱ��
	StartMissionTimer(sceneId, selfId, x229022_g_MissionId)
	--���������Ѿ��洢to� � ��־
	SetMissionByIndex(sceneId,selfId,misIndex,2,0)
	SetMissionData(sceneId,selfId,x229022_g_StopWatch_Pause_Flag,0)
	--��ʱ���������
	local leaveSecond = GetMissionParam(sceneId, selfId, misIndex, 7)
	local elapseSecond = 30*60 - leaveSecond/1000
	SetMissionData(sceneId,selfId,MD_RENWULIAN_ACCPETTIME,LuaFnGetCurrentTime()-elapseSecond)

	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end

function x229022_ContinueStoredMission(sceneId, selfId, targetId)

	-- �i�m������
	local round = GetMissionData(sceneId,selfId,MD_RENWULIAN_HUAN)

	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,x229022_g_scriptId);
		UICommand_AddInt(sceneId,targetId);
		UICommand_AddInt(sceneId,round)
		UICommand_AddString(sceneId,"ContinueStoredMissionFn");
		UICommand_AddString(sceneId,"Nhi�m v� li�n ho�n l�n tr߾c c�a ng߽i �� ti�n h�nh t�i th� #Y" .. tostring(round) .. "#Wv�ng, ng߽i x�c �nh ti�p t�c?");
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)

end

function x229022_AddMissionDirectly(sceneId, selfId,targetId)
  	BeginEvent(sceneId)
  	
  	--hzp 2009-2-13 begin<<
		--local  PlayerName=GetName(sceneId,selfId)
		--local  PlayerSex=GetSex(sceneId,selfId)
		--if PlayerSex == 0 then
		--	PlayerSex = " c� n߽ng "
		--else
		--	PlayerSex = " c�c h�"
		--end
		--AddText(sceneId,"  " .. PlayerName .. PlayerSex .. ",��������...")
		-->> end
		
    	--testing begin
    	--if 1==1 then
	   	--	x229022_FubenZhanDou_Accept(sceneId, selfId, targetId)
   		--	EndEvent()
			--DispatchEventList(sceneId,selfId,targetId)
			--return
    	--end
    	--testing end
    	
	  	local ret = random(100)

		if ret < 5 then			--1��	��NPC�ʺ�(5%)
			x229022_WenHou_Accept(sceneId, selfId, targetId)
		elseif ret < 85 then	--2��	���.�80%)
			ret = random(100)
			if ret < 62 then -- 70 	��ȡ��Ʒ(62%)����=1-��Ʒto� � 
				x229022_SuoQu_Accept(sceneId, selfId, targetId)
			else
				x229022_Chongwu_Accept(sceneId, selfId, targetId)
			end
		else									--4��	Cu�c chi�n (���븱��)(35%)
			x229022_FubenZhanDou_Accept(sceneId, selfId, targetId)
		end

	EndEvent( )
	DispatchEventList(sceneId,selfId,targetId)
end

function x229022_CostMoneyFn(sceneId, selfId, targetId,flag)
	if flag < 0 then
		return
	end
	if x229022_CheckAccept(sceneId,selfId) > 0 then
		--�쿴��Ǯ��ng���㹻
		if GetMoney(sceneId, selfId)+ GetMoneyJZ( sceneId, selfId ) < GetLevel(sceneId, selfId)*1000 then ---dengxx
			BeginEvent(sceneId)
				AddText(sceneId, "Ng�n l��ng c�a ng߽i h�nh nh� kh�ng ��")
			EndEvent()
			DispatchEventList(sceneId,selfId,-1)
		else
			x229022_AddMissionDirectly(sceneId, selfId,targetId)
		end
	end
end
--/////////////////////////////////////////////////////////////////////
--**********************************
--�¼��б�
--**********************************
function x229022_UpdateEventList( sceneId, selfId,targetId )
	if IsHaveMission(sceneId,selfId,x229022_g_MissionId) > 0 then
		local misIndex = GetMissionIndexByID(sceneId,selfId,x229022_g_MissionId)		-- �i�m������T�i 20c�i������to� � ���к�
		local missionType = GetMissionParam(sceneId, selfId, misIndex, 1)
		if 1 == GetNumText() then
			--���ƶ�ֵ��ȡ����������Ʒ --�����
			x229022_ExchangeMissionItemForGoodBad( sceneId, selfId,targetId )
			return
		elseif 2 == GetNumText() then
			--�洢��ǰ���� --�����
			x229022_CurrentRoundStorage( sceneId, selfId,targetId )
			return
		elseif 3 == GetNumText() then
			x229022_ContinueStoredMission(sceneId, selfId, targetId)
			return
		end

		if missionType == x229022_g_SubMissionType.wenhou then
			if x229022_IsDemandNpc(sceneId, selfId, targetId) == 1 then
				SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
				if x229022_CheckSubmit( sceneId, selfId ) > 0 then
					--������������to� � ��Ϣ
					BeginEvent(sceneId)
						AddText(sceneId, x229022_g_MissionName)
						AddText(sceneId, "A! ng߽i r�t cu�c c�ng t�i, ��ng l�c c� vi�c c�n ph�i ng߽i gi�p ��")
					EndEvent( )
				end
				DispatchMissionContinueInfo(sceneId, selfId, targetId, x229022_g_scriptId, x229022_g_MissionId, x229022_g_scriptId)
			end
		elseif	missionType == x229022_g_SubMissionType.suoqu then
			--������������to� � ��Ϣ
			local itemId = GetMissionParam(sceneId, selfId, misIndex, x229022_g_StrForePart+1)
			local _, strItemName, _ = GetItemInfoByItemId(itemId)

			BeginEvent(sceneId)
				AddText(sceneId, x229022_g_MissionName)
				AddText(sceneId, "Ta ph�i #B" .. strItemName .. "#W ng߽i mang t�i cho ta ch�a?")
			EndEvent( )
			local bDone = x229022_CheckSubmit( sceneId, selfId )
			DispatchMissionDemandInfo(sceneId, selfId, targetId, x229022_g_scriptId, x229022_g_MissionId, bDone,x229022_g_scriptId)
		elseif 	missionType == x229022_g_SubMissionType.chongwu then
			--������������to� � ��Ϣ
			local petDataId = GetMissionParam(sceneId, selfId, misIndex, x229022_g_StrForePart+1)
			local strItemName = GetPetName(petDataId)

			BeginEvent(sceneId)
				AddText(sceneId, x229022_g_MissionName)
				AddText(sceneId, "Tr�n th� ta c�n #B" .. strItemName .. "#W ng߽i hi�n c� kh�ng?")
			EndEvent( )
			local bDone = x229022_CheckSubmit( sceneId, selfId )
			DispatchMissionDemandInfo(sceneId, selfId, targetId, x229022_g_scriptId, x229022_g_MissionId, bDone,x229022_g_scriptId)
		elseif missionType == x229022_g_SubMissionType.fubenjiaoxun then
			--����Ѿ�����˽�ѵto� � ����
			if x229022_CheckSubmit( sceneId, selfId ) > 0 then
				BeginEvent(sceneId)
					AddText(sceneId, x229022_g_MissionName)
					AddText(sceneId, "Qu� nhi�n v� c�ng cao c߶ng, ta kh�ng d�m l�m �i�u �c n�a, nh�ng ta c�n c� ch�t chuy�n c�n ph�i ng߽i gi�p ��")
				EndEvent( )
				DispatchMissionContinueInfo(sceneId, selfId, targetId, x229022_g_scriptId, x229022_g_MissionId, x229022_g_scriptId)
			else
				--����������ng�ӳ�,���ᴴ������
				--local teamLeaderID = GetTeamLeader(sceneId, selfId)
				--local nearmembercount = GetNearTeamCount(sceneId, selfId)
				--if teamLeaderID ~= selfId or nearmembercount < 2 then --��������Լ�T�i ��
				--	BeginEvent(sceneId)
				--		AddText(sceneId, "ƾ�㵥ǹƥ��,Ҳ��������,����ng��Щ����������.\n")
				--	EndEvent()
				--	DispatchEventList(sceneId, selfId, targetId)
				--else
					local str
					local ret = random(3)
					if ret == 1 then
						str = "Do ng߽i mu�n d�y b�o ta, mu�n �ng th� v�i ta, h�y �u v�i thu�c h� ta tr߾c, xem ng߽i l�i h�i ra sao. \n"
					elseif ret ==  2 then
						str = "Do ng߽i mu�n d�y b�o ta, t�i ��y, ta cho ng߽i bi�t tay. \n"
				        else
						str = "R�nh nh�, cho ng߽i n�m m�i l�i h�i c�a ta! cho ng߽i ch�t. \n"
					end

					BeginEvent(sceneId)
						AddText(sceneId, str)
					EndEvent()
					DispatchEventList(sceneId, selfId, targetId)
					local nearmembercount = GetNearTeamCount(sceneId, selfId)
					if nearmembercount <= 0 then
						nearmembercount = 1
					end
					SetMissionParamByIndexEx(sceneId, selfId, misIndex, 3, 0, nearmembercount) --��ǰ���ø�����Ҫ��ɱ��to� � monster����
					--���ô���������ں���
					CallScriptFunction(229023 , "MakeCopyScene", sceneId, selfId, nearmembercount)
				--end
			end
		end

	--ֻ��T�i �����������m�t �ν�������ng�Ž��������ж�
  elseif GetName(sceneId, targetId) == x229022_g_Name then
 		--PrintStr(GetName(sceneId, targetId))
		--PrintStr(x229022_g_Name)
		if GetName(sceneId, targetId) == x229022_g_Name then
			local costMoney = GetLevel(sceneId, selfId)*1000
			BeginUICommand(sceneId)
				UICommand_AddInt(sceneId,x229022_g_scriptId);
				UICommand_AddInt(sceneId,targetId);
				UICommand_AddInt(sceneId,costMoney)
				UICommand_AddString(sceneId,"CostMoneyFn");
				UICommand_AddString(sceneId,"Ph�i nh�n nhi�m v� n�y, c�n ph�i n�p 1 l�n l� #{_MONEY" .. tostring(costMoney) .. "}, Ng߽i x�c nh�n ch�a?");  --dengxx
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 24)
			return
		end
	else
		if x229022_CheckAccept(sceneId,selfId) > 0 then
			x229022_AddMissionDirectly(sceneId, selfId,targetId)
		end
  end
end

--**********************************
--�¼��������
--**********************************
function x229022_OnDefaultEvent( sceneId, selfId,targetId )
	--PrintStr("OnDefaultEvent...")
	x229022_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�о��¼�
--**********************************
function x229022_OnEnumerate( sceneId, selfId, targetId )
	--local f = openfile("D:/randomtest.txt", 'w')
	--for i=1, 10000 do
	--	write(f, tostring(random(10000)))
	--	write(f, tostring("\r\n"))
	--end
	--closefile(f)


	--��ʱ������������
	--if 1==1 then
	--	return
	--end
	--��������ɹ�C�i n�y ����
		if IsMissionHaveDone(sceneId,selfId,x229022_g_MissionId) > 0 then
    	return
	--Th�a m�n�����������
		elseif IsHaveMission(sceneId,selfId,x229022_g_MissionId) > 0 then
			local misIndex = GetMissionIndexByID(sceneId,selfId,x229022_g_MissionId)
			--�����ng��ȡ��Ʒ����ʾ���ƶ�ֵ���Ի�ȡ������Ʒ
			if GetMissionParam(sceneId,selfId,misIndex,1) == x229022_g_SubMissionType.suoqu then
				AddNumText(sceneId, x229022_g_scriptId,x229022_g_GoodBadDescTable[1].str,1,1);
			end

			--local missionType = GetMissionParam(sceneId, selfId, misIndex, 1)
			--if missionType == x229022_g_SubMissionType.fubenjiaoxun then
			--	AddNumText(sceneId, x229022_g_scriptId,x229022_g_MissionName,2,-1);
			--end
			if GetName(sceneId,targetId) == x229022_g_Name then
				--����Ѿ��洢����������,����ʾ����������
				if GetMissionParam(sceneId,selfId,misIndex, 2) == 1 then
					AddNumText(sceneId, x229022_g_scriptId,x229022_g_GoodBadDescTable[3].str,1,3);
				else
					AddNumText(sceneId, x229022_g_scriptId,x229022_g_GoodBadDescTable[2].str,1,2);
				end
			end
	--Th�a m�n�����������
    elseif GetName(sceneId,targetId) == x229022_g_Name then
   		--��ҵ�c�p>=60c�p
			if GetLevel(sceneId, selfId) >= 60 then
				AddNumText(sceneId,x229022_g_scriptId, x229022_g_MissionName, 1, -1);
			end
    end
end

--**********************************
--���Ti�p th�����
--**********************************
function x229022_CheckAccept( sceneId, selfId )
	--test begin
	--if 1== 1 then
	--	return 1
	--end
	--test end
	local nLevel = LuaFnGetLevel(sceneId, selfId)

	--��ҵ��ν���������ʱ�����ϴ������������ʱ��֮ʱ���>48Сʱ
	local iDayCount=GetMissionData(sceneId,selfId,MD_RENWULIAN_DAYCOUNT)

	-- �i�m������
	local round = GetMissionData(sceneId,selfId,MD_RENWULIAN_HUAN)
	if round < 50 then
		if (LuaFnGetCurrentTime()-iDayCount) < 15*60 then
			BeginEvent(sceneId)
				AddText(sceneId, "Kho�ng c�ch gi�a 2 l�n nhi�m v� li�n ho�n l� 15 ph�t, xin gi� y�n l�ng, kh�ng l�m �n")
			EndEvent()
			DispatchEventList(sceneId,selfId,-1)
			return 0
		end
	elseif round == 100 then
		if (LuaFnGetCurrentTime()-iDayCount) < 48*60*60 then
			BeginEvent(sceneId)
				AddText(sceneId, "Kho�ng c�ch gi�a 2 l�n nhi�m v� li�n ho�n l� 48 canh gi�, xin gi� y�n l�ng, kh�ng l�m �n")
			EndEvent()
			DispatchEventList(sceneId,selfId,-1)
			return 0
		else
			SetMissionData(sceneId, selfId, MD_RENWULIAN_HUAN, 0)
		end
	elseif round >= 50 then
		--PrintNum(CurDaytime*96 + CurQuarterTime)
		--PrintNum(iDayTime*96 + iQuarterTime)
		--PrintNum( ((CurDaytime*96 + CurQuarterTime) - (iDayTime*96 + iQuarterTime)) )
		if (LuaFnGetCurrentTime()-iDayCount) < 24*60*60 then
			BeginEvent(sceneId)
				AddText(sceneId, "Kho�ng c�ch gi�a 2 l�n nhi�m v� li�n ho�n l� 24 canh gi�, xin gi� y�n l�ng, kh�ng l�m �n")
			EndEvent()
			DispatchEventList(sceneId,selfId,-1)
			return 0
		end
	end

	--���to� � Я��Kinh nghi�m����ҿ�Я��Kinh nghi�m����(��Я��to� � Kinh nghi�m�Ѵ�����,��Щ�������Ұ�)
	if GetExp(sceneId, selfId)>= GetFullExp(sceneId, selfId) then
		BeginEvent(sceneId)
			AddText(sceneId, "Kinh nghi�m ng߽i mang theo �� v��t ng��ng, h�y d�ng b�t r�i t�i t�m ta")
		EndEvent()
		DispatchEventList(sceneId,selfId,-1)
		return 0
	end
	return 1;
end

--**********************************
--Ti�p th�
--**********************************
function x229022_OnAccept_Necessary( sceneId, selfId, targetId )

	-- �i�m������
	local round = GetMissionData(sceneId,selfId,MD_RENWULIAN_HUAN)
	if 0 == round and GetName(sceneId, targetId) == x229022_g_Name then
		--���Ѽ���:ֻ�е�m�t �ν�,�������½�,ʱ�䵽�����Զ�ɾ���Ż��շ�,Ҳ����ng����=0ʱ
		--CostMoney(sceneId, selfId, GetLevel(sceneId, selfId)*1000)             
		LuaFnCostMoneyWithPriority(sceneId, selfId, GetLevel(sceneId, selfId)*1000)
	end

	round = round + 1
	if round > 100 then
		round = 1
	end
	--��������1

	SetMissionData(sceneId, selfId, MD_RENWULIAN_HUAN, round)
	--test code {
	--SetMissionData(sceneId, selfId, MD_RENWULIAN_HUAN, 100)
	--local round = GetMissionData(sceneId,selfId,MD_RENWULIAN_HUAN)
	-- }

	--��������ʱ��
	StartMissionTimer(sceneId, selfId, x229022_g_MissionId)

	local misIndex = GetMissionIndexByID(sceneId,selfId,x229022_g_MissionId)

	SetMissionByIndex(sceneId, selfId, misIndex, 7, 30*60*1000) --��������to� � ����ʱ��Ϊ30 ph�t

	SetMissionData(sceneId, selfId, MD_RENWULIAN_ACCPETTIME, LuaFnGetCurrentTime())

end

--**********************************
--����
--**********************************
function x229022_OnAbandon( sceneId, selfId )
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229022_g_MissionId)
	--ֹͣ����ʱ��
	StopMissionTimer(sceneId, selfId, x229022_g_MissionId)
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x229022_g_MissionId )

	--����ѭ������to� � ʱ��
	SetMissionData(sceneId,selfId,MD_RENWULIAN_DAYCOUNT,LuaFnGetCurrentTime())
	SetMissionData(sceneId, selfId, MD_RENWULIAN_HUAN, 0)

end

--**********************************
--����
--**********************************
function x229022_OnContinue( sceneId, selfId, targetId )
	BeginEvent(sceneId)

		AddText(sceneId,x229022_g_MissionName)
		local str
		local misIndex = GetMissionIndexByID(sceneId,selfId,x229022_g_MissionId)
		local missionType = GetMissionParam(sceneId, selfId, misIndex, 1)
		if missionType == x229022_g_SubMissionType.wenhou then
			str = "�a t� ng߽i t�i ��a tin, t�t qu� t�t qu�"
		elseif missionType == x229022_g_SubMissionType.suoqu
			or missionType == x229022_g_SubMissionType.chongwu then
			str = "Ch�, th�c l�ng c�m t� ng߽i, ta c�n c� ch�t chuy�n c�n ph�i ng߽i gi�p ��"
		elseif missionType == x229022_g_SubMissionType.fubenjiaoxun
			or missionType == x229022_g_SubMissionType.fubenduowu then
			str = "Qu� nhi�n v� c�ng cao c߶ng, ta kh�ng d�m l�m �i�u �c n�a, nh�ng ta c�n c� ch�t chuy�n c�n ph�i ng߽i gi�p ��"
		end

		AddText(sceneId,str)

	EndEvent( )
	DispatchMissionContinueInfo(sceneId, selfId, targetId, x229022_g_scriptId, x229022_g_MissionId,x229022_g_scriptId)
end

--**********************************
--�����ng������ύ
--**********************************
function x229022_CheckSubmit( sceneId, selfId )
  if IsHaveMission( sceneId, selfId, x229022_g_MissionId ) <= 0 then
		return 0
	end

	--T�i ���ж��ύ������ng�����,��������Ӧ����
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229022_g_MissionId)
	local missionType = GetMissionParam(sceneId, selfId, misIndex, 1)

	--�쿴������ng�����
	local bCompletion = GetMissionParam(sceneId, selfId, misIndex, 0)
	--PrintNum(bCompletion)
	if bCompletion > 0 then
		if missionType == x229022_g_SubMissionType.wenhou then
			return 1
		elseif missionType == x229022_g_SubMissionType.chongwu then
			local demandPetId = GetMissionParam(sceneId, selfId, misIndex, x229022_g_StrForePart+1)
			--����������to� � ������ng���Ѿ�Th�a m�n�������
			for i=0, 6 do
				local petDataId = LuaFnGetPet_DataID(sceneId,selfId,i)
				if petDataId ~= nil and petDataId >= 0 then
					if GetPetName(demandPetId) == GetPetName(petDataId) then
					        return 2
			        	end
			        end
			end
		elseif missionType == x229022_g_SubMissionType.suoqu then
			local demandItemId = GetMissionParam(sceneId, selfId, misIndex, x229022_g_StrForePart+1)
			if HaveItem(sceneId, selfId, demandItemId) > 0 then
				if LuaFnGetAvailableItemCount(sceneId, selfId, demandItemId) >= 1 then
					if IsEquipItem(demandItemId) == 1 then
						return 2
					else
						return 1
					end
				else
					BeginEvent(sceneId)
						AddText(sceneId, "V�t ph�m c�a c�c h� hi�n kh�ng d�ng ���c ho�c �� b� kh�a.")
					EndEvent( )
					DispatchMissionTips(sceneId,selfId)
					return 0
				end
			else
				BeginEvent(sceneId)
					AddText(sceneId, "Thi�u v�t ph�m m� nhi�m v� c�n")
				EndEvent()
				DispatchMissionTips(sceneId, selfId)
				return 0
			end
		elseif missionType == x229022_g_SubMissionType.fubenjiaoxun then
				return 1
		end
	end
	return 0
end

--////////////////////////////////////////////////////////////////
--Ч�ʿ�T�i C++���Ż�,��ʱ����,��Ч��T�i ��
--////////////////////////////////////////////////////////////////
--function GetMissinonItemByCurrentHuan(playerLevel, round)
--	if round == 50 then
--		local itemId, itemName
--		local reqItemGrade = playerLevel / 10;
--		for i = 1, 5000 do
--			itemId, itemName = GetOneMissionBonusItem(x229022_g_RenwulianItem_Index)
--			local itemGrade = GetCommonItemGrade(itemId)
--			if itemGrade == reqItemGrade then
--				return itemId, itemName
--			end
--		end
--	elseif round == 100 then
--		local itemId, itemName
--		local reqItemGrade = (playerLevel+10) / 10;
--		for i = 1, 5000 do
--			itemId, itemName = GetOneMissionBonusItem(x229022_g_RenwulianItem_Index)
--			local itemGrade = GetCommonItemGrade(itemId)
--			if itemGrade == reqItemGrade then
--				return itemId, itemName
--			end
--		end
--	else
--		PrintStr("round=" .. round .. "�Ƿ�!")
--	end
--end

--**********************************
--����������
--**********************************
function x229022_MissionBonus(sceneId, selfId)
	local playerLevel = GetLevel(sceneId, selfId)
	local round = GetMissionData(sceneId,selfId,MD_RENWULIAN_HUAN)
	--�����50��,������ҵ�c�p(ͬ��c�p)����������������������ԭ��m�t ��(����100%).
	if round == 50 then
		local itemId, itemName = GetRenwulianMissionBonusItemByLevel(x229022_g_RenwulianItem50_Index, playerLevel)
		BeginAddItem(sceneId)
			AddItem(sceneId,itemId, 1)
		if EndAddItem(sceneId,selfId) > 0 then
			AddItemListToHuman(sceneId,selfId)
			local szItemTransfer = GetItemTransfer(sceneId,selfId,0)
			Msg2Player(sceneId, selfId, "Ng߽i �� ��t ���c 1 c�i " .. itemName, MSG2PLAYER_PARA )
			local str = "#W#{_INFOUSR" .. LuaFnGetName(sceneId, selfId) .. "}#cffffccSau nh�ng n� l�c kh�ng ng�ng, �� ho�n th�nh 50 v�ng nhi�m v� li�n ho�n c�a#R V߽ng Phu Nh�n#cffffcc, thu ���c#W#{_INFOMSG" .. szItemTransfer .. "}#cffffcc ph�n th߷ng."
			BroadMsgByChatPipe(sceneId, selfId, str, 4)
		else
			BeginEvent(sceneId)
				AddText(sceneId, "Tay n�i c�a ng߽i �� �y!")
			EndEvent()
			DispatchMissionTips(sceneId, selfId)
			return 0
		end
	--�������100��,������ҵ�c�p(ͬ��c�p+10)����������������������ԭ��(����[װ��]������)m�t ��(����100%).
	elseif round == 100 then

		local itemId, itemName, itemDesc, broadcastType = GetOneMissionBonusItem(x229022_g_RenwulianItem100_Index)
		local szItemTransfer = ""
		BeginAddItem(sceneId)
			AddItem(sceneId,itemId, 1)
			AddItem(sceneId, 30008034, 1) --����m�t �Ž��ɰ
		if EndAddItem(sceneId,selfId) > 0 then
			AddItemListToHuman(sceneId,selfId)
			
			szItemTransfer_0 = GetItemTransfer(sceneId, selfId, 0)
			szItemTransfer_1 = GetItemTransfer(sceneId, selfId, 1)
			
			Msg2Player(sceneId, selfId, "Ng߽i �� ��t ���c 1 c�i " .. itemName, MSG2PLAYER_PARA )
			Msg2Player(sceneId, selfId, "C�c h� �� nh�n ���c m�t �Ž��ɰ", MSG2PLAYER_PARA )
			
			local targetStr = "#{_INFOMSG".. szItemTransfer_0 .."}"
			targetStr = targetStr .. "��m�t ��#{_INFOMSG" .. szItemTransfer_1 .. "}"
			local str = "#W#{_INFOUSR"..LuaFnGetName(sceneId, selfId) .. "}#cffffccSau nh�ng n� l�c kh�ng ng�ng, �� ho�n th�nh 100 v�ng nhi�m v� li�n ho�n c�a $R V߽ng Phu Nh�n#cffffcc, ��t ���c#W#{_INFOMSG" .. szItemTransfer .. "}#cffffcc ph�n th߷ng."
			BroadMsgByChatPipe(sceneId, selfId, str, 4)
		else
			BeginEvent(sceneId)
				AddText(sceneId, "Tay n�i c�a ng߽i �� �y!")
			EndEvent()
			DispatchMissionTips(sceneId, selfId)
			return 0
		end
	end

	local expDelta = GetFullExp(sceneId, selfId) - GetExp(sceneId, selfId)
	if expDelta == 0 then
		Msg2Player(  sceneId, selfId, "Kinh nghi�m ng߽i mang theo �� �y, kh�ng th� ho�n t�t nhi�m v�", MSG2PLAYER_PARA )
		return 1
	end
	--Kinh nghi�m���� = ��ҵ�ǰ��c�p��������*�����ӳ�
	--local A, B, C = 5, 1, 20*60
	--local D, E = 0.06, 4
	local playerLevel = GetLevel(sceneId, selfId)
	----��ҵ�ǰ��c�p�������� =(A+(��ҵ�c�p-1)*B)*C ��A=5,B=1,C(ÿ��ƽ��ʱ��)=20*60(���ܵ���)
	--local BaseBonusValue = (A + (playerLevel-1)*B)*C
	----�����ӳ� =D*(��ǰ����-1)+1+FLOOR((��ǰ����-1)/10)*((E-1-99*D)/9) ��D=0.06,E(100���ӳ���)=4(���ܵ���)
	--local RoundRefix = D*(round-1) + 1 + floor((round-1) / 10)*((E-1-99*D) / 9)
  local BaseBonusValue = 0
  local RoundRefix = 0

  for i, v in x229022_g_ExpBonusBaseTable do
  	if v.playerLevel == GetLevel(sceneId, selfId) then
  		BaseBonusValue = v.baseExp
  		break
  	end
  end

  for i, v in x229022_g_RoundRefixTable do
  	if v.round == round then
  		RoundRefix = v.refix
  		break
  	end
  end

	--�������Kinh nghi�m
	local exp = BaseBonusValue * RoundRefix
	if exp > expDelta then
		AddExp(sceneId, selfId, expDelta)
	else
		AddExp(sceneId, selfId, exp)
	end
	--Msg2Player(  sceneId, selfId, "�� �i�m����" .. tostring(exp) .. " �i�mto� � Kinh nghi�m����.", MSG2PLAYER_PARA )

	return 1
end

function x229022_GetExpBonus(sceneId, selfId)

	local playerLevel = GetLevel(sceneId, selfId)
  local BaseBonusValue = 0
  local RoundRefix = 1

  for i, v in x229022_g_ExpBonusBaseTable do
  	if v.playerLevel == GetLevel(sceneId, selfId) then
  		BaseBonusValue = v.baseExp
  		break
  	end
  end
  --PrintStr("BaseBonusValue=" .. BaseBonusValue )
  local round = GetMissionData(sceneId,selfId,MD_RENWULIAN_HUAN)
  for i, v in x229022_g_RoundRefixTable do
  	if v.round == round then
  		RoundRefix = v.refix
  		break
  	end
  end
  --PrintStr("RoundRefix=" .. RoundRefix )

	return BaseBonusValue * RoundRefix
end

--*******************************************************
--�ύ����to� � ������⺯��
--*******************************************************
function x229022_MissionOnSubmit_Necessary(sceneId, selfId, targetId)
	-- �i�m������
	local round = GetMissionData(sceneId,selfId,MD_RENWULIAN_HUAN)
	if round >= 100 then
		--����ѭ������to� � ʱ��
		SetMissionData(sceneId,selfId,MD_RENWULIAN_DAYCOUNT,LuaFnGetCurrentTime())
	end
	--��¼ͳ����Ϣ
	LuaFnAuditMissionChain(sceneId,selfId,round)

	Msg2Player(  sceneId, selfId, "Ng߽i �� ho�n t�t nhi�m v� li�n ho�n th�" .. tostring(round) .. "V�ng", MSG2PLAYER_PARA )

	--ɾ��������
	DelMission(sceneId, selfId, x229022_g_MissionId)

	if round < 100 then
		--������������
		if x229022_CheckAccept(sceneId,selfId) > 0 then
			x229022_AddMissionDirectly(sceneId, selfId,targetId)
		end
	end
end

--**********************************
--�ύ
--**********************************
function x229022_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x229022_CheckSubmit( sceneId, selfId ) > 0 then
		local bGoon = 0
		local misIndex = GetMissionIndexByID(sceneId,selfId,x229022_g_MissionId)
		local missionType = GetMissionParam(sceneId, selfId, misIndex, 1)
		if missionType == x229022_g_SubMissionType.wenhou then
			bGoon = 1
		elseif missionType == x229022_g_SubMissionType.chongwu then
			--����to� � ��֧��T�i x229022_OnSubmit,����ngT�i x229022_OnMissionCheck.
		elseif missionType == x229022_g_SubMissionType.suoqu then
			local demandItemId = GetMissionParam(sceneId, selfId, misIndex, x229022_g_StrForePart+1)
			if 1==DelItem(sceneId, selfId, demandItemId, 1) then
				bGoon = 1
			end
		elseif missionType == x229022_g_SubMissionType.fubenjiaoxun then
			bGoon = 1
		end
		if bGoon == 1 then
			--����������
			if x229022_MissionBonus(sceneId, selfId) > 0 then
				x229022_MissionOnSubmit_Necessary(sceneId, selfId, targetId)
			end
		end
	end
end

--**********************************
--T�i �����ύʱto� � ��⺯��
--**********************************
function x229022_My_MissionCheck_Necessary(sceneId, selfId, npcid, scriptId, index1, index2, index3, demandItemId)
	--PrintStr("My_MissionCheck_Necessary...demandItemId=" .. demandItemId)
	local find = CallScriptFunction( 500501, "OnMissionCheck_NecessaryEx", sceneId, selfId, index1, index2, index3, demandItemId )
	local _, strDemandItemName, _ = GetItemInfoByItemId(demandItemId)
	if find < 0 then
		BeginEvent(sceneId)
			local strText = format("Sao ng߽i v�n ch�a �em %s v� ���c m� �� quay v�?", strDemandItemName)
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
		return
	end

	if LuaFnIsItemAvailable(sceneId, selfId, find) > 0 then
		local ret = EraseItem( sceneId, selfId, find )
		if	ret > 0 then
			--����������
			if x229022_MissionBonus(sceneId, selfId) == 1 then
				x229022_MissionOnSubmit_Necessary(sceneId, selfId, npcid)
			end
		else
			BeginEvent(sceneId)
				local strText = format("Sao ng߽i v�n ch�a �em %s v� ���c m� �� quay v�?", strDemandItemName)
				AddText(sceneId,strText)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,-1)
		end
	else
		BeginEvent(sceneId)
			AddText(sceneId, "V�t ph�m c�a c�c h� hi�n kh�ng d�ng ���c ho�c �� b� kh�a.")
		EndEvent( )
		DispatchMissionTips(sceneId,selfId)
		return
	end

end

--************************************************************
--C�i n�y �ӿں�����ng����to� � ,��ʵ��ngx229022_OnSubmitֻ������ng������ͬ����
--����ngc�i��ʷ��������,��T�i �Ѿ��޷��ı�ӿ���.
--************************************************************
function x229022_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, petindex )
	if x229022_CheckSubmit( sceneId, selfId ) > 0 then
		local misIndex = GetMissionIndexByID(sceneId,selfId,x229022_g_MissionId)		-- �i�m������T�i 20c�i������to� � ���к�
		local missionType = GetMissionParam(sceneId, selfId, misIndex, 1)

		local demandItemId
		if missionType == x229022_g_SubMissionType.suoqu then
			demandItemId = GetMissionParam(sceneId, selfId, misIndex, x229022_g_StrForePart+1)
			--PrintStr("demandItemId=" .. demandItemId)
			x229022_My_MissionCheck_Necessary(sceneId, selfId, npcid, scriptId, index1, index2, index3, demandItemId)
		elseif missionType == x229022_g_SubMissionType.fubenduowu then
			demandItemId = GetMissionParam(sceneId, selfId, misIndex, x229022_g_StrForePart+2)
			x229022_My_MissionCheck_Necessary(sceneId, selfId, npcid, scriptId, index1, index2, index3, demandItemId)
		elseif missionType == x229022_g_SubMissionType.chongwu then
			local demandPetId = GetMissionParam(sceneId, selfId, misIndex, x229022_g_StrForePart+1)
			local petId = LuaFnGetPet_DataID(sceneId, selfId, petindex)
			if petId ~= nil and petId >= 0 then
				if GetPetName(petId) == GetPetName(demandPetId) then
					--����������
					if LuaFnIsPetAvailable(sceneId, selfId, petindex) == 1 then
						if x229022_MissionBonus(sceneId, selfId) > 0 then
							LuaFnDeletePet(sceneId, selfId, petindex)
							x229022_MissionOnSubmit_Necessary(sceneId, selfId, npcid)
						end
					else
						BeginEvent(sceneId)
							AddText(sceneId, "Tr�n th� ng߽i giao kh�ng th� d�ng ho�c b� kh�a!")
						EndEvent()
						DispatchMissionTips(sceneId, selfId)
					end
				else
					BeginEvent(sceneId)
						AddText(sceneId, "Tr�n th� ng߽i giao kh�ng ch�nh x�c!")
					EndEvent()
					DispatchMissionTips(sceneId, selfId)
				end
			end
		end
	end
end


--**********************************
--ɱ����������
--**********************************
function x229022_OnKillObject( sceneId, selfId, objdataId ,objId)--������˼: �����š����objId�������λ�úš�����objId
	--PrintStr("OnKillObject...")
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229022_g_MissionId)		-- �i�m������T�i 20c�i������to� � ���к�

	local missionType = GetMissionParam(sceneId, selfId, misIndex, 1)
	if missionType == x229022_g_SubMissionType.suoqu then
		local bStored = GetMissionParam(sceneId, selfId, misIndex, 2)
		if bStored <= 0 then --������û�д洢
		if GetMissionParam(sceneId, selfId, misIndex, 0) == 0 then
		local nItemId = GetMissionParam(sceneId, selfId, misIndex, x229022_g_StrForePart+1)
		local playerLevel = GetLevel(sceneId, selfId)
		local targetLevel = GetLevel(sceneId, objId)
		if abs(playerLevel-targetLevel) < 6 then
				local rate = 50
			for i, v in x229022_g_HongyunRateTable do
				if playerLevel <= v.level then
					rate = (1 / v.value) * 10000
					break
				end
			end --endfor

			if random(1000) < rate then --��ʱto� � ��νto� � С����:(
				AddMonsterDropItem(sceneId, objId, selfId, nItemId)
				end --endif4
			end	--endif3
		end	--endif1
		end
	elseif 	missionType == x229022_g_SubMissionType.fubenjiaoxun then
		-- ȡ �i�mC�i n�y ��������ӵ�з���Ȩto� � ����
		local num = GetMonsterOwnerCount(sceneId,objId)
		--PrintNum(num)
		for i=0,num-1  do
			-- ȡ �i�mӵ�з���Ȩto� � ��to� � objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,i)
			--PrintStr("humanObjId=" .. humanObjId)
			-- ��C�i n�y ����ng����ng��C�i n�y ����
			if IsHaveMission(sceneId, humanObjId, x229022_g_MissionId) > 0 then
				-- ���ж���ng����ng�Ѿ�Th�a m�n����ɱ�־
				local misIndex = GetMissionIndexByID(sceneId,humanObjId,x229022_g_MissionId)
				if GetMissionParam(sceneId, humanObjId, misIndex, 0) <=0  then
					local demandKillCount = GetMissionParamEx(sceneId, humanObjId, misIndex, 3, 0)
					--PrintStr("demandKillCount=" .. demandKillCount)
					if CallScriptFunction(229023 , "IsMonsterOfDemanded", sceneId, humanObjId, objdataId) > 0 then
						local killedCount =	GetMissionParamEx(sceneId, humanObjId, misIndex, 3, 1)
						killedCount = killedCount + 1
						SetMissionParamByIndexEx(sceneId, humanObjId, misIndex, 3, 1, killedCount)
						--PrintStr("killedCount=" .. killedCount)
						if killedCount == demandKillCount then
							--PrintStr("Succ...")
							BeginEvent(sceneId)
								SetMissionByIndex(sceneId, humanObjId, misIndex, 0, 1)
								local npcIndex = GetMissionParam(sceneId, humanObjId, misIndex, x229022_g_StrForePart+1)
								local _, npcName = GetNpcInfoByNpcId(sceneId,npcIndex)
								local str = format("Nhi�m v� d�y b�o%s �� ho�n th�nh", npcName)
								AddText(sceneId, str)
							EndEvent()
							DispatchMissionTips(sceneId, humanObjId)
						end --if
					end --if
				end --if
			end --if
		end --for
	end	--elseif

end

--**********************************
--���������¼�
--**********************************
function x229022_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x229022_OnItemChanged( sceneId, selfId, itemdataId )
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229022_g_MissionId)		-- �i�m������T�i 20c�i������to� � ���к�

	local missionType = GetMissionParam(sceneId, selfId, misIndex, 1)
	local demandItemId = GetMissionParam(sceneId, selfId, misIndex, x229022_g_StrForePart+1)

	if missionType == x229022_g_SubMissionType.suoqu then

		local _, strDemandItemName, _ = GetItemInfoByItemId(demandItemId)
		local _, strItemName, _ = GetItemInfoByItemId(itemdataId)

		if strItemName == strDemandItemName then
			BeginEvent(sceneId)
				strText = format("�� ��t t�i %s", strItemName)
				AddText(sceneId,strText)
			EndEvent(sceneId)

			DispatchMissionTips(sceneId,selfId)
			ResetMissionEvent(sceneId, selfId, x229022_g_MissionId, 2)
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
		end
	end

end

--**********************************
--����ʹ��
--**********************************
function x229022_OnUseItem( sceneId, selfId, targetId, eventId )
end


--**********************************
--��ng����ngҪ��to� � npc
--**********************************
function x229022_IsDemandNpc(sceneId, selfId, objId)
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229022_g_MissionId)		-- �i�m������T�i 20c�i������to� � ���к�
	local missionType = GetMissionParam(sceneId, selfId, misIndex, 1)
	local npcId
	if missionType == x229022_g_SubMissionType.wenhou or
		 missionType == x229022_g_SubMissionType.fubenjiaoxun then
		npcId = GetMissionParam(sceneId, selfId, misIndex, x229022_g_StrForePart+1)
	elseif missionType == x229022_g_SubMissionType.suoqu or
		 		 missionType == x229022_g_SubMissionType.chongwu	then
 		npcId = GetMissionParam(sceneId, selfId, misIndex, x229022_g_StrForePart+2)
 	else
 		return 0
 	end
	local _, npcName, strNrpcScene, _, _, _, npcSceneId = GetNpcInfoByNpcId(sceneId,npcId)
	--PrintStr(npcName)
	if GetName(sceneId, objId) == npcName
		and npcSceneId == sceneId then
		return 1
	end
	return 0
end

--**********************************
--����Ŀ��
--**********************************
function x229022_OnLockedTarget(sceneId, selfId, objId )
	--PrintStr("...OnLockedTarget")
	if x229022_IsDemandNpc(sceneId, selfId, objId) ==  1 then
		--TAddText(sceneId, "����������, ���Ѿ��ȴ���þ���!")
		TAddNumText(sceneId, x229022_g_scriptId,x229022_g_MissionName,2,-1,x229022_g_scriptId);

		--local bDone = x229022_CheckSubmit(sceneId, selfId)
		--DispatchMissionDemandInfo(sceneId, selfId, objId, x229022_g_scriptId, x229022_g_MissionId, bDone)
	end
end

--**********************************
--��ʱ�¼�
--**********************************
function x229022_OnTimer(sceneId,selfId)
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229022_g_MissionId)		-- �i�m������T�i 20c�i������to� � ���к�
	local leaveSecond = GetMissionParam(sceneId, selfId, misIndex, 7)
	--PrintNum(leaveSecond)

	local bStored = GetMissionParam(sceneId, selfId, misIndex, 2)
	if bStored == 1 then
		--ֹͣ����ʱ��
		StopMissionTimer(sceneId, selfId, x229022_g_MissionId)
		return
	end

	local currTime = LuaFnGetCurrentTime()
	local acceptTime = GetMissionData(sceneId,selfId,MD_RENWULIAN_ACCPETTIME)
	if (currTime - acceptTime) > 30*60 then
		leaveSecond = 0
	else
		leaveSecond = (30*60 - (currTime - acceptTime))*1000
	end

	--leaveSecond = leaveSecond - 1000
	SetMissionByIndex(sceneId,selfId,misIndex,7,leaveSecond)
	--PrintNum(leaveSecond)

	if leaveSecond <= 0 then
		--ֹͣ����ʱ��
		StopMissionTimer(sceneId, selfId, x229022_g_MissionId)
		--��������Ѿ�th�t b�i, ����ʾ����th�t b�i������������б���ɾ��
		local str = "Nhi�m v� li�n ho�n th�t b�i, �� x�a"
		BeginEvent(sceneId)
			AddText(sceneId, str)
		EndEvent()
		DispatchMissionTips(sceneId, selfId)
		Msg2Player(sceneId, selfId, str, MSG2PLAYER_PARA )
		DelMission( sceneId, selfId, x229022_g_MissionId )

		--����ѭ������to� � ʱ��
		SetMissionData(sceneId,selfId,MD_RENWULIAN_DAYCOUNT,LuaFnGetCurrentTime())
		SetMissionData(sceneId, selfId, MD_RENWULIAN_HUAN, 0)

		return
	end

	if leaveSecond > 10*60000 and leaveSecond < 15*60000 then
		if mod(leaveSecond, 60000) == 0 then
			BeginEvent(sceneId)
				AddText(sceneId, "Trong 20 ph�t ng߽i c� th� l�u nhi�m v� t�i ch� #RV߽ng phu nh�n#W")
			EndEvent()
			DispatchMissionTips(sceneId, selfId)
			return
		end
	end

	if leaveSecond < 60000 then
		BeginEvent(sceneId)
			AddText(sceneId, "Nhi�m v� li�n ho�n s� �" .. tostring(leaveSecond/1000) .. "Gi�y sau th�t b�i")
		EndEvent()
		DispatchMissionTips(sceneId, selfId)
		return
	end

end

function x229022_OnPetChanged(sceneId, selfId, petDataId)
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229022_g_MissionId)
	local demandPetDataId = GetMissionParam(sceneId, selfId, misIndex, x229022_g_StrForePart+1)
	if petDataId == nil or petDataId < 0 then
		return
	end
	if demandPetDataId == nil or demandPetDataId < 0 then
		return
	end

	if GetPetName(demandPetDataId) == GetPetName(petDataId) then
		local str = format("C�c h� �� b�t ���c tr�n th� %s", GetPetName(petDataId))
		BeginEvent(sceneId)
			AddText(sceneId, str)
		EndEvent()
		DispatchMissionTips(sceneId, selfId)
		Msg2Player(  sceneId, selfId, str , MSG2PLAYER_PARA )
		SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
	end

end
