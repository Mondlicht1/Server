--Th�c H� C� Tr�nNPC....
--��ʯ����....

x001194_g_scriptId = 001194

x001194_g_MsgInfo = { "#{SHGZ_0612_13}",
											"#{SHGZ_0620_37}",
											"#{SHGZ_0620_38}",
											"#{SHGZ_0620_39}",
										}

--**********************************
--�¼��������
--**********************************
function x001194_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )

		local msgidx = random(getn(x001194_g_MsgInfo))
		AddText( sceneId, x001194_g_MsgInfo[msgidx] )
		AddNumText( sceneId, x001194_g_scriptId, "Gi�i thi�u t�nh n�ng B�o Th�ch", 11, 0 )
		AddNumText( sceneId, x001194_g_scriptId, "Gi�i thi�u v� k�t h�p nguy�n li�u", 11, 20 ) -- add by cuiyinjie 20081021
		AddNumText( sceneId, x001194_g_scriptId, "B�o Th�ch H�p Th�nh", 6, 1 )
		AddNumText( sceneId, x001194_g_scriptId, "��c L� Trang B�", 6, 2 )
		AddNumText( sceneId, x001194_g_scriptId, "Th�o G� B�o Th�ch", 6, 3 )
		AddNumText( sceneId, x001194_g_scriptId, "Nguy�n Li�u H�p Th�nh", 6, 4 )
		AddNumText( sceneId, x001194_g_scriptId, "Kh�m B�o Th�ch", 6, 5 )
		AddNumText( sceneId, x001194_g_scriptId, "�i�u Tr�c B�o Th�ch", 6, 6 )
		AddNumText( sceneId, x001194_g_scriptId, "B�o Th�ch Dung Luy�n", 6, 7 )

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end


--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x001194_OnEventRequest( sceneId, selfId, targetId, eventId )

		if GetNumText() == 0 then
			BeginEvent(sceneId)	
			
				AddText(sceneId,"#{function_help_103}#r")
			
				AddNumText(sceneId, x001194_g_scriptId,"Gi�i thi�u trang b� khoan",11,8);
				AddNumText(sceneId, x001194_g_scriptId,"Gi�i thi�u h�p th�nh B�o Th�ch",11,9);
				AddNumText(sceneId, x001194_g_scriptId,"Gi�i thi�u kh�m B�o Th�ch",11,10);
				AddNumText(sceneId, x001194_g_scriptId,"Gi�i thi�u th�o g� B�o Th�ch",11,11);
--				AddNumText(sceneId, x001194_g_scriptId,"װ����������",11,12);
				AddNumText(sceneId, x001194_g_scriptId,"Gi�i thi�u �i�u tr�c B�o Th�ch",11,13);
				AddNumText(sceneId, x001194_g_scriptId,"Gi�i thi�u v� B�o Th�ch Dung Luy�n",11,14);
				AddNumText(sceneId, x001194_g_scriptId,"Gi�i thi�u v� Th�ng l�i B�o Th�ch",11,15);

			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		-- addstart 2008-10-21 add by cuiyinjie
		if GetNumText() == 20 then  -- add by cuiyinjie ���Ϻϳɽ���
			BeginEvent(sceneId)			
				AddText(sceneId,"#{SJSJ_081021_002}#r")
				AddNumText(sceneId, x001194_g_scriptId,"Gi�i thi�u v� thao t�c Tinh Thi�t",11,21);
				AddNumText(sceneId, x001194_g_scriptId,"Gi�i thi�u v� thao t�c B� Ng�n",11,22);
				AddNumText(sceneId, x001194_g_scriptId,"Gi�i thi�u v� thao t�c Mi�n B�",11,23);	
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		if GetNumText() == 21 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{SJSJ_081021_004}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 22 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{SJSJ_081021_005}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 23 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{SJSJ_081021_006}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		-- addend 2008-10-21 
	
		if GetNumText() == 8 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{function_help_039}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 9 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{function_help_040}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 10 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{function_help_041}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		if GetNumText() == 11 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{function_help_042}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
--		if GetNumText() == 12 then
--			BeginEvent(sceneId)						
--				AddText(sceneId,"#{function_help_043}#r")
--			EndEvent(sceneId)
--			DispatchEventList(sceneId,selfId,targetId)
--			return
--		end

		if GetNumText() == 13 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{INTERFACE_XML_GemCarve_6}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 14 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{JKBS_081021_022}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		if GetNumText() == 15 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{JKBS_081021_023}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end


		--------------------------------------------------------------------------
		if GetNumText() == 1 then
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 23 )
			return
		end

		if GetNumText() == 2 then
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 25 )
			return
		end

		if GetNumText() == 3 then
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 27 )
			return
		end

		if GetNumText() == 4 then
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 19810424 )
			return
		end

		if GetNumText() == 5 then
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 19830424 )
			return
		end

		if GetNumText() == 6 then
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 112236 )
			return
		end

		if GetNumText() == 7 then
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 112237 )
			return
		end

end
