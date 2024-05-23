package com.example.trip.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.example.trip.board.dto.NoticeDTO;

public interface NoticeMapper {
    List<NoticeDTO> getNoticeList(@Param("limit") int limit, @Param("offset") int offset);

    int selectTotalCount();
}
