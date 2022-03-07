package com.GoZip;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.GoZip.dto.BoardDTO;
import com.GoZip.dto.MemberDTO;
import com.GoZip.dto.MessageDTO;
import com.GoZip.service.BoardService;
import com.GoZip.service.MemberService;
import com.GoZip.service.MessageService;
import com.GoZip.vo.paggingVO;
import com.fasterxml.jackson.databind.introspect.TypeResolutionContext.Empty;

@Controller
public class MainController {
	private MemberService memberService;
	private BoardService boardService;
	private MessageService messageService;
	//----------------------------------------성일이형 구간-------------------------
	HttpServletRequest request;

	

	public MainController(MemberService memberService, BoardService boardService, MessageService messageService) {
		this.memberService = memberService;
		this.boardService = boardService;
		this.messageService = messageService;
	}

	@RequestMapping("/")
	public String main() {
		return "Main";
	}

	// 홈으로 이동
	@RequestMapping("redirect.do")
	public String redirect() {
		return "Main";
	}

	// 로그인으로 이동
	@RequestMapping("log.do")
	public String log() {
		return "login";
	}
	
	//비토인테리어로 이동
	@RequestMapping("bitointerior.do")
	public void bitointerior(HttpServletResponse httpServletResponse) throws IOException {
	    httpServletResponse.sendRedirect("https://blog.naver.com/ecowow");
	}
	
	//상상리퍼블릭으로 이동
	@RequestMapping("sangsang.do")
	public void sangsang(HttpServletResponse httpServletResponse) throws IOException {
		httpServletResponse.sendRedirect("https://sangsangrepublic.imweb.me");
	}
	
	//인테리어랩으로 이동
	@RequestMapping("interiorlab.do")
	public void interiorlab(HttpServletResponse httpServletResponse) throws IOException {
		httpServletResponse.sendRedirect("https://smartstore.naver.com/interiorlab"); 
	}
	
	// 로그인 기능
	@RequestMapping("/login.do")
	public String login(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws IOException {
		response.setContentType("text/html;charset=utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		MemberDTO dto = memberService.login(id, pw);
		if (dto == null) {
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().write("<script>alert('아이디 비밀번호 확인하세요');" + " history.back();</script>");
			return null;
		}
		session.setAttribute("member", dto);
		return "Main";
	}

	// 회원가입으로 이동
	@RequestMapping("signup.do")
	public String register() {
		return "signup";
	}

	// 회원가입 기능
	@RequestMapping("register.do")
	public String register(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		memberService.insertMember(new MemberDTO(id, pw, name, birth, email, phone));
		return "Main";
	}

	// 아이디 체크하는 기능
	@RequestMapping(value = "/user/idCheck", method = RequestMethod.GET)
	@ResponseBody
	public int idCheck(String id) {
		System.out.println(id);
		System.out.println(memberService.idCheck(id));
		return memberService.idCheck(id);
	}

	// 정보수정 기능
	@RequestMapping("updateMember.do")
	public String updateMember(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");

		memberService.updateMember(new MemberDTO(id, pw, name, birth, email, phone));
		return "Main";
	}
	
	// 외뢰하기로 이동
	@RequestMapping("ask.do")
	public String ask() {
		return "ask";
	}
	
	//게시판 초기화
	@RequestMapping("boardreset.do")
	public String boardreset() {
		return "redirect:/";
	}
	
	// 게시판으로 이동
	@RequestMapping("board.do")
	public String boardList(HttpServletRequest request) {
		int page = 1;

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		List<BoardDTO> list = boardService.selectBoardList(page);
		request.setAttribute("list", list);
		// 페이징 데이터 셋팅
		int count = boardService.selectAllCount();

		paggingVO vo = new paggingVO(count, page, 7, 4);
		request.setAttribute("pagging", vo);

		return "board_list";
	}

	// 정보수정 페이지로 이동
	@RequestMapping("profile.do")
	public String profile() {
		return "profile";
	}

	@RequestMapping("search.do")
	public String search(HttpServletRequest request) {
		String kind = request.getParameter("kind");
		String search = request.getParameter("search");
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("kind", kind);
		map.put("search", search);

		List<BoardDTO> list = boardService.selectSearchBoard(map);

		request.setAttribute("list", list);

		return "board_list";
	}

	@RequestMapping("writeView.do")
	public String writeView() {
		return "board_write";
	}

	@RequestMapping("write.do")
	public String write(HttpServletRequest request, HttpSession session) {
		String b_title = request.getParameter("title");
		String b_content = request.getParameter("content");
		String b_writer = ((MemberDTO) session.getAttribute("id")).getId();
		boardService.insertBoard(new BoardDTO(b_title, b_content, b_writer));
		return "redirect:board.do";
	}

	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	@RequestMapping("boardView.do")
	public String boardView(HttpServletRequest request, HttpSession session) {
		int b_no = Integer.parseInt(request.getParameter("b_no"));

		BoardDTO dto = boardService.selectBoard(b_no);
		request.setAttribute("dto", dto);

		// 게시글 중복 조회수 증가 제거
		HashSet<Integer> set = (HashSet<Integer>) session.getAttribute("pageSet");
		if (set == null) {
			set = new HashSet<Integer>();
			session.setAttribute("pageSet", set);
		}
		if (set.add(b_no)) {
			boardService.addCount(b_no);
		}

		return "board_view";
	}

	@RequestMapping("boardUpdateView.do")
	public String boardUpdateView(HttpServletRequest request) {
		int b_no = Integer.parseInt(request.getParameter("b_no"));

		BoardDTO dto = boardService.selectBoard(b_no);
		request.setAttribute("dto", dto);
		return "board_update_view";
	}

	@RequestMapping("update.do")
	public String update(HttpServletRequest request) {
		int b_no = Integer.parseInt(request.getParameter("b_no"));
		String b_title = request.getParameter("title");
		String b_content = request.getParameter("content");

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("b_no", b_no);
		map.put("title", b_title);
		map.put("content", b_content);

		boardService.updateBoard(map);

		return "redirect:boardView.do?b_no=" + b_no;
	}

	@RequestMapping("boardDelete.do")
	public String boardDelete(HttpServletRequest request) {
		int b_no = Integer.parseInt(request.getParameter("b_no"));
		boardService.deleteBoard(b_no);
		return "redirect:main.do";
	}

	@RequestMapping("boardLike.do")
	public String boardLike(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws IOException {
		int b_no = Integer.parseInt(request.getParameter("b_no"));
		String id = ((MemberDTO) session.getAttribute("member")).getId();

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("b_no", b_no);

		int count = 0;
		try {
			count = boardService.insertBoardLike(map);
		} catch (Exception e) {
			boardService.deleteBoardLike(map);
		}
		JSONObject obj = new JSONObject();
		obj.put("result", count);
		obj.put("count", boardService.selectBoardLike(b_no));

		response.getWriter().write(obj.toString());

		return null;
	}

	//------------------------------------성일이형 구간--------------------------------
	@RequestMapping("message_view.do")
	public String message_view() {
		return "message_view";
	}
	@RequestMapping("message.do")
	public String message() {
		return "message";
	}
	@RequestMapping("message_box.do")
	public String message_box() {
		return "message_box";
	}
	
	@RequestMapping("message_write.do")
	public String message_write(HttpServletRequest request,HttpServletResponse response,HttpSession session) {
		String id = ((MemberDTO) session.getAttribute("member")).getId();
		String rv_id = request.getParameter("rv_id");
		String m_content = request.getParameter("m_content");
		MessageDTO result = messageService.selectId(rv_id);
		if(result != null) {
			messageService.writeMessage(new MessageDTO(id, rv_id, m_content));
		}else {
			try {
				response.setContentType("text/html;charset=utf-8");
				response.getWriter().write("<script>alert('보내는 대상의 아이디가 존재하지 않습니다');" + " history.back();</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
			return null;
		}
		

		return "message_box";
	}
}
