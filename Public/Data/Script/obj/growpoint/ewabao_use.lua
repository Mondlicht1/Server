-- 自己id,背包index,场景编号
function		x713552_OnUse(sceneId,selfId,targetId)	
		-- 鹫t 疬㧟藏宝图位置和场景编号
		StoreMapX = GetStoreMapX(sceneId,selfId,targetId)
		StoreMapZ = GetStoreMapZ(sceneId,selfId,targetId)		
		
		StoreMapSceneID = GetStoreMapSceneID(sceneId,selfId,targetId)
		--如果与角色所T読 场景不符合就Tr� v玹h b読
		if StoreMapSceneID~=sceneId then
			return USEITEM_SKILL_FAIL
		end
		
		--判断角色位置和藏宝图位置喧ng否T読 m祎 c醝范围内
		HumanX	=	GetHumanWorldX(sceneId,selfId)
		HumanX = StoreMapX - HumanX
		
		if abs(HumanX)>2.0 then
			return USEITEM_SKILL_FAIL
		end
		
		HumanZ	=	GetHumanWorldZ(sceneId,selfId)	
		
		HumanZ = StoreMapZ - HumanZ
		
		if abs(HumanZ)>2.0 then
			return USEITEM_SKILL_FAIL
		end
		--T読 场景里找m祎 c醝与藏宝图符合to� 鸬 藏宝 餴琺
		StoreMapIndex = FindStorePointOnScene(sceneId,0,StoreMapX,StoreMapZ)
		
		if StoreMapIndex	== -1 then	
			return USEITEM_CANNT_USE			
		end
		-- 鹫t 疬㧟藏宝图类型
		StoreMapType = GetStorePointType(sceneId,StoreMapIndex)
		--删除藏宝 餴琺
		DelStorePointOnScene(sceneId,StoreMapType,StoreMapIndex)
		--奖励
		TryRecieveItem(sceneId,selfId,10222001,QUALITY_MUST_BE_CHANGE)
		
		
	return USEITEM_SUCCESS
	
end
