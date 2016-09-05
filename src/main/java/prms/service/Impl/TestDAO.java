package prms.service.Impl;


import java.util.List;

import org.springframework.stereotype.Repository;

import prms.vo.ProjectVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("testDAO")
public class TestDAO extends EgovAbstractDAO{

	public ProjectVO selectProject(ProjectVO projectVo) throws Exception{
		System.out.println("[TestDAO]testDAO.java - selectProject()");
		//testSQL.xml => 정의된 id
		/*ProjectVO pVo = select("projectDetail");*/
		return (ProjectVO) select("projectDetail", projectVo);
	}

/*	public List<?> selectAll() {
		
		return list("projectDetail");
	}*/
}
