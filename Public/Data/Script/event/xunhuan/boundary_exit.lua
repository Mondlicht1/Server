-- 连环副本回Th鄋h th竧o� 鸬 传送 餴琺

x050103_g_ScriptId = 050103
x050103_g_ControlScript = 050100

x050103_g_Back_X = 60
x050103_g_Back_Z = 161

-- 玩家进入传送 餴琺
function x050103_OnEnterArea( sceneId, selfId )
	--CallScriptFunction( x050103_g_ControlScript, "Exit", sceneId, selfId )	
	--2007.12.6 by alan,防止组队跟随to� 鸬 械i vi阯 被传送 餴琺传走
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				-- 取 餴琺副本入口场景号
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, oldsceneId,x050103_g_Back_X,x050103_g_Back_Z)
end

-- 玩家停留T読 传送 餴琺
function x050103_OnTimer( sceneId, selfId )
	return
end

-- 玩家离开传送 餴琺
function x050103_OnLeaveArea( sceneId, selfId )
	return
end
