package prms.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import prms.service.TestService;
import prms.vo.ProjectVO;

@Controller
public class TestController {

	@Resource(name="testService")
	private TestService testService;
	
	@RequestMapping(value="/projectDetail.do")
	public String mainTest(@ModelAttribute("projectVo") ProjectVO projectVo, ModelMap model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("[Controller] testController.java - mainTest()");
		
		
/*		String str = testService.addStringTest("START! ");
		model.addAttribute("resultStr", str);
		*/
/*		List<?> list = testService.selectAll();   
        model.addAttribute("resultList", list);
	    for(int i=0; i<list.size();i++){
	    	System.out.println(i+" "+list.get(i));
	    }*/
		ProjectVO pVo = testService.selectProject(projectVo);
		model.addAttribute("projectDetail", pVo);
		
	    return "test/project";
	}
}