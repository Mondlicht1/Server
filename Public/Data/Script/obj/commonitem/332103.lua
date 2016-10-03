--道具: 仙露净瓶<ID:31000003>
--脚本号 332103
--Author: Steven.Han 17:50 2007-5-17

x332103_g_scriptId = 332103
x332103_g_MaxValue = 50000
x332103_g_IncPerAct = 2000

--**********************************
--事件交互入口
--**********************************
function x332103_OnDefaultEvent( sceneId, selfId, bagIndex )
-- 不C C醝 n鄖 接口,但要保留空函数
end

--**********************************
--C醝 n鄖 物品to� 鸬 使用过程喧ng否类似于技能: 
--H� th痭g会T読 执行开始时检测C醝 n鄖 函数to� 鸬 Tr� v�,如果Tr� v玹h b読则忽略后面to� 鸬 类似技能to� 鸬 执行.
--Tr� v�1: 技能类似to� 鸬 物品,可以继续类似技能to� 鸬 执行；Tr� v�0: 忽略后面to� 鸬 操作.
--**********************************
function x332103_IsSkillLikeScript( sceneId, selfId)
	return 1; --C醝 n鄖 脚本C 动作支持
end

--**********************************
--直接Hu� b鲂Ч�: 
--H� th痭g会直接调用C醝 n鄖 接口,并根据C醝 n鄖 函数to� 鸬 Tr� v礨醕 nh以后to� 鸬 流程喧ng否执行.
--Tr� v�1: 已经Hu� b龆杂πЧ�,不再执行后续操作；Tr� v�0: 没有检测到相关效果,继续执行.
--**********************************
function x332103_CancelImpacts( sceneId, selfId )
	return 0; --不C C醝 n鄖 接口,但要保留空函数,并且始终Tr� v�0.
end

--**********************************
--条件检测入口: 
--H� th痭g会T読 技能检测to� 鸬 时间 餴琺调用C醝 n鄖 接口,并根据C醝 n鄖 函数to� 鸬 Tr� v礨醕 nh以后to� 鸬 流程喧ng否执行.
--Tr� v�1: 条件检测通过,可以继续执行；Tr� v�0: 条件检测th b読,中断后续执行.
--**********************************
function x332103_OnConditionCheck( sceneId, selfId )
	--校验使用to� 鸬 物品
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
		
	local PlayerMP = GetMp(sceneId, selfId)
    local PlayerMaxMP  = GetMaxMp(sceneId, selfId)
      
    if PlayerMP == PlayerMaxMP then
        LuaFnSendOResultToPlayer( sceneId, selfId, OR_MANA_IS_FULL )
        return 0
    end
        
	return 1; --不C 任何条件,并且始终Tr� v�1.
end

--**********************************
--消耗检测及处理入口: 
--H� th痭g会T読 技能消耗to� 鸬 时间 餴琺调用C醝 n鄖 接口,并根据C醝 n鄖 函数to� 鸬 Tr� v礨醕 nh以后to� 鸬 流程喧ng否执行.
--Tr� v�1: 消耗处理通过,可以继续执行；Tr� v�0: 消耗检测th b読,中断后续执行.
--注意: 这不光负责消耗to� 鸬 检测也负责消耗to� 鸬 执行.
--**********************************
function x332103_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end
	return 0;
end

--**********************************
--只会执行m祎 次入口: 
--聚气和瞬发技能会T読 消耗完成后调用C醝 n鄖 接口(聚气结束并且各种条件都Th鯽 m鉵to� 鸬 时候),而引导
--技能也会T読 消耗完成后调用C醝 n鄖 接口(技能to� 鸬 m祎 开始,消耗成功执行之后).
--Tr� v�1: 处理成功；Tr� v�0: 处理th b読.
--注: 这里喧ng技能生效m祎 次to� 鸬 入口
--**********************************
function x332103_OnActivateOnce( sceneId, selfId )

    local bagId	 = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
    local UseValue = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
    local ValidValue = x332103_g_MaxValue - UseValue
    
    local PlayerMP = GetMp(sceneId, selfId)
    local PlayerMaxMP  = GetMaxMp(sceneId, selfId)
    local NeedMP = PlayerMaxMP - PlayerMP   --C 恢复to� 鸬 MP量
    
    if x332103_g_IncPerAct < NeedMP then
        NeedMP = x332103_g_IncPerAct
    end
     
    if PlayerMP == PlayerMaxMP then
        LuaFnSendOResultToPlayer( sceneId, selfId, OR_MANA_IS_FULL )
    else
		local nCB = ValidValue   --S� d鴑g tr呔c 容量
		local nMPB = PlayerMP    --S� d鴑g tr呔c 玩家mp
		local bErased = -1       --物品喧ng否被删除
		    
        if NeedMP >= ValidValue then  --可提供to� 鸬 MP不足恢复玩家定量MP
            --IncreaseMp
            IncreaseMp(sceneId, selfId, ValidValue ) --恢复可提供to� 鸬 MP
            SetBagItemParam( sceneId, selfId, bagId, 4, 2, x332103_g_MaxValue ) --设置最大容量
            SetBagItemParam( sceneId, selfId, bagId, 8, 2, x332103_g_MaxValue ) --设置已用容量
            bErased = EraseItem( sceneId, selfId, bagId )
        else
            IncreaseMp(sceneId, selfId, NeedMP ) --恢复C to� 鸬 MP,此时,玩家应该MP全满
            SetBagItemParam( sceneId, selfId, bagId, 4, 2, x332103_g_MaxValue ) --设置最大容量
            SetBagItemParam( sceneId, selfId, bagId, 8, 2, UseValue + x332103_g_IncPerAct ) --设置已用容量
            
            if( ( UseValue + x332103_g_IncPerAct ) >= x332103_g_MaxValue ) then
                bErased = EraseItem( sceneId, selfId, bagId )
            end
            
        end
        
        local szName = GetName( sceneId, selfId )
        local nGuid = LuaFnGetGUID( sceneId, selfId )
		local nMPA = GetMp(sceneId, selfId)             --s� d鴑g sau 玩家hp
		
        if bErased < 0 then
			--local szLog = "Use31000003, Name=%s, Guid=%d, CB=%d, CA=%d, HPB=%d, HPA=%d, BIDX=%d"
			local szLog = "Use31000003, T阯=%s, Guid=%d, L唼ng d唼c s� d鴑g tr呔c=%d, L唼ng d唼c s� d鴑g sau=%d, S� d鴑g tr呔c MP=%d, s� d鴑g sau MP=%d, v� tr� tay n鋓=%d"
			local UseValue_log = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
			local nCA = x332103_g_MaxValue - UseValue_log   --s� d鴑g sau 容量
			
			local szDebugLog = format( szLog, szName, nGuid, nCB, nCA, nMPB, nMPA, bagId )
			WriteDebugLog( sceneId, selfId, szDebugLog )  
        else
			local szLog = "Use31000003, T阯=%s, Guid=%d, L唼ng d唼c s� d鴑g tr呔c=%d, 秀 b� c b�, S� d鴑g tr呔c MP=%d, s� d鴑g sau MP=%d, v� tr� tay n鋓=%d"
			local szDebugLog = format( szLog, szName, nGuid, nCB, nMPB, nMPA, bagId )
			WriteDebugLog( sceneId, selfId, szDebugLog )
        end
        
        --LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 1000 )
        
    end
    
    LuaFnRefreshItemInfo( sceneId, selfId, bagId )

	return 1;
end

--**********************************
--引导心跳处理入口: 
--引导技能会T読 每次心跳结束时调用C醝 n鄖 接口.
--Tr� v�: 1继续下次心跳；0: 中断引导.
--注: 这里喧ng技能生效m祎 次to� 鸬 入口
--**********************************
function x332103_OnActivateEachTick( sceneId, selfId)
	return 1; --不喧ng引导性脚本, 只保留空函数.
end

function x332103_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end
