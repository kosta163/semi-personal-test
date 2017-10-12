/*
 * 창작 글 목록
 * 	 * 창작게시글 목록 보기에 필요<br/>
	 * @param board_no
	 * @param nick
	 * @param board_regdate
	 * @param hit
	 * @param create_title
	 * @param create_content
	 * @param category
 */
SELECT b.board_no,b.board_regdate,b.hit, cb.create_title,m.nick
FROM board b,create_board cb,member m
WHERE b.board_no=cb.board_no and b.id=m.id  order by b.board_no desc

SELECT b.board_no,m.nick,b.board_regdate,b.hit, cb.create_title
FROM board b,create_board cb,member m 
WHERE b.board_no=cb.board_no and b.id=m.id  order by b.board_no desc;
-------------------------------------------------------------------------
/*
 * 창작 글 상세정보
 * 
 * 	public CreateBoardVO(int board_no, int boardtype_no, String nick, String board_regdate, int hit, int sympathy,
			int authority, int bg_no, String create_title, String create_content, int category) {
		super(board_no, boardtype_no, nick, board_regdate, hit, sympathy, authority, bg_no);
		this.create_title = create_title;
		this.create_content = create_content;
		this.category = category;
 */
SELECT b.board_no,b.boardtype_no,m.nick,b.board_regdate,b.hit,b.authority,b.bg_no,
	   cb.create_title,cb.create_content,cb.category 
FROM board b,create_board cb,member m
WHERE b.board_no=cb.board_no and  b.id=m.id and b.board_no=7;



-------------------------------------------------------------------------
/*
 * 창작 글 등록
 */
insert into board(board_no, boardtype_no, id, board_regdate, hit, authority, bg_no)
values(board_seq.nextval, 3, 'orangss@naver.com', sysdate, 0, 1, 0);
insert into create_board(board_no, create_title, create_content, category)
values(board_seq.currval, '창작의 시작', '창작의 시작', 4);


select * from CREATE_BOARD;
select * from BOARD;
select * from member;

/*
 * 창작 글 수정하기
*/

UPDATE BOARD
SET hit = 1, bg_no = 1
WHERE board_no='21';

update CREATE_BOARD
set	create_title='ㅋㅋ',create_content='zz',category='4'
where board_no='15';

