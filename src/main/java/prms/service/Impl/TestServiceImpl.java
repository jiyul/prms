package prms.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import prms.service.TestService;
import prms.vo.ProjectVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("testService")
public class TestServiceImpl extends EgovAbstractServiceImpl implements TestService {
	@Resource(name="testDAO")
	private TestDAO testDao;
	
	@Override
	public String addStringTest(String str) throws Exception {
		System.out.println("[testServiceImple] testServiceImpl.java - addStringTest()");
		
		return str + " -> testImpl ";
	}

	@Override
	public ProjectVO selectProject(ProjectVO projectVo) throws Exception {
		System.out.println("[TestServiceImple] selectProject()");
		ProjectVO pVo = testDao.selectProject(projectVo);
		System.out.println(pVo.getProjName());
		return testDao.selectProject(projectVo);
	}
	
/*   @Override
   public List<?> selectAll() throws Exception {
      System.out.println("[TestServiceImple] selectAll()");
      return testDao.selectAll();
   }*/
	
}
