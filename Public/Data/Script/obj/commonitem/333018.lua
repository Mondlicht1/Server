-- 创建人[ QUFEI 2007-11-07 09:53 UPDATE BugID 24671 ]

-- 人民币道具_Ti阯 thi阯 quy t鈓 餫n (改成正确T阯)
-- ItemID = 31000004
-- 脚本号	333018
-- 按百分比增加玩家生命值
-- 物品可以使用20次
-- 以后每次使用扣m祎 次,扣完就删除物品

x333018_g_scriptId = 333018
x333018_g_MinValue = 1000			-- HP最小增加值
x333018_g_MaxHPValue = 0			-- HP上限增加值
x333018_g_MaxUseCount = 20		-- 最大使用次数20次
x333018_g_HPValuePer = 0.1		-- HP恢复百分比

--**********************************
--事件交互入口
--**********************************
function x333018_OnDefaultEvent( sceneId, selfId, bagIndex )
-- 不C C醝 n鄖 接口,但要保留空函数
end

--**********************************
--C醝 n鄖 物品to� 鸬 使用过程喧ng否类似于技能: 
--H� th痭g会T読 执行开始时检测C醝 n鄖 函数to� 鸬 Tr� v�,如果Tr� v玹h b読则忽略后面to� 鸬 类似技能to� 鸬 执行.
--Tr� v�1: 技能类似to� 鸬 物品,可以继续类似技能to� 鸬 执行；Tr� v�0: 忽略后面to� 鸬 操作.
--**********************************
function x333018_IsSkillLikeScript( sceneId, selfId)
	return 1; --C醝 n鄖 脚本C 动作支持
end

--**********************************
--直接Hu� b鲂Ч�: 
--H� th痭g会直接调用C醝 n鄖 接口,并根据C醝 n鄖 函数to� 鸬 Tr� v礨醕 nh以后to� 鸬 流程喧ng否执行.
--Tr� v�1: 已经Hu� b龆杂πЧ�,不再执行后续操作；Tr� v�0: 没有检测到相关效果,继续执行.
--**********************************
function x333018_CancelImpacts( sceneId, selfId )
	return 0; --不C C醝 n鄖 接口,但要保留空函数,并且始终Tr� v�0.
end

--**********************************
--条件检测入口: 
--H� th痭g会T読 技能检测to� 鸬 时间 餴琺调用C醝 n鄖 接口,并根据C醝 n鄖 函数to� 鸬 Tr� v礨醕 nh以后to� 鸬 流程喧ng否执行.
--Tr� v�1: 条件检测通过,可以继续执行；Tr� v�0: 条件检测th b読,中断后续执行.
--**********************************
function x333018_OnConditionCheck( sceneId, selfId )
	--校验使用to� 鸬 物品
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
		
	local PlayerHP = GetHp(sceneId, selfId)
  local PlayerMaxHP  = GetMaxHp(sceneId, selfId)
    
  --PrintStr( ""..UseValue.."/"..ValidValue.." "..PlayerHP.."/"..PlayerMaxHP.."".."")
  
  if PlayerHP >= PlayerMaxHP then
      LuaFnSendOResultToPlayer( sceneId, selfId, OR_HEALTH_IS_FULL )
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
function x333018_OnDeplete( sceneId, selfId )
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
function x333018_OnActivateOnce( sceneId, selfId )

   local bagId	 = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
   local UseValue = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
   local ValidValue = x333018_g_MaxUseCount - UseValue      
   local PlayerHP = GetHp(sceneId, selfId)
   local PlayerMaxHP  = GetMaxHp(sceneId, selfId)
   local NeedHP = floor(PlayerMaxHP * x333018_g_HPValuePer)   --C 恢复to� 鸬 HP量
   local IsDelete = 0		-- 物品喧ng否删除
   
   if NeedHP < x333018_g_MinValue then
       NeedHP = x333018_g_MinValue
   end
   
   --PrintStr( ""..ValidValue.."/"..x333018_g_MaxUseCount.." "..PlayerHP.."/"..PlayerMaxHP.."".."")
   
   if PlayerHP >= PlayerMaxHP then
       LuaFnSendOResultToPlayer( sceneId, selfId, OR_HEALTH_IS_FULL )
       return 0
   end
   
   --消耗m祎 次Ti阯 thi阯 quy t鈓 餫n
	if bagId >= 0 then		
		
		if UseValue >= x333018_g_MaxUseCount then   --记录to� 鸬 使用次数大于等于最大可用次数,理论上不可能出现.
	    return 0
		end

		local CurValue = UseValue + 1
		
    IncreaseHp(sceneId, selfId, NeedHP ) --恢复C to� 鸬 HP
    SetBagItemParam( sceneId, selfId, bagId, 4, 2, x333018_g_MaxUseCount ) --设置最大容量
    SetBagItemParam( sceneId, selfId, bagId, 8, 2, CurValue ) --设置已用容量
     
    --------------参数设置安全性检测,虽然理论上参数设置不会th b読
		local CheckParam1 = GetBagItemParam( sceneId, selfId, bagId, 4, 2 )   
		local CheckParam2 = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
    
    if CheckParam1 ~= x333018_g_MaxUseCount then
	    return 0
		end
		if CheckParam2 ~= CurValue then
	    return 0
		end
     --------------参数设置安全性检测,虽然理论上参数设置不会th b読      
     
    LuaFnRefreshItemInfo( sceneId, selfId, bagId )	--刷新背包信息
     
    if CurValue >= x333018_g_MaxUseCount then		--当使用次数达到最大次数时,将删除此物品
        local bErased = EraseItem( sceneId, selfId, bagId )
        IsDelete = 1
         
      if bErased < 0 then      --如果删除th b読,将不会产生任何效果
		 		local strMsg = "C Ti阯 thi阯 quy t鈓 餫n"
				x333018_ShowNotice( sceneId, selfId, strMsg)
				return 0
			end
		
   	end
   	
   	local szName = GetName( sceneId, selfId )
		local nGuid = LuaFnGetGUID( sceneId, selfId )
		
   	local szLog = "Use31000004, T阯=%s, Guid=%0X, L唼ng d唼c s� d鴑g tr呔c=%d, L唼ng d唼c c騨 th譨=%d, S� d鴑g tr呔c HP=%d, s� d鴑g sau HP=%d, v� tr� tay n鋓=%d, C� hay kh鬾g 疸 b� c b�=%d"
		local UseValue_log = x333018_g_MaxUseCount - CurValue	-- L唼ng d唼c c騨 th譨
		local PlayerNowHP = GetHp(sceneId, selfId)	-- 加血后玩家to� 鸬 HP
		
		local szDebugLog = format( szLog, szName, nGuid, ValidValue, UseValue_log, PlayerHP, PlayerNowHP, bagId, IsDelete )
		WriteDebugLog( sceneId, selfId, szDebugLog )  
   	
  else
		local strMsg = "C Ti阯 thi阯 quy t鈓 餫n"
		x333018_ShowNotice( sceneId, selfId, strMsg)
		return 0
	end

	return 1;
end

--**********************************
--引导心跳处理入口: 
--引导技能会T読 每次心跳结束时调用C醝 n鄖 接口.
--Tr� v�: 1继续下次心跳；0: 中断引导.
--注: 这里喧ng技能生效m祎 次to� 鸬 入口
--**********************************
function x333018_OnActivateEachTick( sceneId, selfId)
	return 1; --不喧ng引导性脚本, 只保留空函数.
end

function x333018_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end
