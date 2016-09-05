<%--
  Class Name : Sample.jsp 
  Description : 샘플화면 - 관리용화면샘플(sample)
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성
 
    author   : 실행환경개발팀 JJY
    since    : 2011.08.31 
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Language" content="ko" >
<title>표준프레임워크 경량환경 내부업무템플릿</title>
<link href="css/common.css" rel="stylesheet" type="text/css" >
<script type="text/javaScript" language="javascript" defer="defer">
/*  */
</script>
</head>
<body>
<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>	
<!-- 전체 레이어 시작 -->
<div id="wrap">	
	<!-- header -->
	<!-- container 시작 -->
	<div id="container">
		<!-- 좌측메뉴 시작 -->
		<div id="leftmenu"></div>
		<!-- //좌측메뉴 끝 -->
			<div id="content">
				<div id="page_title"><h2><strong>프로젝트 정보</strong></h2></div>
				<form name="projectManageVO" id="projectManageVO" action="" method="post">
                <!--제출 버튼 왜 있냐 <input type="submit" id="invisible" class="invisible"/> -->
                        <div id="project_field">
                               <fieldset>
                                <div class="sf_start">
                                    <ul id="search_first_ul">
                                        <li style="font-size: 14px;color:#1E90FF;"><strong>프로젝트 명</strong></li>
                                        <li>${projectDetail.projName }</li>
                                        <li>${projectDetail.projState }</li>
                                    </ul>
                                </div>          
                                </fieldset>
                        </div>
                        <div id="page_info"></div>                    
                        <!-- table add start -->
                        <div class="project_tablestyle">
                        <!-- H/W 예산 품목 테이블 -->
                        <table cellpadding="0" cellspacing="0" style="margin-bottom: 20px">
                            <thead>
                            <tr>
                                <th scope="col" class="align_left_text">
                                	<label style="display: inline-block; padding-top:10px; font-size: 18px;">H/W</label>
                                	<div class="buttons" style="clear:both;float:right;"><a href="" onclick="">예산등록</a></div>
                                </th>
                            </tr>
                            </thead>
                            <tbody>                 
         
                            <!-- loop 시작 -->                                
							<%
							for(int i=0; i < 3; i++){							    
							%>
							  <tr>
							    <td class="align_left_text">
							            품목<%=i%>
							    </td>
							  </tr>
							  <%
							  } 
							  %>
							  </tbody>
                        </TABLE>
                	</div>
<!--                </DIV> -->
            </form>

            <!-- H/W 예산 테이블 -->
                <div class="project_budget_tablestyle">
                    <table cellpadding="0" cellspacing="0" style="margin-bottom: 20px">
                    <caption>H/W예산</caption>
                    <colgroup>
                        <col width="40%">  
                        <col width="40%">
                        <col width="15%">
                        <col width="5%">
                    </colgroup>
                    <thead>
                    <tr>
                        <th nowrap="nowrap" >H/W 예산</th>
                        <th nowrap="nowrap">금액</th>
                        <th nowrap="nowrap">상세보기</th>
                        <th nowrap="nowrap"><input type="checkbox" name="checkAll" title="선택여부" class="check2" onclick="javascript:fncCheckAll()"></th>
                    </tr>
                    </thead>                 
					<tbody>		  			
					<!-- loop 시작 -->					
					<tr>
						<td><strong>예산01 (등록일 : 2016-08-18)</strong></td>
						<td>1234555원</td>
						<td><div class="buttons" style="clear:both;padding-top:2px;padding-bottom:2px;font-size:11px; display: inline-block"><a href="javascript:fn_main_headPageMove('31','main/sample_menu/EgovDownload')">상세보기</a></div></td>
						<td nowrap="nowrap"><input type="checkbox" name="delYn" class="check2" title="선택"><input type="hidden" name="checkId" value="<c:out value="${author.authorCode}"/>" /></td>
					</tr>											
                    <%-- <c:forEach var="author" items="${authorList}" varStatus="status">
                    <!-- loop 시작 -->                                
                      <tr>
					    <td nowrap="nowrap"><c:out value="${author.authorNm}"/></td>
					    <td nowrap="nowrap"><c:out value="${author.authorCreatDe}"/></td>
					    <td nowrap="nowrap"><a href="#LINK" onclick="javascript:fncSelectAuthorRole('<c:out value="${author.authorCode}"/>')"><img src="<c:url value='/images/img_search.gif'/>" width="15" height="15" align="middle" alt="롤 정보"></a></td>
					    <td nowrap="nowrap"><input type="checkbox" name="delYn" class="check2" title="선택"><input type="hidden" name="checkId" value="<c:out value="${author.authorCode}"/>" /></td>
                      </tr>
                     </c:forEach>     --%> 
                    </tbody>
                    </table>
                </div>

				<!-- 페이지 네비게이션 시작 -->
				<div id="paging_div">
					<ul class="paging_align">
						<li class="first"><img src="<c:url value='/'/>images/btn/btn_prev.gif" alt="prev" /></li>
						<li><a href="#">1</a></li>
						<li>2</li>
						<li>3</li>
						<li>4</li>
						<li>5</li>
						<li class="first"><img src="<c:url value='/'/>images/btn/btn_next.gif" alt="next" /></li>
					</ul>
				</div>
				<div class="project_inline">
					<label for="totalPrice"><h2>예산총액</h2></label>
					<input id="totalPrice" name="totalPrice" type="text" value="" size="25" title="총액" onkeypress="press();"/> 
				</div>						
		</div>
		<!-- //content 끝 -->				
	</div>	
	<!-- //container 끝 -->
	<!-- footer 시작 -->
	<div id="footer"><c:import url="/EgovPageLink.do?link=main/inc/EgovIncFooter" /></div>
	<!-- //footer 끝 -->
</div>
<!-- //전체 레이어 끝 -->
</body>
</html>