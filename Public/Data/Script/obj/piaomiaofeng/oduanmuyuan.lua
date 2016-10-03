--缥缈峰副本....
--端木元对话脚本....

--脚本号
x402274_g_ScriptId	= 402274

--副本逻辑脚本号....
x402274_g_FuBenScriptId = 402263

--**********************************
--死亡....
--**********************************
function x402274_OnDie( sceneId, selfId, killerId )

	--如果还没有Khi陁 chi猲过L� Thu Th鼀则可以Khi陁 chi猲L� Thu Th鼀....
	if 2 ~= CallScriptFunction( x402274_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "LiQiuShui" )	then
		CallScriptFunction( x402274_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "LiQiuShui", 1 )
	end
	-- zchw 全球公告
	local	playerName	= GetName( sceneId, killerId )
	
	--杀死怪物to� 鸬 喧ng宠物詍祎 袢∑渲魅藅o� 鸬 T阯....
	local playerID = killerId
	local objType = GetCharacterType( sceneId, killerId )
	if objType == 3 then
		playerID = GetPetCreator( sceneId, killerId )
		playerName = GetName( sceneId, playerID )
	end
	
	--如果玩家组队了詍祎 袢《映o� 鸬 T阯....
	local leaderID = GetTeamLeader( sceneId, playerID )
	if leaderID ~= -1 then
		playerName = GetName( sceneId, leaderID )
	end
	
	if playerName ~= nil then
		str = format("#{PMF_8812_04}#{_INFOUSR%s}#{PMF_8812_05}", playerName); --Nh B靚h Sinh
		AddGlobalCountNews( sceneId, str )
	end
end
