package com.mycompany.htmlcssjs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller // 어노테이션 순서는 상관없음
@Slf4j
@RequestMapping("/css") // 경로
public class CssController { // 컨트롤러 선택
	@RequestMapping("")
	public String index() {
		log.info("index(); 실행");
		return "css/index";
	}

	@RequestMapping("/exam01_where_css") // 경로
	public String exam01WhereCss() { // 메소드 실행
		log.info("exam01WhereCss(); 실행");
		return "css/exam01_where_css"; // 해당되는 jsp 실행
	}

	@RequestMapping("/exam02_selectors") // 경로
	public String exam02_selectors() { // 메소드 실행
		log.info("exam02_selectors(); 실행");
		return "css/exam02_selectors"; // 해당되는 jsp 실행
	}

	@RequestMapping("/exam03_margin_padding") // 경로
	public String exam03MarginPadding() { // 메소드 실행
		log.info("exam03MarginPadding(); 실행");
		return "css/exam03_margin_padding"; // 해당되는 jsp 실행
	}
	
	@RequestMapping("/exam04_border") // 경로
	public String exam04Border() { // 메소드 실행
		log.info("exam04Border(); 실행");
		return "css/exam04_border"; // 해당되는 jsp 실행
	}
	
	@RequestMapping("/exam05_link") // 경로
	public String exam05Link() { // 메소드 실행
		log.info("exam05Link(); 실행");
		return "css/exam05_link"; // 해당되는 jsp 실행
	}
	@RequestMapping("/exam06_list") // 경로
	public String exam06List() { // 메소드 실행
		log.info("exam06List(); 실행");
		return "css/exam06_list"; // 해당되는 jsp 실행
	}
	
	@RequestMapping("/exam07_table") // 경로
	public String exam07Table() { // 메소드 실행
		log.info("exam07Table(); 실행");
		return "css/exam07_table"; // 해당되는 jsp 실행
	}

	@RequestMapping("/exam08_display") // 경로
	public String exam08_Display() { // 메소드 실행
		log.info("exam08_Display(); 실행");
		return "css/exam08_display"; // 해당되는 jsp 실행
	}

	@RequestMapping("/exam09_float") // 경로
	public String exam09Float() { // 메소드 실행
		log.info("exam09Float(); 실행");
		return "css/exam09_float"; // 해당되는 jsp 실행
	}

	//http://llocalhost:8080/htmlcssjs/css/exam10_float_layout
	@RequestMapping("/exam10_float_layout") // 경로
	public String exam10FloatLayout() { // 메소드 실행
		log.info("exam10FloatLayout(); 실행");
		return "css/exam10_float_layout"; // 해당되는 jsp 실행
		//   앞에 WEB-INK/views/(생략)css/exam10_float_layout뒤에 .jsp(생략)
	}
	
	@RequestMapping("/exam11_flex") // 경로
	public String exam11Flex() { // 메소드 실행
		log.info("exam11Flex(); 실행");
		return "css/exam11_flex"; // 해당되는 jsp 실행
		//   앞에 WEB-INK/views/(생략)css/exam10_float_layout뒤에 .jsp(생략)
	}
	
	@RequestMapping("/exam12_flex_layout") // 경로
	public String exam12FlexLayout() { // 메소드 실행
		log.info("exam12FlexLayout(); 실행");
		return "css/exam12_flex_layout"; // 해당되는 jsp 실행
		//   앞에 WEB-INK/views/(생략)css/exam10_float_layout뒤에 .jsp(생략)
	}
}