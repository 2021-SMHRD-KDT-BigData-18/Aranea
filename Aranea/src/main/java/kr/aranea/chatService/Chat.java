package kr.aranea.chatService;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import kr.aranea.dao.T_ChatDAO;
import kr.aranea.entity.T_Chat;

@ServerEndpoint(value="/broadcasting/{roomId}")
public class Chat {
	private static Set<Session> sessionSet = Collections.synchronizedSet(new HashSet<Session>());
	private static Map<String, ArrayList<Session>> sessionMap = Collections.synchronizedMap(new HashMap<String, ArrayList<Session>>());


	@OnOpen
    public void onOpen(Session s, @PathParam("roomId") String roomId ) {

        // 방 처음 들어왔으면 해당 방 세션리스트생성
        if(!sessionMap.containsKey(roomId)){
            sessionMap.put(roomId, new ArrayList<>());
        }

        //방에 아무도 없다면 해당 방 세션리스트생성 & 추가, 있다면 추가만
        if(sessionMap.get(roomId).size()==0){
            sessionMap.put(roomId, new ArrayList<>());
            sessionMap.get(roomId).add(s);
        }else{
            sessionMap.get(roomId).add(s);
        }

        if(!sessionSet.contains(s)) {
            sessionSet.add(s);
            System.out.println("세션 열림 : " + s);
        }else {
        	System.out.println("이미 연결된 세션");
        }

        System.out.println("*******방마다 세션 객체 불러오기*******");
        for(String key: sessionMap.keySet()){
        	System.out.println(key+"번방 : ");
            for(int j=0; j<sessionMap.get(key).size();j++){
            	System.out.println(String.valueOf(sessionMap.get(key).get(j)));
            }
        }
    }



	@OnMessage
    public void onMessage(String msg, Session s, @PathParam("roomId") String roomId) throws Exception{
        //사용자가 어느 방에 있는지 찾기
        String findkey = "";
        for(String key: sessionMap.keySet()){
            for(int j=0; j<sessionMap.get(key).size();j++){
                if(sessionMap.get(key).get(j).equals(s)){
                    findkey = key;
                }
            }
        }
        // 방에 있는 세션 모두 tmpSessionSet에 저장
        Set<Session> tmpSessionSet = Collections.synchronizedSet(new HashSet<Session>());
        for(int j=0;j<sessionMap.get(findkey).size();j++){
            tmpSessionSet.add(sessionMap.get(findkey).get(j));
        }
        // roomId => 방 시퀀스
        String str = "ABCDEFG,!,HIJKLMN,!,OPQRSTU,!,VWXYZ";
		String[] ArraysStr = str.split(",!,");
		for(String ds : ArraysStr) {
			System.out.println(ds);}
		System.out.println("-----------");
        
        
        String[] message = msg.split(",!,");
        System.out.println(msg);
        System.out.println("-----------");
        for(int i =0;i<message.length;i++) {
        	System.out.println(i);
        	System.out.println(message[i]);
        }
        String sender = message[0];
        String content = message[1];
        String name = message[2];
        
//        T_CHATTING dto = new T_CHATTING();
//        T_CHATTINGDAO dao = new T_CHATTINGDAO();
//        dto.setCHAT_CONTENT(content);
//        //dto.setCR_SEQ(roomId);
//        dto.setCR_SEQ(1);
//        dto.setTALKER(sender);
//        
//        int res = dao.chat(dto);
//        if(res!=0)
//        	System.out.println("OK!");
        
        
        
        T_Chat dto = new T_Chat();
        dto.setChat_sender(sender);
        dto.setChat_urlpath(roomId);
        dto.setChat_content(content);
        dto.setChat_name(name);
        
        T_ChatDAO dao = new T_ChatDAO();
        int row = dao.insertChat(dto);
        
        System.out.println(sender);
        System.out.println(roomId);
        System.out.println(content);

        //같은 방에 있는 사람에게만 보낸다.
        for(Session session : tmpSessionSet) {
        	System.out.println("전송 메세지 : " + msg);
            session.getBasicRemote().sendText(msg);
        }
        System.out.println("----------------------------");
    }
	
	
	@OnClose
    public void onClose(Session s)  {
    	System.out.println("세션 닫힘 : " + s);
        sessionSet.remove(s);

        String findkey = "";
        for(String key: sessionMap.keySet()){
            for(int j=0; j<sessionMap.get(key).size();j++){
                if(sessionMap.get(key).get(j).equals(s)){
                    findkey = key;
                }
            }
        }
        sessionMap.get(findkey).remove(s);

        //방인원 -1
        //ChatRoom chatRoom = chatRoomService.decreaseExist(findkey);

    }




}
