package com.f.s5.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.f.s5.ticket.TicketDTO;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@Autowired
	private MemberService memberService;

	@GetMapping("memberLogin")
	public ModelAndView getLogin() throws Exception {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("member/memberLogin");
		return mv;
	}

	@PostMapping("memberLogin")
	public ModelAndView getLogin(MemberDTO memberDTO, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();

		memberDTO = memberService.getLogin(memberDTO);

		String msg = "로그인에 실패했습니다.";
		String url = "redirect:./memberLogin";

		if (memberDTO != null) {
			msg = "로그인에 성공했습니다.";
			url = "redirect:../";

			session.setAttribute("member", memberDTO);
		}

		mv.addObject("msg", msg);
		mv.setViewName(url);
		return mv;
	}

	@GetMapping("memberLogout")
	public ModelAndView setLogout(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		session.invalidate();

		mv.addObject("msg", "로그아웃 되었습니다.");
		mv.setViewName("redirect:../");
		return mv;
	}

	@GetMapping("mypage")
	public ModelAndView getMyPage(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();

		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
		System.out.println(memberDTO.getId());
		List<TicketDTO> ar = memberService.getMyPage(memberDTO); 
		/* List<TicketDTO> ar = memberService.getTicket(memberDTO); */

		mv.addObject("list", ar);
		mv.setViewName("member/mypage");
		return mv;
	}
	
	@GetMapping("mybookingpage")
	public ModelAndView getMyBooking(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();

		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
		System.out.println(memberDTO.getId());
		List<TicketDTO> ar = memberService.getMyPage(memberDTO); 
		/* List<TicketDTO> ar = memberService.getTicket(memberDTO); */

		mv.addObject("list", ar);
		mv.setViewName("member/mybookingpage");
		return mv;
	}

	// 회원정보 수정
	@GetMapping("memberUpdate")
	public ModelAndView update() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/memberUpdate");
		return mv;
	}

	@PostMapping("memberUpdate")
	public ModelAndView setUpdate(HttpSession session, MemberDTO memberDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberDTO sessionDTO = (MemberDTO) session.getAttribute("member");

		memberDTO.setId(sessionDTO.getId());
		int result = memberService.setUpdate(memberDTO);

		session.setAttribute("member", memberDTO);

		String msg = "회원정보 수정에 실패했습니다.";
		String url = "redirect:./myPage";

		if (result > 0) {
			msg = "회원정보 수정에 성공했습니다.";
			url = "redirect:../";
		}

		mv.addObject("msg", msg);
		mv.setViewName(url);
		return mv;
	}

	// 예매 내역
	@GetMapping("ticketList")
	public ModelAndView getTicket(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();

		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
		System.out.println(memberDTO.getId());
		List<TicketDTO> ar = memberService.getTicket(memberDTO);

		mv.addObject("list", ar);
		mv.setViewName("member/ticketList");
		return mv;
	}

	@GetMapping("check")
	public ModelAndView check() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/check");
		return mv;
	}

	@GetMapping("memberJoin")
	public ModelAndView setJoin() throws Exception {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("member/memberJoin");
		return mv;
	}

	@PostMapping("memberJoin")
	public ModelAndView setJoin(MemberDTO memberDTO) throws Exception {
		ModelAndView mv = new ModelAndView();

		int result = memberService.setJoin(memberDTO);
		String msg = "회원가입에 실패했습니다.";

		if (result > 0) {
			msg = "회원가입에 성공했습니다.";
		}

		mv.addObject("msg", msg);
		mv.setViewName("redirect:../");

		return mv;
	}

	// ID 중복 체크
	@GetMapping("idCheck")
	public ModelAndView getIdCheck(MemberDTO memberDTO) throws Exception {
		ModelAndView mv = new ModelAndView();

		memberDTO = memberService.getIdCheck(memberDTO);
		System.out.println(memberDTO);

		int result = 0;

		if (memberDTO == null) {
			result = 1;
		}
		System.out.println(result);
		mv.addObject("result", result);
		mv.setViewName("common/idCheckAjax");
		return mv;
	}

	@GetMapping("memberDelete")
	public ModelAndView setDelete(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();

		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
		int result = memberService.setDelete(memberDTO);

		String msg = "회원탈퇴에 실패했습니다.";
		String url = "redirect:./mypage";

		if (result > 0) {
			session.invalidate();
			msg = "회원탈퇴에 성공했습니다.";
			url = "redirect:../";
		}

		mv.addObject("msg", msg);
		mv.setViewName(url);
		return mv;
	}

}
