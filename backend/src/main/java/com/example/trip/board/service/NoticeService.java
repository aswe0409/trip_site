package com.example.trip.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.trip.board.dao.NoticeDAO;
import com.example.trip.board.dto.NoticeDTO;
import com.example.trip.util.aop.AdminOnly;
import com.example.trip.util.aop.NoticePagination;

@Service
public class NoticeService {

	@Autowired
	private NoticeDAO ndao;
	
	@Autowired
	private NoticePagination noticePagination;

	// 공지사항 목록 가져오기
    public List<NoticeDTO> getNoticeList(int page) {
        Map<String, Object> pageInfo = noticePagination.getPageInfo(page);
        int offset = (int) pageInfo.get("offset");
        int pageSize = (int) pageInfo.get("pageSize");

        return ndao.getNoticeList(pageSize, offset);
    }

    public int getTotalNoticeCount() {
        return ndao.selectTotalCount();
    }

    public Map<String, Object> getPaginationInfo(int page) {
        return noticePagination.getPageInfo(page);
    }

	// 공지사항 글 1개 가져오기
	public NoticeDTO showContent(int noticeId) {
		ndao.incrementViewCount(noticeId);
		return ndao.showContent(noticeId);
	}

	// 공지사항 쓰기
	@AdminOnly
	public int writeNotice(NoticeDTO notice) {
		return ndao.writeNotice(notice);
	}

	// 공지사항 수정하기
	@AdminOnly
	public int updateNotice(NoticeDTO notice) {
		return ndao.updateNotice(notice);
	}

	// 공지사항 삭제하기
	@AdminOnly
	public int deleteNotice(int noticeId) {
		return ndao.deleteNotice(noticeId);
	}

}