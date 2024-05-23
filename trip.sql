select * from attraction_description;
select * from attraction_detail;
select * from attraction_info;
select * from brewery;
select * from festival;
select * from gugun;
select * from sido;
select * from user;
select * from notice;
select * from userboard;
select * from review;
select * from comment;
select * from wishlist;
select * from userboard_like;
select * from review_like;

INSERT INTO `review` (`content_id`, `user_id`, `rate`, `content`, `good`, `bad`, `write_date`) VALUES
(750982, 'user1', 5, '이 만두집 정말 최고에요! 만두피가 쫄깃하고 속이 꽉 찼어요.', 10, 0, '2024-05-20 10:15:00'),
(750982, 'user2', 4, '여기 만두는 정말 맛있네요. 다시 오고 싶어요.', 8, 1, '2024-05-21 08:30:00'),
(750982, 'user3', 3, '만두 맛있지만, 서비스가 조금 아쉬웠어요.', 5, 2, '2024-05-22 09:45:00'),
(750982, 'user4', 5, '최고의 만두집! 가족 모두가 만족했어요.', 15, 0, '2024-05-23 11:00:00'),
(750982, 'user5', 4, '맛있고 가격도 적당해요. 자주 올 것 같아요.', 7, 1, '2024-05-24 07:20:00');

INSERT INTO `comment` (`post_id`, `user_id`, `comment_text`, `write_date`) VALUES
(1, 'user1', '이 글 정말 유익하네요. 감사합니다!', '2024-05-23 10:15:00'),
(2, 'user2', '좋은 정보 감사합니다. 잘 보고 갑니다.', '2024-05-22 08:30:00'),
(3, 'user3', '흥미로운 내용이네요. 다음 글도 기대할게요.', '2024-05-21 09:45:00'),
(4, 'user4', '유용한 정보 감사합니다. 많은 도움이 되었습니다.', '2024-05-20 11:00:00'),
(5, 'user5', '글 잘 봤습니다. 유익한 내용이네요.', '2024-05-19 07:20:00'),
(6, 'user6', '정말 좋은 글입니다. 감사합니다!', '2024-05-18 12:00:00'),
(7, 'user7', '유익한 정보 공유해주셔서 고맙습니다.', '2024-05-17 09:00:00'),
(8, 'user8', '매우 흥미로운 내용이네요!', '2024-05-16 14:30:00'),
(9, 'user9', '도움이 많이 되었습니다. 감사해요.', '2024-05-15 08:45:00'),
(10, 'user10', '이 글 덕분에 많은 것을 배웠습니다.', '2024-05-14 10:20:00'),
(11, 'user1', '정말 유익한 글이네요. 감사합니다.', '2024-05-13 11:15:00'),
(12, 'user2', '좋은 정보 감사합니다.', '2024-05-12 07:30:00'),
(13, 'user3', '다음 글도 기대할게요.', '2024-05-11 09:45:00'),
(14, 'user4', '많은 도움이 되었습니다.', '2024-05-10 11:00:00'),
(15, 'user5', '유익한 내용이네요.', '2024-05-09 07:20:00'),
(16, 'user6', '좋은 글 감사합니다.', '2024-05-08 12:00:00'),
(17, 'user7', '정보 공유 감사합니다.', '2024-05-07 09:00:00'),
(18, 'user8', '흥미로운 글입니다!', '2024-05-06 14:30:00'),
(19, 'user9', '많이 배웠습니다. 감사합니다.', '2024-05-05 08:45:00'),
(20, 'user10', '감사합니다.', '2024-05-04 10:20:00'),
(21, 'user1', '좋은 글입니다. 고맙습니다.', '2024-05-03 11:15:00'),
(22, 'user2', '잘 보고 갑니다.', '2024-05-02 07:30:00'),
(23, 'user3', '다음 글도 기대할게요.', '2024-05-01 09:45:00'),
(24, 'user4', '유익한 정보 고맙습니다.', '2024-04-30 11:00:00'),
(25, 'user5', '많은 도움이 되었습니다.', '2024-04-29 07:20:00'),
(26, 'user6', '정말 유익합니다.', '2024-04-28 12:00:00'),
(27, 'user7', '정보 공유 고맙습니다.', '2024-04-27 09:00:00'),
(28, 'user8', '흥미롭네요!', '2024-04-26 14:30:00'),
(29, 'user9', '많이 배웠습니다.', '2024-04-25 08:45:00'),
(30, 'user10', '감사합니다.', '2024-04-24 10:20:00'),
(31, 'user1', '좋은 글이네요. 고맙습니다.', '2024-04-23 11:15:00'),
(32, 'user2', '잘 보고 갑니다.', '2024-04-22 07:30:00'),
(33, 'user3', '다음 글도 기대할게요.', '2024-04-21 09:45:00'),
(34, 'user4', '유익한 정보 감사합니다.', '2024-04-20 11:00:00'),
(35, 'user5', '많은 도움이 되었습니다.', '2024-04-19 07:20:00');

INSERT INTO `userboard` (`post_type`, `title`, `content`, `write_date`, `user_id`, `read_count`, `good`, `bad`) VALUES
(1, '봄 여행지 추천', '따뜻한 봄날에 가기 좋은 여행지를 소개합니다.', '2024-05-23 10:15:00', 'user1', 100, 10, 1),
(2, '여름 축제 안내', '여름에 즐길 수 있는 다양한 축제 정보를 알려드립니다.', '2024-05-22 08:30:00', 'user2', 200, 20, 3),
(1, '가을 단풍 명소', '가을에 단풍이 아름다운 명소를 추천드립니다.', '2024-05-21 09:45:00', 'user3', 150, 15, 2),
(2, '겨울 방학 여행', '겨울 방학에 떠나기 좋은 여행지를 소개합니다.', '2024-05-20 11:00:00', 'user4', 180, 25, 5),
(1, '서울 맛집 투어', '서울에서 꼭 가봐야 할 맛집을 소개합니다.', '2024-05-19 07:20:00', 'user5', 220, 30, 4),
(1, '봄꽃 축제', '봄에 열리는 다양한 꽃 축제를 안내합니다.', '2024-05-18 06:30:00', 'user6', 90, 9, 0),
(2, '여름 휴양지', '여름 휴가를 보내기 좋은 휴양지를 추천합니다.', '2024-05-17 12:15:00', 'user7', 230, 25, 2),
(1, '가을 여행 계획', '가을에 가기 좋은 여행지를 소개합니다.', '2024-05-16 09:00:00', 'user8', 170, 20, 1),
(2, '겨울 스포츠', '겨울에 즐길 수 있는 다양한 스포츠를 안내합니다.', '2024-05-15 14:45:00', 'user9', 190, 22, 4),
(1, '서울 가볼만한 곳', '서울에서 꼭 가봐야 할 명소를 소개합니다.', '2024-05-14 10:30:00', 'user10', 210, 28, 3),
(2, '봄 축제 정보', '봄에 열리는 다양한 축제 정보를 안내합니다.', '2024-05-13 11:15:00', 'user1', 120, 14, 1),
(1, '여름 해변 추천', '여름에 가기 좋은 해변을 소개합니다.', '2024-05-12 08:00:00', 'user2', 240, 26, 5),
(2, '가을 단풍 여행', '가을에 단풍을 즐길 수 있는 여행지를 추천합니다.', '2024-05-11 09:50:00', 'user3', 160, 18, 2),
(1, '겨울 낭만 여행', '겨울에 가기 좋은 낭만적인 여행지를 소개합니다.', '2024-05-10 07:40:00', 'user4', 140, 16, 3),
(2, '서울 핫플레이스', '서울에서 핫한 장소를 소개합니다.', '2024-05-09 06:20:00', 'user5', 260, 35, 1),
(1, '봄꽃 여행', '봄에 가기 좋은 꽃 여행지를 추천합니다.', '2024-05-08 05:10:00', 'user6', 110, 12, 0),
(2, '여름 캠핑장 추천', '여름에 가기 좋은 캠핑장을 안내합니다.', '2024-05-07 08:30:00', 'user7', 250, 28, 4),
(1, '가을 소풍 장소', '가을에 소풍 가기 좋은 장소를 추천합니다.', '2024-05-06 09:20:00', 'user8', 180, 21, 2),
(2, '겨울 축제 정보', '겨울에 열리는 다양한 축제 정보를 안내합니다.', '2024-05-05 10:10:00', 'user9', 200, 24, 3),
(1, '서울 여행코스', '서울에서 즐길 수 있는 다양한 여행 코스를 소개합니다.', '2024-05-04 11:50:00', 'user10', 270, 32, 4),
(2, '봄나들이 추천', '봄에 나들이 가기 좋은 장소를 안내합니다.', '2024-05-03 12:40:00', 'user1', 130, 15, 1),
(1, '여름 피서지', '여름 피서를 즐기기 좋은 장소를 추천합니다.', '2024-05-02 13:30:00', 'user2', 280, 34, 5),
(2, '가을 단풍 명소', '가을에 단풍이 아름다운 명소를 안내합니다.', '2024-05-01 14:20:00', 'user3', 170, 20, 2),
(1, '겨울 여행지', '겨울에 가기 좋은 여행지를 소개합니다.', '2024-04-30 15:10:00', 'user4', 190, 22, 4),
(2, '서울 명소 탐방', '서울에서 꼭 가봐야 할 명소를 안내합니다.', '2024-04-29 16:00:00', 'user5', 300, 40, 2),
(1, '봄날의 힐링 여행', '봄에 힐링할 수 있는 여행지를 추천합니다.', '2024-04-28 17:50:00', 'user6', 150, 17, 0),
(2, '여름 휴가 추천', '여름 휴가를 즐기기 좋은 장소를 안내합니다.', '2024-04-27 18:40:00', 'user7', 310, 36, 3),
(1, '가을 낭만 여행', '가을에 낭만적인 여행지를 추천합니다.', '2024-04-26 19:30:00', 'user8', 200, 24, 1),
(2, '겨울 스포츠 여행', '겨울에 즐길 수 있는 스포츠 여행지를 안내합니다.', '2024-04-25 20:20:00', 'user9', 220, 26, 2),
(1, '서울 맛집 탐방', '서울에서 꼭 가봐야 할 맛집을 소개합니다.', '2024-04-24 21:10:00', 'user10', 320, 38, 4),
(2, '봄나들이 명소', '봄에 나들이 가기 좋은 명소를 안내합니다.', '2024-04-23 22:00:00', 'user1', 160, 18, 1),
(1, '여름 바다 여행', '여름에 가기 좋은 바다 여행지를 추천합니다.', '2024-04-22 23:50:00', 'user2', 330, 39, 5),
(2, '가을 산책 코스', '가을에 산책하기 좋은 코스를 안내합니다.', '2024-04-21 06:40:00', 'user3', 180, 21, 2),
(1, '겨울철 힐링 여행', '겨울에 힐링할 수 있는 여행지를 소개합니다.', '2024-04-20 07:30:00', 'user4', 200, 24, 3),
(2, '서울 명소 투어', '서울에서 즐길 수 있는 명소 투어를 안내합니다.', '2024-04-19 08:20:00', 'user5', 340, 41, 1),
(1, '봄 축제 여행', '봄에 열리는 축제 여행지를 추천합니다.', '2024-04-18 09:10:00', 'user6', 170, 20, 0),
(2, '여름 레저 활동', '여름에 즐길 수 있는 레저 활동을 안내합니다.', '2024-04-17 10:00:00', 'user7', 350, 42, 2);

INSERT INTO `user` (`user_id`, `user_password`, `birth`, `user_name`, `user_phone`, `user_email`, `admin`) VALUES
('user1', 'pass1', '1990-02-02', '유저1', '010-1111-1111', 'user1@example.com', 0),
('user2', 'pass2', '1991-03-03', '유저2', '010-2222-2222', 'user2@example.com', 0),
('user3', 'pass3', '1992-04-04', '유저3', '010-3333-3333', 'user3@example.com', 0),
('user4', 'pass4', '1993-05-05', '유저4', '010-4444-4444', 'user4@example.com', 0),
('user5', 'pass5', '1994-06-06', '유저5', '010-5555-5555', 'user5@example.com', 0),
('user6', 'pass6', '1995-07-07', '유저6', '010-6666-6666', 'user6@example.com', 0),
('user7', 'pass7', '1996-08-08', '유저7', '010-7777-7777', 'user7@example.com', 0),
('user8', 'pass8', '1997-09-09', '유저8', '010-8888-8888', 'user8@example.com', 0),
('user9', 'pass9', '1998-10-10', '유저9', '010-9999-9999', 'user9@example.com', 0),
('user10', 'pass10', '1999-11-11', '유저10', '010-1010-1010', 'user10@example.com', 0);

INSERT INTO `notice` (`write_date`, `content`, `notice_img`, `user_id`, `notice_title`, `read_count`) VALUES
('2024-05-01 09:00:00', '5월의 첫 번째 공지입니다.', 'img1.jpg', 'admin', '5월 공지 1', 10),
('2024-05-02 10:00:00', '정기 점검 안내드립니다.', 'img2.jpg', 'admin', '정기 점검 안내', 20),
('2024-05-03 11:00:00', '5월 세 번째 공지입니다.', 'img3.jpg', 'admin', '5월 공지 3', 15),
('2024-05-04 12:00:00', '4일 공지사항입니다.', 'img4.jpg', 'admin', '4일 공지사항', 5),
('2024-05-05 09:00:00', '어린이날 공지입니다.', 'img5.jpg', 'admin', '어린이날 공지', 25),
('2024-05-06 08:00:00', '시스템 업데이트 안내', 'img6.jpg', 'admin', '시스템 업데이트', 35),
('2024-05-07 07:00:00', '고객 만족도 조사 안내', 'img7.jpg', 'admin', '고객 만족도 조사', 40),
('2024-05-08 06:00:00', '8일 공지입니다.', 'img8.jpg', 'admin', '8일 공지', 45),
('2024-05-09 05:00:00', '정기 회의 공지입니다.', 'img9.jpg', 'admin', '정기 회의 공지', 50),
('2024-05-10 04:00:00', '10일 공지입니다.', 'img10.jpg', 'admin', '10일 공지', 55),
('2024-05-11 03:00:00', '11일 공지입니다.', 'img11.jpg', 'admin', '11일 공지', 60),
('2024-05-12 02:00:00', '시스템 점검 안내', 'img12.jpg', 'admin', '시스템 점검 안내', 65),
('2024-05-13 01:00:00', '고객 서비스 개선 안내', 'img13.jpg', 'admin', '고객 서비스 개선', 70),
('2024-05-14 12:00:00', '14일 공지입니다.', 'img14.jpg', 'admin', '14일 공지', 75),
('2024-05-15 11:00:00', '15일 공지입니다.', 'img15.jpg', 'admin', '15일 공지', 80),
('2024-05-16 10:00:00', '서비스 중단 안내', 'img16.jpg', 'admin', '서비스 중단 안내', 85),
('2024-05-17 09:00:00', '17일 공지입니다.', 'img17.jpg', 'admin', '17일 공지', 90),
('2024-05-18 08:00:00', '이벤트 안내입니다.', 'img18.jpg', 'admin', '이벤트 안내', 95),
('2024-05-19 07:00:00', '19일 공지입니다.', 'img19.jpg', 'admin', '19일 공지', 100),
('2024-05-20 06:00:00', '서비스 변경 안내', 'img20.jpg', 'admin', '서비스 변경 안내', 105),
('2024-05-21 05:00:00', '시스템 업그레이드 안내', 'img21.jpg', 'admin', '시스템 업그레이드', 110),
('2024-05-22 04:00:00', '고객 서비스 안내', 'img22.jpg', 'admin', '고객 서비스 안내', 115),
('2024-05-23 03:00:00', '공지사항입니다.', 'img23.jpg', 'admin', '공지사항', 120),
('2024-05-24 02:00:00', '긴급 공지사항입니다.', 'img24.jpg', 'admin', '긴급 공지사항', 125),
('2024-05-24 01:00:00', '중요 공지사항입니다.', 'img25.jpg', 'admin', '중요 공지사항', 130),
('2024-05-24 00:30:00', '마지막 공지사항입니다.', 'img26.jpg', 'admin', '마지막 공지사항', 135),
('2024-05-23 22:00:00', '추가 공지사항입니다.', 'img27.jpg', 'admin', '추가 공지사항', 140),
('2024-05-23 20:00:00', '새로운 기능 안내', 'img28.jpg', 'admin', '새로운 기능 안내', 145),
('2024-05-23 18:00:00', '버그 수정 안내', 'img29.jpg', 'admin', '버그 수정 안내', 150),
('2024-05-23 16:00:00', '업데이트 공지입니다.', 'img30.jpg', 'admin', '업데이트 공지', 155),
('2024-05-23 14:00:00', '서비스 개선 안내', 'img31.jpg', 'admin', '서비스 개선 안내', 160),
('2024-05-23 12:00:00', '공지사항입니다.', 'img32.jpg', 'admin', '공지사항', 165),
('2024-05-23 10:00:00', '새로운 공지사항입니다.', 'img33.jpg', 'admin', '새로운 공지사항', 170),
('2024-05-23 08:00:00', '긴급 점검 안내', 'img34.jpg', 'admin', '긴급 점검 안내', 175),
('2024-05-23 06:00:00', '정기 공지입니다.', 'img35.jpg', 'admin', '정기 공지', 180),
('2024-05-23 04:00:00', '업데이트 안내', 'img36.jpg', 'admin', '업데이트 안내', 185),
('2024-05-23 02:00:00', '시스템 점검 안내', 'img37.jpg', 'admin', '시스템 점검 안내', 190),
('2024-05-23 00:00:00', '중요 공지입니다.', 'img38.jpg', 'admin', '중요 공지', 195),
('2024-05-22 22:00:00', '이벤트 공지입니다.', 'img39.jpg', 'admin', '이벤트 공지', 200),
('2024-05-22 20:00:00', '시스템 업그레이드 안내', 'img40.jpg', 'admin', '시스템 업그레이드', 205),
('2024-05-22 18:00:00', '고객 서비스 개선 안내', 'img41.jpg', 'admin', '고객 서비스 개선', 210),
('2024-05-22 16:00:00', '긴급 공지사항입니다.', 'img42.jpg', 'admin', '긴급 공지사항', 215),
('2024-05-22 14:00:00', '시스템 점검 공지', 'img43.jpg', 'admin', '시스템 점검 공지', 220),
('2024-05-22 12:00:00', '공지사항입니다.', 'img44.jpg', 'admin', '공지사항', 225),
('2024-05-22 10:00:00', '새로운 공지사항입니다.', 'img45.jpg', 'admin', '새로운 공지사항', 230);
