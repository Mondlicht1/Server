--出师任务

--脚本号
x806007_g_ScriptId	= 806007

--出师
x806007_g_FinishAppr				= {}
x806007_g_FinishAppr["Id"]	= 1004
x806007_g_FinishAppr["Name"]= "Ta 疬a 鸢 甬 xu s�"

--提示信息
x806007_g_msg					= {}
x806007_g_msg["tem"]	= "  C 2 nh髆 鸢 甬 t緄 t靘 ta m緄 c� th� xu s�"
x806007_g_msg["ner"]	= "  Ch� c� 2 ng叨i 皤u t緄 b阯 ta m緄 c� th� xu s�"
x806007_g_msg["lev"]	= "  衅ng c 鸢 甬 鹫t t緄 c 40 m緄 c� th� xu s�"
x806007_g_msg["dad"]	= "  Ng呓i v鏽 ch遖 thu nh 鸢 甬"
x806007_g_msg["itm"]	= "  Trong tay n鋓 c黙 2 s� 鸢 c c� 韙 nh 1 khoang tr痭g cho v ph b靚h th叨ng"

--出师奖励
x806007_g_itm		= { 30008001, "羞秐g 皈u xu s�" }

--**********************************
--任务入口函数
--**********************************
function x806007_OnDefaultEvent( sceneId, selfId, targetId )
	local	tId	= x806007_CheckAccept( sceneId, selfId, targetId )
	if tId == 0 then
		return
	end

	x806007_OnAccept( sceneId, selfId, targetId, tId )
end

--**********************************
--列举事件
--**********************************
function x806007_OnEnumerate( sceneId, selfId, targetId )
	AddNumText( sceneId, x806007_g_ScriptId, x806007_g_FinishAppr["Name"] , 6, -1 )
end

--**********************************
--检测Ti猵 th跫�
--**********************************
function x806007_CheckAccept( sceneId, selfId, targetId )
	--(1)组队中只有师徒两c醝人
	if LuaFnHasTeam( sceneId, selfId ) == 0 or LuaFnGetTeamSize( sceneId, selfId ) ~= 2 then
		x806007_MsgBox( sceneId, selfId, targetId, x806007_g_msg["tem"] )
		return 0
	end
	if LuaFnGetTeamSceneMemberCount( sceneId, selfId ) ~= 1 then
		x806007_MsgBox( sceneId, selfId, targetId, x806007_g_msg["ner"] )
		return 0
	end

	local	tId	= LuaFnGetTeamSceneMember( sceneId, selfId, 0 )
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 or LuaFnIsCanDoScriptLogic( sceneId, tId ) ~= 1 then
		return 0
	end

	--(2)徒弟喧ng否达到40c
	if LuaFnGetLevel( sceneId, tId ) < 40 then
		x806007_MsgBox( sceneId, selfId, targetId, x806007_g_msg["lev"] )
		return 0
	end

	--(3)喧ng否喧ng师傅关系
	if LuaFnIsPrentice( sceneId, selfId, tId ) ~= 1 then
		x806007_MsgBox( sceneId, selfId, targetId, x806007_g_msg["dad"] )
		return 0
	end

	--(4)双方背包中必须有m祎 c醝空间
	LuaFnBeginAddItem( sceneId )
	LuaFnAddItem( sceneId, x806007_g_itm[1], 1 )
	if LuaFnEndAddItem( sceneId, selfId ) ~= 1 or LuaFnEndAddItem( sceneId, tId ) ~= 1 then
		x806007_MsgBox( sceneId, selfId, targetId, x806007_g_msg["itm"] )
		return 0
	end

	return tId
end

--**********************************
--Ti猵 th�
--**********************************
function x806007_OnAccept( sceneId, selfId, targetId, tId )
	--师傅, 师傅对徒弟to� 鸬 友好度
	local	fp_st	= LuaFnGetFriendPoint( sceneId, selfId, tId )
	--徒弟,徒弟对师傅to� 鸬 友好度
	local	fp_ts	= LuaFnGetFriendPoint( sceneId, tId, selfId )
	local	lv_t	= LuaFnGetLevel( sceneId, tId )

	--(1)如果徒弟等c喧ng[40,45],并且双方友好度>=300
	if lv_t >= 40 and lv_t <= 45 and fp_st >= 300 and fp_ts >=300 then
		--LuaFnAddItemListToHuman( sceneId, selfId )
		--LuaFnAddItemListToHuman( sceneId, tId )

		--师德 餴琺相关
		--给师傅增加师德(X=0-1000000) N=M＋MIN(X=500, 师父对徒弟to� 鸬 友好度*T)
		--local	_M	= 10		--基数
		--local	_T	= 5			--加权指数
		--local	MoralPoint	--师德 餴琺数
		--if fp_st * _T < 500 then
		--	MoralPoint= _M + fp_st * _T
		--else
		--	MoralPoint= _M + 500
		--end

		--师傅
		x806007_MsgBox( sceneId, selfId, targetId, "  Xu s� th鄋h c鬾g!" )
		Msg2Player( sceneId, selfId, "Xu s� th鄋h c鬾g!", MSG2PLAYER_PARA )
		Msg2Player( sceneId, selfId, "C醕 h� 疸 鹫t 疬㧟"..x806007_g_itm[2].."M祎", MSG2PLAYER_PARA )
		--Msg2Player( sceneId, selfId, " 餴琺到师德 餴琺数"..MoralPoint..".", MSG2PLAYER_PARA )

		--徒弟
		x806007_MsgBox( sceneId, tId, targetId, "  Xu s� th鄋h c鬾g!" )
		Msg2Player( sceneId, tId, "Xu s� th鄋h c鬾g!", MSG2PLAYER_PARA )
		Msg2Player( sceneId, tId, "C醕 h� 疸 鹫t 疬㧟"..x806007_g_itm[2].."M祎", MSG2PLAYER_PARA )

		--累积师德 餴琺数
		--MoralPoint	= MoralPoint + LuaFnGetMasterMoralPoint( sceneId, selfId )
		--if MoralPoint > 1000000 then
		--	MoralPoint= 1000000
		--end
		--LuaFnSetMasterMoralPoint( sceneId, selfId, MoralPoint )
		
		local	title
		local MasterName	= LuaFnGetName( sceneId, selfId )
		--师傅称号
		--title	= x806007_GetTitle( MoralPoint )
		--if title ~= "" then
		--	AwardShiTuTitle( sceneId, selfId, title )
		--	DispatchAllTitle( sceneId, selfId )
		--	Msg2Player( sceneId, selfId, " 鹫t 疬㧟称号: "..title..".", MSG2PLAYER_PARA )
		--end

		--徒弟称号
		title	= MasterName.."邪 甬"
		AwardShiTuTitle( sceneId, tId, title )
		DispatchAllTitle( sceneId, tId )
		Msg2Player( sceneId, tId, "Danh x遪g 鹫t 疬㧟: "..title..".", MSG2PLAYER_PARA )

	--(2)如果徒弟等c大于45,或者双方友好度小于300
	else
		local	msg	= "Do 鸬 h鎢 h鋙 ch遖 t緄 300 ho 鹌ng c 鸢 甬 l緉 h絥 c 45, n阯 kh鬾g c� tg th叻ng"
		--师傅
		x806007_MsgBox( sceneId, selfId, targetId, "  Xu s� th鄋h c鬾g!"..msg )
		Msg2Player( sceneId, selfId, "Xu s� th鄋h c鬾g!", MSG2PLAYER_PARA )
		Msg2Player( sceneId, selfId, msg, MSG2PLAYER_PARA )
	
		--徒弟
		x806007_MsgBox( sceneId, tId, targetId, "  Xu s� th鄋h c鬾g!"..msg )
		Msg2Player( sceneId, tId, "Xu s� th鄋h c鬾g!", MSG2PLAYER_PARA )
		Msg2Player( sceneId, tId, msg, MSG2PLAYER_PARA )
	end

	--Hu� b鍪ν焦叵�
	LuaFnFinishAprentice( sceneId, tId, selfId )
end

--**********************************
--根据师德 餴琺,获取称号
--**********************************
function x806007_GetTitle( MoralPoint )
	--local	mp	= MoralPoint
	--if mp >= 100000 then
	--	return "桃李满天下"
	--elseif mp >= 50000 then
	--	return "诲人不倦"
	--elseif mp >= 10000 then
	--	return "m祎 代名师"
	--elseif mp >= 5000 then
	--	return "麻辣教师"
	--elseif mp >= 2000 then
	--	return "为人师表"
	--elseif mp >= 100 then
	--	return "初为人师"
	--end

	return ""
end

--**********************************
--对话窗口信息提示
--**********************************
function x806007_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
