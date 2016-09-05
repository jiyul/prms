package prms.service;

import java.util.List;

import prms.vo.ProjectVO;

public interface TestService {
	String addStringTest(String str) throws Exception;
	ProjectVO selectProject(ProjectVO projectVo) throws Exception;
}
