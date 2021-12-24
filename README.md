# web-project-2030
학원에서 진행한 웹 프로젝트(팀) - 2030 청년 정책 커뮤니티

<img src="https://img.shields.io/badge/Java-007396?style=flat&logo=JAVA&logoColor=white"/> <img src="https://img.shields.io/badge/Oracle-F80000?style=flat&logo=ORACLE&logoColor=white"/> <img src="https://img.shields.io/badge/HTML5-E34F26?style=flat&logo=HTML5&logoColor=white"/> <img src="https://img.shields.io/badge/CSS3-1572B6?style=flat&logo=CSS3&logoColor=white"/> <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=flat&logo=JavaScript&logoColor=white"/> <img src="https://img.shields.io/badge/Spring-6DB33F?style=flat&logo=SPRING&logoColor=white"/> <img src="https://img.shields.io/badge/Apache Tomcat-F8DC75?style=flat&logo=Apache Tomcat&logoColor=white"/> <img src="https://img.shields.io/badge/Bootstrap-7952B3?style=flat&logo=Bootstrap&logoColor=white"/>

### 프로젝트 구성
* 팀원: 3명<br>
* 파트: 메인 및 로그인, 정책 소개, 커뮤니티<br>
* 주제: 시행되고 있는 청년 정책 정보를 모아 볼 수 있으며, 커뮤니티를 통해 후기와 정보를 공유할 수 있다.<br><br><br>

### 커뮤니티 부분 구현

* src/main/java/com/ppg/commu/domain/CmuBoardVO.java<br>
　　　　　　　　　　　　　　　　　　/CmuBoardCriteria.java<br>
　　　　　　　　　　　　　　　　　　/CmuPageDTO.java<br>
　　　　　　　　　　　　　　　　　　/CmuCommentVO.java<br><br>

* src/main/java/com/ppg/controller/CmuBoardController.java<br><br>

* src/main/java/com/ppg/commu/service/CmuBoardService.java<br>
　　　　　　　　　　　　　　　　　　/CmuBoardServiceImpl.java<br><br>

* src/main/java/com/ppg/commu/mapper/CmuBoardMapper.java<br><br>

* src/main/resources/mapper/commu/CmuBoardMapper.xml<br><br>

* src/main/webapp/resources/css/community/community_board.css<br>
　　　　　　　　　　　　　　　　　　/community_post_view.css<br>
　　　　　　　　　　　　　　　　　　/community_write_post.css<br><br>

* src/main/webapp/WEB-INF/views/community/board_review/board_review.jsp<br>

* src/main/webapp/WEB-INF/views/community/board_review/board_write_post.jsp<br>

* src/main/webapp/WEB-INF/views/community/board_review/board_post_view.jsp<br>

* src/main/webapp/WEB-INF/views/community/board_review/board_mod_post.jsp<br>
