package com.f.s5.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
		
		String msg="로그인에 실패했습니다."; 
		String url="./memberLogin";
		  
		if(memberDTO != null) { 
			msg="로그인에 성공했습니다."; 
			url="redirect: ../";
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
	
	@GetMapping("myPage")
	public ModelAndView getMyPage(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		MemberDTO memberDTO =  (MemberDTO) session.getAttribute("member");
		
		return mv;
	}
	
	//회원정보 수정
	@GetMapping("memberUpdate")
	public ModelAndView setUpdate(HttpSession session, MemberDTO memberDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberDTO sessionDTO = (MemberDTO) session.getAttribute("member");
		memberDTO.setId(sessionDTO.getId());
		memberDTO.setName(sessionDTO.getName());
		
		int result = memberService.setUpdate(memberDTO);
		
		String msg="회원정보 수정에 실패했습니다.";
		String url="./myPage";
		
		if(result>0) {
			msg="회원정보 수정에 성공했습니다.";
			url="../";
		}
		
		mv.addObject("msg", msg);
		mv.setViewName(url);
		return mv;
	}
	
	//예매 내역
	
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
		System.out.println(memberDTO.getId());
		String msg = "회원가입에 실패했습니다.";
		
		if(result>0) {
			msg="회원가입에 성공했습니다.";
		}
		
		mv.addObject("msg", msg);
		mv.addObject("url", "../");
		mv.setViewName("common/result");
		
		return mv;
	}
	
	//ID 중복 체크
	
	@GetMapping("memberDelete")
	public ModelAndView setDelete(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
		int result = memberService.setDelete(memberDTO);
		
		String msg = "회원탈퇴에 실패했습니다.";
		String url = "./myPage";
		
		if(result>0) {
			session.invalidate();
			msg = "회원탈퇴에 성공했습니다.";
			url = "../";
		}
		
		mv.addObject("msg", msg);
		mv.setViewName(url);
		return mv;
	}
	

}
