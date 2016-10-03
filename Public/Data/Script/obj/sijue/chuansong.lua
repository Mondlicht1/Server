-- 领奖NPC

x899994_g_scriptId = 899994
x899994_g_duihuan_scriptId = 77

--**********************************
--事件交互入口
--**********************************
function x899994_OnDefaultEvent( sceneId, selfId, targetId )
		local	lev	= GetLevel( sceneId, selfId )
		if lev < 10 then
			BeginEvent(sceneId)
	   			AddText( sceneId, "B鋘 鸢 m緄 nh 餫ng � T� Tuy畉 Trang....!" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else 
			BeginEvent(sceneId)
		   		--AddText( sceneId, "  #G我来自少林寺to� 鸬 #Y扫地僧,#G近期有人传闻在T� Tuy畉 庄发现#Y龙八部十大绝顶高手#G排名第m祎 to� 鸬 #cFF0000扫地僧to� 鸬 踪迹,#G只要你给我找来这些,#W我就答应你并与您并肩作战,成为C黙 ng呓i 珍兽！" )	
		   		--AddText( sceneId, "  集齐#cFF0000天 #Y、#cFF0000龙#Y、#cFF0000争#Y、#cFF0000霸#Y、#cFF0000赛#Y、#G既可以跟我秏祎 �#Y扫地僧卷轴！#G卷轴可以召唤出#cFF0000扫地僧珍兽#Gm祎 只,所有原始资质#cFF0000100000#G 餴琺,扫地僧珍兽可以领悟#G神秘珍兽技能！" )	
		   		AddText( sceneId, "  T� tuy畉 trang b鋘 sao r絠 ra: T痠 t鈔 b鋙 b鋙, B鋙 th誧h, Nguy畉 quang b鋙 h誴, B鋙 th誧h t呓ng kh鋗, BOSS t誴, Chung c馽 th kh� 痄 t誳 鸢 v� c醕 lo読 cao c h䅟 th鄋h ph�!" )	
		   		--AddText( sceneId, "  #G注意#Y:#cFF0000血战T� Tuy畉 庄#Y刷怪� 餴琺鳎�#G每日#cFF0000半 餴琺#G刷怪,时间为#Y30 ph鷗#G间隔。" )
		   		--AddNumText( sceneId, x899994_g_ScriptId, "#e6f00c7秏祎 籟天下第m祎 宝宝]", 4, 10 )
		   		--AddNumText( sceneId, x899994_g_ScriptId, "#cf30768扫地僧绝技:[Ph鴆 h� h鄋g long ch叻ng]获取", 4, 20 )
		   		AddNumText( sceneId, x899994_g_ScriptId, "#e0ba4b6耼 o醤 T� Tuy畉 Trang", 6, 30 )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
end
--**********************************
--事件列表选中m祎 项
--**********************************
function x899994_OnEventRequest( sceneId, selfId, targetId, eventId )
	--if eventId == x805016_g_duihuan_scriptId then
		--CallScriptFunction( x805016_g_duihuan_scriptId, "OnEventRequest",sceneId, selfId, targetId, GetNumText() )	
		--return
	--end

	if GetNumText() == 210 then
		BeginEvent( sceneId )
   		local n = GetMonsterCount(sceneId)
		if n>170 then
   		strText = "Tr呔c m s� l唼ng qu醝 v l�: "..n..", l鄊 gi鋗 s� l唼ng qu醝 xu痭g 170 th� n� s� h癷 sinh con kh醕,!"
  		AddText( sceneId, strText )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
   		else 
		BeginEvent( sceneId )
		LuaFnCreateMonster(531, 39339, 30, 30, 17, 0, 402030)
                AddText( sceneId, "G鱥 qu醝 v m緄 th鄋h c鬾g! B眓 quan c鵱g qu醝 v t眓g s� l唼ng l�: "..n.."!" )
           	AddText( sceneId, strText )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		end

	elseif GetNumText() == 10 then
	    if LuaFnGetAvailableItemCount(sceneId, selfId, 30505099) < 1 or LuaFnGetAvailableItemCount(sceneId, selfId, 30505100) < 1 or LuaFnGetAvailableItemCount(sceneId, selfId, 30505101) < 1 or LuaFnGetAvailableItemCount(sceneId, selfId, 30505102) < 1 or LuaFnGetAvailableItemCount(sceneId, selfId, 30505103) < 1	then
		x899994_MsgBox( sceneId, selfId, "Th馽 xin l瞚, v ph kh鬾g 瘘, kh鬾g th� 鸨i!" )	
		return
           else
	       local bDelOk1 = LuaFnDelAvailableItem(sceneId,selfId, 30505099, 1)
	       local bDelOk2 = LuaFnDelAvailableItem(sceneId,selfId, 30505100, 1)
	       local bDelOk3 = LuaFnDelAvailableItem(sceneId,selfId, 30505101, 1)
	       local bDelOk4 = LuaFnDelAvailableItem(sceneId,selfId, 30505102, 1)
	       local bDelOk5 = LuaFnDelAvailableItem(sceneId,selfId, 30505103, 1)

	       if bDelOk1 < 1 or bDelOk2 < 1 or bDelOk3 < 1 or bDelOk4 < 1 or bDelOk5 < 1 then
		x899994_MsgBox( sceneId, selfId, "Th馽 xin l瞚, v ph kh鬾g 瘘, kh鬾g th� 鸨i!" )	
		return
	       else
		--给完家东西,完成
		local nBagIndex = TryRecieveItem( sceneId, selfId, 30503060, 1 )
		x899994_MsgBox( sceneId, selfId, "斜i th鄋h c鬾g!" )	
				
		local message;	
		local randMessage = random(2);
		
		local szTransferEquip = GetBagItemTransfer(sceneId,selfId, nBagIndex)
		
		if randMessage == 1 then
			message = format("#I#{_INFOUSR%s}#{JPZB_0610_14}#Y#{_INFOMSG%s}#{JPZB_0610_15}", GetName(sceneId, selfId), szTransferEquip);
		else
			message = format("#I#{_INFOUSR%s}#{JPZB_0610_14}#Y#{_INFOMSG%s}#{JPZB_0610_15}", GetName(sceneId, selfId), szTransferEquip);
		end
		
		BroadMsgByChatPipe(sceneId, selfId, message, 4);
		
		return
	       end
      end

	elseif GetNumText() == 20 then
		BeginEvent( sceneId )
		AddText( sceneId, "  Thu th #cFF000088#Gr呓ng #Yc� th� t鄋 hi畉 #G m� ra nh 疬㧟 #cFF0000t鋙 鸶a tr鈔 th�#G, c� th� l頽h #cFF0000T鋙 鸶a tuy畉 k� #Gph鴆 h� h鄋g long ch叻ng,#G 皙n #Ytr鈔 th� th呓ng nh鈔 #cFF0000V鈔 Mi瑄 Mi瑄 #G痿i!" )	
		AddText( sceneId, "  #G[#YTuy畉 k�: Ph鴆 h� h鄋g long ch叻ng]#cFF0000 k� n錸g qu th�,#W 疳nh tr呔c m,#G15 th呔c #Wtrong ph誱 vi nhi玼 nh #Y6 m鴆 ti陁 #W鸢ng th秈 b� th呓ng t眓 tr馽 ti猵,#G gi鋗 #cFF000025% huy猼,#W c鵱g l鷆 m鴆 ti陁 l鈓 v鄌 #cFF0000tr課g th醝 鸶nh th鈔, #Y kh鬾g th� di chuy琻 #W v� #Ys� d鴑g k� n錸g,#G li阯 t鴆 #cFF00005#Ggi鈟, #Wph鴆 h癷 #cFF00005ph鷗!" )	
		AddNumText( sceneId, x899994_g_ScriptId, "#cf30768Thu 疬㧟 [Ph鴆 h� h鄋g long ch叻ng]", 5, 40 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 40 then

	petcount = LuaFnGetPetCount(sceneId, selfId) --取 餴琺珍兽数量
	for	i=0,petcount-1 do
		petdataid = LuaFnGetPet_DataID(sceneId, selfId, i) --取 餴琺珍兽编号
		if petdataid==427 then
			nThisFound = 1
			break
		end
	end

	if nThisFound == 1 then
	       	local nStoneId0 = 30503026
		       c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
                          if c0 >=88 then
			         LuaFnDelAvailableItem(sceneId,selfId,30503026,88)--删除物品
		--给完家东西,完成
		local nBagIndex = TryRecieveItem( sceneId, selfId, 30402289, 1 )
		
		BeginEvent(sceneId)
			strText = "斜i th鄋h c鬾g!"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
		
		local message;	
		local randMessage = random(2);
		
		local szTransferEquip = GetBagItemTransfer(sceneId,selfId, nBagIndex)
		
		if randMessage == 1 then
			message = format("#I#{_INFOUSR%s}#{JPZB_0610_14}#Y#{_INFOMSG%s}#{JPZB_0610_15}", GetName(sceneId, selfId), szTransferEquip);
		else
			message = format("#I#{_INFOUSR%s}#{JPZB_0610_14}#Y#{_INFOMSG%s}#{JPZB_0610_15}", GetName(sceneId, selfId), szTransferEquip);
		end
		
		BroadMsgByChatPipe(sceneId, selfId, message, 4);
		
		return
                          else
               	        BeginEvent( sceneId ) 
	        	           AddText( sceneId, "#G凶ng t鵼 t鵼 ti畁 li玭 皙n l譨 d痠 ta! Ng呓i tr阯 ng叨i c錸 b鋘 kh鬾g c� s� h� v ph" )
              	           EndEvent( sceneId )
               	        DispatchEventList( sceneId, selfId, targetId )
       	            end
	else
		x899994_NotifyFailTips(sceneId, selfId, "Ng呓i kh鬾g c� t鋙 鸶a s黱g v, Ph鴆 h� h鄋g long ch叻ng ch� c� k� n錸g t鋙 鸶a, th飊h 鹫t 疬㧟 t鋙 鸶a s黱g v sau l読 皙n 鸨i!")
	end


          elseif GetNumText() == 30 then

	if LuaFnGetDRideFlag(sceneId, selfId) ~= 0  then
		BeginEvent(sceneId)
		AddText(sceneId,"  Tr課g th醝 c咿i th�, kh鬾g th� ti猲 nh, c醡 絥!");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end
	if LuaFnHasTeam( sceneId, selfId ) > 0 then
		BeginEvent( sceneId )
		AddText( sceneId, "Ch鷑g ta t鬾 k韓h ngo課 gia, b鋘 鸢 nhi玼 nh m祎 ng叨i 餴 v鄌. Hu� b� t� 鸬i 餴!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return 
	end
     CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 540, 98,79,10 )--传送
    end
end

--**********************************
-- 对话窗口信息提示
--**********************************
function x899994_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- 屏幕中间信息提示
--**********************************
function x899994_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
--**********************************
--消息提示
--**********************************
function x899994_MsgBox( sceneId, selfId, str )	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--对话提示
--**********************************
function x899994_TalkMsg( sceneId, selfId, targetId, str )	
	BeginEvent(sceneId)
      AddText(sceneId, str)      
  EndEvent(sceneId)
  DispatchEventList(sceneId,selfId,targetId)    
end
