--Kinh nghi甿分配

--脚本号
x806018_g_ScriptId					= 806018

--每天可以拿帮贡秏祎 籺o� 鸬 Kinh nghi甿最多为200*600=12万 餴琺
x806018_g_AssignExpDateMax	= 120000

--**********************************
--任务入口函数
--**********************************
function x806018_OnDefaultEvent( sceneId, selfId, targetId )

	local	nMlevel	= LuaFnGetmasterLevel( sceneId, selfId )
	if nMlevel < 1 or nMlevel > 4 then
		x806018_MsgBox( sceneId, selfId, targetId, "  衅ng c s� 鹧c kh鬾g 瘘" )
		return
	end
	if LuaGetPrenticeSupplyExp( sceneId, selfId ) == 0 then
		x806018_MsgBox( sceneId, selfId, targetId, "  Kh鬾g c� kinh nghi甿 c� th� l頽h" )
		return
	end
	
	--L頽h 上限
	local	nOldTime		= GetMissionData( sceneId, selfId, MD_PEXP_GP_TIME )
	local	nOldValue		= GetMissionData( sceneId, selfId, MD_PEXP_GP_VALUE )
	local	nNewTime		= GetDayTime()
	if nOldTime == nNewTime and nOldValue >= x806018_g_AssignExpDateMax then
		x806018_MsgBox( sceneId, selfId, targetId, "  C醕 h� h鬽 nay d鵱g 鸬 c痭g hi猲 鸨i kinh nghi甿 疸 m裞 c馽 h課, ng鄖 mai h銀 皙n nh l頽h ti猵" )
		return
	end
	
	--打开客户端帮派贡献度秏祎 籏inh nghi甿窗口
	LuaFnExpAssign( sceneId, selfId, 2 )
	--关闭窗口
	BeginUICommand( sceneId )
	UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 ) 

end

--**********************************
--列举事件
--**********************************
function x806018_OnEnumerate( sceneId, selfId, targetId )

	AddNumText( sceneId, x806018_g_ScriptId, "Ta mu痭 d鵱g 鸬 c痭g hi猲 bang h礽 nh l頽h kinh nghi甿", 6, -1 )

end

--**********************************
--C++回调接口: 
--帮会贡献度L頽h 师傅Kinh nghi甿
--**********************************
function x806018_CallBackExpAssignByGuildPoint( sceneId, selfId, nExp )

	--喧ng否处于无法执行逻辑to� 鸬 状态
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return 0
	end

	local	nAssignExp	= nExp
	local	nMlevel			= LuaFnGetmasterLevel( sceneId, selfId )
	if nMlevel < 1 or nMlevel > 4 then
		x806018_MsgTip( sceneId, selfId, "Sai 鹌ng c s� 鹧c" )
		return 0
	end
	if nAssignExp < 0 or nAssignExp > LuaGetPrenticeSupplyExp( sceneId, selfId ) then
		x806018_MsgTip( sceneId, selfId, "Nh l頽h g韆 tr� kinh nghi甿 sai" )
		return 0
	end
	if IsLocked( sceneId, selfId, 0 ) == 1 then
		x806018_MsgTip( sceneId, selfId, "械 c痭g hi猲 bang h礽 b� kh骯, xin l醫 sau hay th� l読" )
		return 0
	end
	
	--L頽h 上限
	local	nOldTime		= GetMissionData( sceneId, selfId, MD_PEXP_GP_TIME )
	local	nOldValue		= GetMissionData( sceneId, selfId, MD_PEXP_GP_VALUE )
	local	nNewTime		= GetDayTime()
	if nOldTime == nNewTime and nOldValue >= x806018_g_AssignExpDateMax then
		x806018_MsgTip( sceneId, selfId, "H鬽 nay 疸 鸨i 皙n m裞 t痠 餫" )
		return 0
	end
	if nOldTime ~= nNewTime then
		nOldValue				= 0
	end
	if nAssignExp + nOldValue > x806018_g_AssignExpDateMax then
		nAssignExp			= x806018_g_AssignExpDateMax - nOldValue
		x806018_MsgTip( sceneId, selfId, "M瞚 ng鄖 鸨i t痠 餫 "..x806018_g_AssignExpDateMax.." 餴琺 kinh nghi甿, c醕 h� ch� c騨 s� d� "..nAssignExp.." 衖琺" )
	end
	
	local	nBasePoint	= 0
	if nMlevel == 1 then
		nBasePoint			= 250
	elseif nMlevel == 2 then
		nBasePoint			= 300
	elseif nMlevel == 3 then
		nBasePoint			= 400
	elseif nMlevel == 4 then
		nBasePoint			= 600
	end
	local	nGPValue		= ceil( nAssignExp / nBasePoint )
	if nGPValue > CityGetAttr( sceneId, selfId, GUILD_CONTRIB_POINT ) then
		x806018_MsgTip( sceneId, selfId, "械 c痭g hi猲 bang h礽 kh鬾g 瘘" )
		return 0
	end
	--减少帮派贡献度
	CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, -nGPValue )
	--减少徒弟贡献to� 鸬 Kinh nghi甿
	LuaAddPrenticeProExp( sceneId, selfId, 0, -nAssignExp )
	--增加Kinh nghi甿
	AddExp( sceneId, selfId, nAssignExp )
	--数据统计
	LuaFnAuditMasterExp( sceneId, selfId, nGPValue, nAssignExp, 2 )

	--L頽h 记录
	if nOldTime ~= nNewTime then
		SetMissionData( sceneId, selfId, MD_PEXP_GP_TIME, nNewTime )
		SetMissionData( sceneId, selfId, MD_PEXP_GP_VALUE, nAssignExp )
	else
		SetMissionData( sceneId, selfId, MD_PEXP_GP_VALUE, nOldValue + nAssignExp )
	end

end

--**********************************
--对话窗口信息提示
--**********************************
function x806018_MsgBox( sceneId, selfId, targetId, str )

	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--醒目提示
--**********************************
function x806018_MsgTip( sceneId, selfId, str )

	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
