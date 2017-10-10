/*
 * 창작 글 목록
 */
SELECT b.board_no,b.boardtype_no,b.id,b.board_regdate,b.hit,
	   b.authority,b.bg_no,cb.create_title,cb.create_content,cb.category 
FROM board b,create_board cb
WHERE b.board_no=cb.board_no order by b.board_no desc

/*
 * 창작 글 등록
 */
insert into board(board_no, boardtype_no, id, board_regdate, hit, authority, bg_no)
values(board_seq.nextval, 3, 'orangss@naver.com', sysdate, 0, 1, 0);
insert into create_board(board_no, create_title, create_content, category)
values(board_seq.currval, '창작의 고통', 'ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ', 4);

/*
 * 창작 글 상세정보
 */
SELECT b.board_no,b.boardtype_no,b.id,b.board_regdate,b.hit,b.authority,
		b.bg_no,cb.create_title,cb.create_content,cb.category 
FROM board b,create_board cb
WHERE b.board_no=cb.board_no and b.board_no=7;

select * from CREATE_BOARD;
select * from BOARD;