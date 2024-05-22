package com.example.trip.board.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.trip.board.dto.NoticeDTO;
import com.example.trip.board.service.NoticeService;

import io.swagger.v3.oas.annotations.tags.Tag;

@RestController
@Tag(name = "공지사항 컨트롤러", description = "공지사항 CRUD")
@RequestMapping(value = "/notice")
public class NoticeController {
	@Autowired
	private NoticeService nservice;

    @GetMapping("/list")
    public Map<String, Object> list(@RequestParam(defaultValue = "1") int page) {
        List<NoticeDTO> notices = nservice.getNoticeList(page);
        Map<String, Object> pageInfo = nservice.getPaginationInfo(page);

        Map<String, Object> response = new HashMap<>();
        response.put("notices", notices);
        response.put("pageInfo", pageInfo);

        return response;
    }

	// 공지사항 자세히 보기
	@GetMapping("/{selectOne}")
	public ResponseEntity<?> showContent(@RequestParam int noticeId) {
		try {
			NoticeDTO post = nservice.showContent(noticeId);
			if (post != null) {
				return ResponseEntity.ok(post);
			}
			else {
				return ResponseEntity.status(HttpStatus.NOT_FOUND).body("공지사항을 찾을 수 없습니다.");
			}
		}
		catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("공지사항 조회에 실패했습니다.");
		}
	}

	// 공지사항 게시글 작성하기(공지사항은 관리자만 작성할 수 있음)
	@PostMapping(value = "/write", headers = {
			"Content-type=application/json" })
	public ResponseEntity<?> writeNotice(@RequestBody NoticeDTO notice) {
		try {
			nservice.writeNotice(notice);
			return ResponseEntity.status(HttpStatus.CREATED).body("공지사항이 성공적으로 등록되었습니다.");
		}
		catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("공지사항이 등록에 실패했습니다.");
		}
	}

	// 공지사항 수정
	@PutMapping("/{postId}")
	public ResponseEntity<?> updateNotice(@PathVariable int noticeId, @RequestBody NoticeDTO notice) {
		try {
			int status = nservice.updateNotice(notice);
			if (status > 0) {
				return ResponseEntity.ok("공지사항이 성공적으로 수정되었습니다.");
			}
			else {
				return ResponseEntity.status(HttpStatus.NOT_FOUND).body("공지사항을 찾을 수 없습니다.");
			}
		}
		catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("공지사항 수정에 실패했습니다.");
		}
	}

	// 공지사항 삭제
	@DeleteMapping("/{postId}")
	public ResponseEntity<?> deleteNotice(@PathVariable int noticeId) {
		try {
			int status = nservice.deleteNotice(noticeId);
			if (status > 0) {
				return ResponseEntity.ok("공지사항이 성공적으로 삭제되었습니다.");
			}
			else {
				return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("공지사항 삭제에 실패했습니다.");
			}
		}
		catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("공지사항 삭제에 실패했습니다.");
		}
	}
}
