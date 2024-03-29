--师德等c升c任务

--脚本号
x806015_g_ScriptId = 806015

--事件
x806015_g_Update					= {}
x806015_g_Update["id"]		= 1000
x806015_g_Update["wu"]		= 1001
x806015_g_Update["uw"]		= 1002

--提示信息
x806015_g_msg					= {}
x806015_g_msg["up"]	= "C n鈔g cao 鹌ng c s� 鹧c"
x806015_g_msg["un"]	= "  衅ng c s� 鹧c c黙 c醕 h� 疸 � m裞 cao nh, kh鬾g th� n鈔g cao h絥"
x806015_g_msg["nv"]	= "  Tr� gi� thi畁 醕 c黙 ng呓i kh鬾g 瘘, kh鬾g th� n鈔g cao"
x806015_g_msg["uc"]	= "  Th錸g c t緄 A c d鵱g B 餴琺 tr� gi� thi畁 醕"
x806015_g_msg["wu"]	= "C n鈔g cao 鹌ng c s� 鹧c"
x806015_g_msg["uw"]	= "Ta v鏽 kh鬾g mu痭 th錸g c"
x806015_g_msg["ul"]	= "  Ch� c� 鹌ng c ph鋓 l緉 h絥 20 m緄 瘘 t� c醕h xin s� ph� danh x遪g,"

x806015_g_Title		={}
x806015_g_Title[1] = "S� Ph� S� C"
x806015_g_Title[2] = "S� Ph� Trung C"
x806015_g_Title[3] = "S� Ph� Cao C"
x806015_g_Title[4] = "Nh 姓i Danh S�"


--**********************************
--任务入口函数 请求收徒
--**********************************
function x806015_OnDefaultEvent( sceneId, selfId, targetId )
	local	key	= GetNumText()
	
	--升c确认
	if key == x806015_g_Update["id"] then
		x806015_Upgrade( sceneId, selfId, targetId )
		return 0
	end
	

	--同意升c
	if key == x806015_g_Update["wu"] then
		if x806015_DoUpgrade( sceneId, selfId, targetId ) == 0 then
			return 0
		end
		
		--BeginUICommand( sceneId )
		--UICommand_AddInt( sceneId, targetId )
		--EndUICommand( sceneId )
		--DispatchUICommand( sceneId, selfId, 1000 )

		local msg = "衅ng c s� 鹧c c黙 c醕 h� 疬㧟 th錸g c t緄" .. tostring( LuaFnGetmasterLevel( sceneId, selfId ) .. "c." )
		x806015_MessageBox( sceneId, selfId, targetId, "  "..msg )
		Msg2Player( sceneId, selfId, msg, MSG2PLAYER_PARA )
		return 0
	end
	
	--不同意升c
	if key == x806015_g_Update["uw"] then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	end
end

--**********************************
--列举事件
--**********************************
function x806015_OnEnumerate( sceneId, selfId, targetId )

	AddNumText( sceneId, x806015_g_ScriptId, x806015_g_msg["up"], 6, x806015_g_Update["id"] )
end

--**********************************
--检测Ti猵 th跫�
--**********************************
function x806015_CheckAccept( sceneId, selfId, targetId )
end

--**********************************
--Ti猵 th�
--**********************************
function x806015_OnAccept( sceneId, selfId, targetId )
	x806015_OnConfirm( sceneId, selfId, targetId )
end

--**********************************
--提交
--**********************************
function x806015_OnSubmit( sceneId, selfId, targetId, tId )
end

--**********************************
--拒绝
--**********************************
function x806015_OnCancel( sceneId, selfId, targetId )
end

--**********************************
--对话窗口信息提示
--**********************************
function x806015_MessageBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--蘈inhΦ碌萩确认对话框
--**********************************
function x806015_Upgrade( sceneId, selfId, targetId )
	local HumanLevel = LuaFnGetLevel( sceneId, selfId )
	local level = LuaFnGetmasterLevel( sceneId, selfId )
	
	if HumanLevel < 20 then
		x806015_MessageBox( sceneId, selfId, targetId, x806015_g_msg["ul"] )
		return 0
	end
	
	--检查喧ng否已经升c到最大了
	if level >= 4 then
		x806015_MessageBox( sceneId, selfId, targetId, x806015_g_msg["un"] )
		return 0
	end
	
	--计算C to� 鸬 善恶值
	local exp = 0
	
	if level == 0 and HumanLevel < 60 then
		exp = 500
	elseif level == 1 then
		exp = 5000
	elseif level == 2 then
		exp = 25000
	elseif level == 3 then
		exp = 50000
	end
	
	local text = "  衅ng c s� 鹧c s� 疬㧟 th錸g c t緄" .. tostring( level + 1 ) .. "c, s� ti陁 hao tr� gi� thi畁 醕" .. tostring( exp ) .. "衖琺."
	BeginEvent( sceneId )
		AddText( sceneId, text )
		AddNumText( sceneId, x806015_g_ScriptId, x806015_g_msg["wu"], 6, x806015_g_Update["wu"] )
		AddNumText( sceneId, x806015_g_ScriptId, x806015_g_msg["uw"], 8, x806015_g_Update["uw"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
	return 1
end

function x806015_DoUpgrade( sceneId, selfId, targetId )

	local HumanLevel = LuaFnGetLevel( sceneId, selfId )
	local level = LuaFnGetmasterLevel( sceneId, selfId )
	if level >= 4 then
--	x806015_MessageBox( sceneId, selfId, targetId, msg )
		return 0
	end
	
	--计算C to� 鸬 善恶值
	local exp = 0
	if level == 0 and HumanLevel < 60 then
		exp = 500
	elseif level == 1 then
		exp = 5000
	elseif level == 2 then
		exp = 25000
	elseif level == 3 then
		exp = 50000
	end
	
	--检查善恶值
	local gbvalue = LuaFnGetHumanGoodBadValue( sceneId, selfId )
	if gbvalue < exp then
		local msg = "  Tr� gi� thi畁 醕 c黙 c醕 h� kh鬾g 瘘. Tr� gi� thi畁 醕 c黙 c醕 h� hi畁 l�" .. tostring( gbvalue ) .. "."
		x806015_MessageBox( sceneId, selfId, targetId, msg )
		return 0
	end
	
	--蘈inhΦ碌萩
	level = level + 1
	LuaFnSetmasterLevel( sceneId, selfId, level )
	
	--扣除善恶值
	gbvalue = gbvalue - exp
	LuaFnSetHumanGoodBadValue( sceneId, selfId, gbvalue )
	
	--修改师德等c相关称号
	AwardMasterTitle( sceneId, selfId, x806015_g_Title[level] )
	DispatchAllTitle( sceneId, selfId )
	SetCurTitle( sceneId, selfId, 27, 0 )

	--全球公告
	local	nam	= GetName( sceneId, selfId )
	local	str	= format( "#IXin ch鷆 m譶g#W#{_INFOUSR%s}#Ith鄋h c鬾g 鹫t 疬㧟 #G%s#I danh x遪g, c� th� thu nh nh鎛g ng叨i ch絠 kh醕 l鄊 鸢 甬.", nam, x806015_g_Title[level] )
	AddGlobalCountNews( sceneId, str )
	
	--特效与音效
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )

	return level
end
