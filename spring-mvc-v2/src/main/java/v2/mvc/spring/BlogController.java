package v2.mvc.spring;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import v2.mvc.spring.service.BlogService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BlogController {
	
	private static final Logger logger = LoggerFactory.getLogger(BlogController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	@Autowired
	BlogService blogService;//호출할수 있는 서비스가 준비되엇으니 콘트롤러에 서비스 주입
	//필드주입을 이용해 서비스 인터페이스를 주입합니다
	
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String getCreate() {
		return "blog/create";
	}
	
	//컨트롤러 컨텐츠 저장메서드 작성 
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public String postCreate(@RequestParam Map<String, Object> map) {
		int blogContSeq = this.blogService.create(map);
		return "redirect:/read/" + String.valueOf(blogContSeq);
		//정삭적인 로직으로 글이 작성되엇다면 /read/1, read/-1
	}
	
	//조회 메소드 작성
	@RequestMapping(value="/read/{blogContSeq}", method=RequestMethod.GET)// => /read/1
	public String getRead(@PathVariable("blogContSeq") int blogContSeq, Model model) {
		Map<String, Object> blogCont = this.blogService.read(blogContSeq);
		model.addAttribute("blogCont", blogCont);
		
		return "blog/read";
	}
	
	
	//수정메소드 작성 스프링부트에서 GetMapping, PostMapping
	@RequestMapping(value="/edit/{blogContSeq}", method=RequestMethod.GET)
	public ModelAndView getEdit(@PathVariable("blogContSeq") int blogContseq) {
		ModelAndView mav = new ModelAndView("/blog/edit");
		Map<String, Object> blogCont = this.blogService.read(blogContseq);
		
		if(blogCont == null) {
			mav.setViewName("redirect:/list");
			return mav;
		}
		
		mav.addObject("blogCont", blogCont);
		return mav;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
