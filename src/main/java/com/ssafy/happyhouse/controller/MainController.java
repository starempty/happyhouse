package com.ssafy.happyhouse.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ssafy.happyhouse.dto.House;
import com.ssafy.happyhouse.dto.Notice;
import com.ssafy.happyhouse.dto.SearchCondition;
import com.ssafy.happyhouse.dto.User;
import com.ssafy.happyhouse.model.service.EmailUtil;
import com.ssafy.happyhouse.model.service.FavoriteAreaService;
import com.ssafy.happyhouse.model.service.NoticeService;
import com.ssafy.happyhouse.model.service.UserService;

@Controller
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;	
	
	@Autowired
	private UserService userService;
	@Autowired
	private NoticeService noticeService;
	@Autowired
	private FavoriteAreaService favoriteAreaService;
	@Autowired
	private EmailUtil emailUtil;
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}

	@GetMapping("/nation")
	public String nation(String code) {
		if(code == "kr") {
			return "index";
		}
		return "redirect:/"+code+"/";
	}
	
	@RequestMapping("/board")
	public String board() {
		return "board/board";
	}
	@GetMapping("/delFavorite")
	public String delFavorite(@RequestParam("no") int no, HttpSession session) {
		String id = ((User) session.getAttribute("loginuser")).getId();
		try {
			favoriteAreaService.delFavorite(id, no);
			return "favArea";
		} catch(Exception e) {
			e.printStackTrace();
			return "error/500";
		}
	}
	@GetMapping("/addFavorite")
	public String addFavorite(int house_no, String user_id, HttpSession session, Model m) {
//		String id = ((User) session.getAttribute("loginuser")).getId();
		int isdup = 0;
		try {
			isdup = favoriteAreaService.favoriteDupcheck(user_id, house_no);
		}catch(Exception e) {
			e.printStackTrace();
			m.addAttribute("msg", "이미 추가한 지역입니다...");
			return "redirect:searchApt";
		}
		System.out.println(isdup);
		if(isdup == 0 ) {
			try {
				favoriteAreaService.addFavorite(user_id, house_no);
			}catch(Exception e) {
				e.printStackTrace();
				return "error/500";
			}
		}
		m.addAttribute("house_no", house_no);
		return "redirect:getFavorite?user_id="+user_id+"&house_no="+house_no;
	}
	@GetMapping("/getFavorite")
	public String getFavorite(HttpSession session, Model m, String user_id) {
//		User cur = (User) session.getAttribute("loginuser");
//		String user_id = cur.getId();
		System.out.println("user_id: "+user_id);
		try {
			List<House> favorites = favoriteAreaService.selectUser(user_id);
			System.out.println(favorites);
			m.addAttribute("favorites", favorites);
			
			
			StringBuilder sb = new StringBuilder();
			sb.append("[");
			double lat = 0;
			double lng = 0;
			for(int i = 0; i < favorites.size(); i++) {
				House cd = favorites.get(i);
				lat += Double.parseDouble(cd.getLat());
				lng += Double.parseDouble(cd.getLng());
				sb.append("{\"title\":\'"+cd.getAptName()+"\',\"latlng\": new kakao.maps.LatLng("+cd.getLat()+", "+cd.getLng()+")}");
				if(i < favorites.size()-1) sb.append(",");
			}
			sb.append("]");
			
			lat /= favorites.size();
			lng /= favorites.size();
			
			m.addAttribute("positions", sb);
			m.addAttribute("lat", lat);
			m.addAttribute("lng", lng);
			return "favArea";
		} catch(Exception e) {
			e.printStackTrace();
			return "error/500";
		}
	}
	
	@GetMapping("/noticeDetail")
	public String noticeDetail(@RequestParam("articleNo") int articleNo, Model m) {
		try {
			Notice notice = noticeService.getArticle(articleNo);
			noticeService.updateViewCnt(articleNo);
//			noticeService.addNumber(notice.getArticleNo());
			m.addAttribute("notice", notice);
			return "noticeDetail";
		} catch(Exception e) {
			return "error/500";
		}
	}
	
	@GetMapping("/noticeDelete")
	public String noticeDelete(@RequestParam int articleNo) {
		try {
			noticeService.deleteArtice(articleNo);
			return "redirect:/list";
		}catch(Exception e) {
			e.printStackTrace();
			return "error/500";
		}
	}
	
	@PostMapping("/noticeRegist")
	public String noticeRegist(Notice notice) {
		try {
			System.out.println(notice.toString());
			noticeService.registerArticle(notice);
			return "redirect:/list";
		}catch(Exception e) {
			e.printStackTrace();
			return "error/500";
		}
	}
	
	@GetMapping("/noticeWrite")
	public String noticeWrite() {
		return "noticeWrite";
	}
	
	@GetMapping("/noticeModify")
	public String noticeModify(@RequestParam int articleNo, Model m) throws Exception {
		Notice notice = noticeService.getArticle(articleNo);
		m.addAttribute("notice", notice);
		return "noticeEdit";
	}
	
	@PostMapping("/noticeModify")
	public String noticeModify(Notice notice) {
		try {
			String contents=  notice.getContent();
			System.out.println(contents);
			contents.replaceAll("\n", "<br>");
			System.out.println(contents);
			notice.setContent(contents);
			noticeService.modifyArticle(notice);
//			return "redirect:/noticeDetail?articleNo="+notice.getArticleNo();
			return "redirect:/list";
		}catch(Exception e) {
			e.printStackTrace();
			return "error/500";
		}
	}
	
	@GetMapping("/list")
	public String noticeList(SearchCondition condition, Model m) throws SQLException {
		
		Map<String, Object> map = noticeService.pagingSearch(condition);
		m.addAttribute("notices", map.get("notices"));
		m.addAttribute("noticeRank", noticeService.listArticleRanking());
		m.addAttribute("navigation", map.get("navigation"));
		
		return "noticeList";
	}
	@PostMapping("/deleteUser")
	public String deleteUser(@RequestParam("pass") String pass, HttpSession session, Model m) {
		User cur = (User) session.getAttribute("user");
		String id = cur.getId();
		if(cur.getPass().equals(pass)) {
			try {
				userService.deleteUser(id);
				m.addAttribute("msg", "회원정보가 삭제되었습니다.");
				session.invalidate();
				return "index";
			} catch (Exception e) {
				e.printStackTrace();
				m.addAttribute("msg", "회원정보 삭제 중 문제가 발생했습니다.");
				return "error/500";
			}
		} else {
			m.addAttribute("msg", "올바르지 않은 비밀번호입니다.");
			return "userInfo";
		}
	}
	@GetMapping("/userinfo")
	public String userinfo(String id, HttpSession session, Model m) throws Exception {
		User cur = userService.getUser(id);
		m.addAttribute("user", cur);
		return "userInfo";
	}
	@GetMapping("/modify")
	public String modify() {
		return "userUpdate";
	}
	@PostMapping("/modify")
	public String modify(@ModelAttribute User user, HttpSession session) {
		try {
			System.out.println(user.toString());
			userService.modifyUser(user);
			session.setAttribute("loginuser", user);
			return "userInfo";
			
		} catch(Exception e) {
			e.printStackTrace();
			return "error/500";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	@GetMapping("/goLogin")
	public String goLogin() {
		return "login";
	}
	@PostMapping("/login")
	public String login(User user, HttpSession session, Model m) throws Exception {
		User selected = userService.getUser(user.getId());
		if(selected != null && selected.getPass().equals(user.getPass())) {
			session.setAttribute("loginuser", selected);
			return "redirect:/";
		}else {
			m.addAttribute("msg", "로그인 실패");
			return "index";
		}
	}
	@GetMapping("/signUp")
	public String signUp() {
		return "signUp";
	}
	@PostMapping("/signUp")
	public String signUp(User user, Model m) {
		User check = null;
		try {
			Map<String, String> map = new HashMap<String, String>();
			map.put("userid", user.getId());
			map.put("userpass", user.getPass());
			check = userService.getUser(user.getId());
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		if(check == null) {
			try {
				userService.registerUser(user);
				return "redirect:/";
				
			} catch(Exception e) {
				e.printStackTrace();
				m.addAttribute("msg", "회원가입 중 문제가 발생했습니다.");
				return "error/500";
			}
		} else {
			m.addAttribute("msg", "이미 가입한 회원입니다.");
			return "signUp";
		}
	}
	@GetMapping("/findPass")
	public String findPass() {
		return "findUser";
	}
	@PostMapping("/findPass")
	public String findPass(String checkId, String checkName, Model m) throws Exception {
		User user = userService.findUserUpdate(checkId, checkName);
		m.addAttribute("findUser", user);
		return "findUser";
	}
	@PostMapping("/setPass")
	public String setPass(String id, String pass, String passConfirm, Model m) throws Exception {
		if(pass.equals(passConfirm)) {
			userService.findPassUpdate(id, passConfirm);
		} else {
			m.addAttribute("msg", "비밀번호를 확인해주세요");
			return "findUser";
		}
		m.addAttribute("msg", "비밀번호가 변경되었습니다. 로그인해주세요");
		return "login";
	}
	
	@GetMapping("/sendMail")
	public String sendMail(String name, String email, Model m) {
		String msg = "이메일  전송을 완료했습니다. 확인하는 즉시 답변드리겠습니다 :) 로그인하시면 더 많은 서비스를 이용하실 수 있습니다.";
		m.addAttribute("msg", msg);
		System.out.println(email);
		String sendedMsg = "고객님 반갑습니다. HAOUSE의 정기구독 신청이 완료되었습니다 😊";
		emailUtil.sendEmail(email, "HAOUSE의 정기구독 신청이 완료되었습니다 😊", sendedMsg);
		return "index";
	}
	
}
