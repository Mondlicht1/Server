--����: �𵤺�«<ID:31000000>
--�ű��� 332100
--Author: Steven.Han 10:39 2007-5-17

x332100_g_scriptId = 332100
x332100_g_MaxValue = 500000
x332100_g_IncPerAct = 2500

--**********************************
--�¼��������
--**********************************
function x332100_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x332100_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x332100_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x332100_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
		
	local PlayerHP = GetHp(sceneId, selfId)
    local PlayerMaxHP  = GetMaxHp(sceneId, selfId)
    
    --PrintStr( ""..UseValue.."/"..ValidValue.." "..PlayerHP.."/"..PlayerMaxHP.."".."")
    
    if PlayerHP == PlayerMaxHP then
        LuaFnSendOResultToPlayer( sceneId, selfId, OR_HEALTH_IS_FULL )
        return 0
    end
        
	return 1; --��C�n �κ�����,����ʼ��Tr� v�1.
end

--**********************************
--���ļ�⼰�������: 
--H� th�ng��T�i ��������to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--ע��: �ⲻ�⸺������to� � ���Ҳ��������to� � ִ��.
--**********************************
function x332100_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end
	return 0;
end

--**********************************
--ֻ��ִ��m�t �����: 
--������˲�����ܻ�T�i ������ɺ����C�i n�y �ӿ�(�����������Ҹ���������Th�a m�nto� � ʱ��),������
--����Ҳ��T�i ������ɺ����C�i n�y �ӿ�(����to� � m�t ��ʼ,���ĳɹ�ִ��֮��).
--Tr� v�1: �����ɹ���Tr� v�0: ����th�t b�i.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x332100_OnActivateOnce( sceneId, selfId )

    local bagId	 = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
    local UseValue = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
    local ValidValue = x332100_g_MaxValue - UseValue
    
    local PlayerHP = GetHp(sceneId, selfId)
    local PlayerMaxHP  = GetMaxHp(sceneId, selfId)
    local NeedHP = PlayerMaxHP - PlayerHP   --C�n �ָ�to� � HP��
    
    if x332100_g_IncPerAct < NeedHP then
        NeedHP = x332100_g_IncPerAct
    end
    
    --PrintStr( ""..ValidValue.."/"..x332100_g_MaxValue.." "..PlayerHP.."/"..PlayerMaxHP.."".."")
    
    if PlayerHP == PlayerMaxHP then
        LuaFnSendOResultToPlayer( sceneId, selfId, OR_HEALTH_IS_FULL )
    else
		local nCB = ValidValue   --S� d�ng tr߾c ����
		local nHPB = PlayerHP    --S� d�ng tr߾c ���hp
		local bErased = -1       --��Ʒ��ng��ɾ��
		
        if NeedHP >= ValidValue then  --���ṩto� � HP����ָ���Ҷ���HP
            --IncreaseHp
            IncreaseHp(sceneId, selfId, ValidValue ) --�ָ����ṩto� � HP
            SetBagItemParam( sceneId, selfId, bagId, 4, 2, x332100_g_MaxValue ) --�����������
            SetBagItemParam( sceneId, selfId, bagId, 8, 2, x332100_g_MaxValue ) --������������
            bErased = EraseItem( sceneId, selfId, bagId )
        else
            IncreaseHp(sceneId, selfId, NeedHP ) --�ָ�C�n to� � HP
            SetBagItemParam( sceneId, selfId, bagId, 4, 2, x332100_g_MaxValue ) --�����������
            SetBagItemParam( sceneId, selfId, bagId, 8, 2, UseValue + x332100_g_IncPerAct ) --������������
            --SetBagItemParam( sceneId, selfId, bagId, 8, 2, UseValue + NeedHP ) --������������
            
            if( x332100_g_MaxValue == ( UseValue + x332100_g_IncPerAct ) ) then
                bErased = EraseItem( sceneId, selfId, bagId )
            end
            
        end

		local szName = GetName( sceneId, selfId )
		local nGuid = LuaFnGetGUID( sceneId, selfId )
		local nHPA = GetHp(sceneId, selfId)             --s� d�ng sau ���hp
		        
        if bErased < 0 then
			--local szLog = "Use31000000, Name=%s, Guid=%d, CB=%d, CA=%d, HPB=%d, HPA=%d, BIDX=%d"
			local szLog = "Use31000000, t�n=%s, Guid=%d, l��ng d��c s� d�ng tr߾c=%d, l��ng d��c s� d�ng tr߾c=%d, s� d�ng tr߾c HP=%d, s� d�ng sau HP=%d, v� tr� tay n�i =%d"
			local UseValue_log = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
			local nCA = x332100_g_MaxValue - UseValue_log   --s� d�ng sau ����
			
			local szDebugLog = format( szLog, szName, nGuid, nCB, nCA, nHPB, nHPA, bagId )
			WriteDebugLog( sceneId, selfId, szDebugLog )
        else
			local szLog = "Use31000000, t�n=%s, Guid=%d, l��ng d��c s� d�ng tr߾c=%d, �� b� x�a, s� d�ng tr߾c HP=%d, s� d�ng sau HP=%d, v� tr� tay n�i=%d"
			local szDebugLog = format( szLog, szName, nGuid, nCB, nHPB, nHPA, bagId )
			WriteDebugLog( sceneId, selfId, szDebugLog )
        end
        
        --LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 1000 )
        --SetMp( sceneId, selfId, 0 ) --������ҩ�ô���,m�t ��Ҫɾ�˰�!
        
    end
    
    LuaFnRefreshItemInfo( sceneId, selfId, bagId )

	--LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 3101, 0);
	--PrintStr( "x332100_OnActivateOnce" )
	return 1;
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x332100_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

function x332100_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end