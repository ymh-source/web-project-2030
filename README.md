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
<p align="center"><img src="https://user-images.githubusercontent.com/86193563/147346232-aca744d1-2014-42f2-b321-7728b8ce80d8.png" width="50%"/></p>
　　　　　　　　　　　　　　　* 게시글 20개씩 1페이지에 출력<br>
　　　　　　　　　　　　　　　* 게시글 번호, 제목, 작성자, 작성일, 조회수, 추천수, 비추천수 출력<br>
　　　　　　　　　　　　　　　* 10페이지씩 페이징<br>
　　　　　　　　　　　　　　　* 글쓰기 버튼 -> 글작성 창으로 이동<br>
　　　　　　　　　　　　　　　* 제목/내용/제목+내용 중 선택하여 검색 -> 검색어가 포함된 게시글 리스트 출력
<br><br><br>

* src/main/webapp/WEB-INF/views/community/board_review/board_write_post.jsp<br>
<p align="center"><img src="https://user-images.githubusercontent.com/86193563/147346981-53c44593-5766-4a8b-9dac-3dc19acc7ec9.png" width="50%"/></p>
　　　　　　　　　　　　　　　* 제목, 내용 필수 입력<br>
　　　　　　　　　　　　　　　* 확인 버튼 -> 글이 등록되며 게시글 리스트로 돌아감<br>
　　　　　　　　　　　　　　　* 취소 버튼 -> 게시글 리스트로 돌아감
<br><br><br>

* src/main/webapp/WEB-INF/views/community/board_review/board_post_view.jsp<br>
<p align="center"><img src="https://user-images.githubusercontent.com/86193563/147349512-7b3c4de3-ecb9-4ea9-ad82-7f5078d87f55.png" width="50%"/></p>
　　　　　　　　　　　　　　　* 게시글 리스트에서 제목을 클릭하면 해당 글을 보여줌<br>
　　　　　　　　　　　　　　　* 제목, 내용, 작성자, 작성일, 조회수, 추천수, 비추천수 출력<br>
　　　　　　　　　　　　　　　* 하단의 수정, 삭제 버튼은 작성자 또는 관리자 로그인일 때만 보여짐<br>
　　　　　　　　　　　　　　　* 수정 버튼 -> 글수정 창으로 이동<br>
　　　　　　　　　　　　　　　* 삭제 버튼 -> 글이 삭제되며 게시글 리스트로 돌아감<br>
　　　　　　　　　　　　　　　* 댓글 수와 댓글 리스트 출력<br>
　　　　　　　　　　　　　　　* 댓글 작성자, 작성일, 내용 출력<br>
　　　　　　　　　　　　　　　* 댓글 작성 후, 등록 버튼 -> 댓글 추가됨
<br><br><br>

* src/main/webapp/WEB-INF/views/community/board_review/board_mod_post.jsp<br>
<p align="center"><img src="https://user-images.githubusercontent.com/86193563/147349690-5fecff26-b761-4c83-ab7e-1a27982d166e.png" width="50%"/></p>
　　　　　　　　　　　　　　　* 작성되있는 제목과 내용을 불러옴<br>
　　　　　　　　　　　　　　　* 확인 버튼 -> 글이 수정되며 게시글 리스트로 돌아감<br>
　　　　　　　　　　　　　　　* 취소 버튼 -> 게시글로 되돌아감<br>
<br><br><br>

### 추가해야 할 것
- 글쓰기 텍스트 에디터, 파일 첨부 기능
- 댓글 삭제 기능
- 글 추천/비추천 기능
- 게시판 리스트에서 제목 옆에 댓글 수 출력
- 자유 게시판(후기 게시판과 동일하게 진행)
- 인기 게시판(후기 게시판, 자유 게시판 통틀어서 조회수 TOP20 게시글 출력, 제목 앞에 카테고리 출력)
<br>
