-- 805046
-- 山鬼boss

--副本数据索引对照
x805046_g_keySD					= {}
x805046_g_keySD["typ"]			= 0		--设置副本类型
x805046_g_keySD["spt"]			= 1		--设置副本场景事件脚本号
x805046_g_keySD["tim"]			= 2		--设置定时器调用次数
x805046_g_keySD["currStage"]	= 3		--设置定时器调用次数
x805046_g_keySD["scn"]			= 4		--设置副本入口场景号, 初始化
x805046_g_keySD["cls"]			= 5		--设置副本关闭标志, 0开放,1关闭
x805046_g_keySD["dwn"]			= 6		--设置离开倒计时次数
x805046_g_keySD["tem"]			= 7		--保存队伍号
x805046_g_keySD["x"]			= 8			--人物T読 入口场景中to� 鸬 x位置
x805046_g_keySD["z"]			= 9			--人物T読 入口场景中to� 鸬 z位置
x805046_g_keySD["killMonsterNum"]	= 10		--杀死怪物数量
x805046_g_keySD["genMonsterNum"]	= 11			--生成怪物数量
x805046_g_keySD["playerLevel"]	= 12		--记录当前副本to� 鸬 c别


--**********************************
-- 自己死亡
--**********************************
function x805046_OnDie( sceneId, selfId, killerId )
	local killNum = LuaFnGetCopySceneData_Param( sceneId, x805046_g_keySD["killMonsterNum"] )	
	killNum = killNum + 1
	LuaFnSetCopySceneData_Param( sceneId, x805046_g_keySD["killMonsterNum"], killNum )
	
	local genNum = LuaFnGetCopySceneData_Param( sceneId, x805046_g_keySD["genMonsterNum"] )	
	x805046_TipAllHuman(sceneId, "秀 gi猼 ch猼 s絥 qu�  "..killNum.." / "..genNum )	
end

--**********************************
-- 心跳
--**********************************
function x805046_OnHeartBeat(sceneId, selfId, nTick)

end

--**********************************
-- 初始化
--**********************************
function x805046_OnInit(sceneId, selfId)
	local genNum = LuaFnGetCopySceneData_Param( sceneId, x805046_g_keySD["genMonsterNum"] )	
	genNum = genNum + 1
	LuaFnSetCopySceneData_Param( sceneId, x805046_g_keySD["genMonsterNum"], genNum )	
end

--**********************************
-- 杀死玩家
--**********************************
function x805046_OnKillCharacter(sceneId, selfId, targetId)

end

--**********************************
-- 进入Cu礳 chi猲 
--**********************************
function x805046_OnEnterCombat(sceneId, selfId, enmeyId)

end

--**********************************
-- 脱离Cu礳 chi猲 
--**********************************
function x805046_OnLeaveCombat(sceneId, selfId)

end

--**********************************
--提示所有副本内玩家
--**********************************
function x805046_TipAllHuman( sceneId, Str )
	--  鹫t 疬㧟场景里头to� 鸬 所有人
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- 没有人to� 鸬 场景,什么都不做
	if nHumanNum < 1 then
		return
	end
	
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		
		if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
			BeginEvent(sceneId)
				AddText(sceneId, Str)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId, PlayerId)
		end
	end
end

--随机选择m祎 c醝玩家
function x805046_RandPlayer( sceneId )
	--  鹫t 疬㧟场景里头to� 鸬 所有人
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- 没有人to� 鸬 场景
	if nHumanNum < 1 then
		return -1
	end
	
	
	local rPlayerIndex = random( nHumanNum )

	local PlayerId = LuaFnGetCopyScene_HumanObjId( sceneId, rPlayerIndex )
	return PlayerId
end
