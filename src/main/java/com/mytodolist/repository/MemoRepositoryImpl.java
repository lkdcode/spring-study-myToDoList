package com.mytodolist.repository;

import com.mytodolist.entity.Memo;
import org.springframework.stereotype.Repository;

import java.util.*;

@Repository
public class MemoRepositoryImpl implements MemoRepository {
    private final static Map<Integer, Memo> memoMap;
    private static int sequence;

    static {
        memoMap = new HashMap<>();

        Memo memo1 = new Memo(++sequence, "첫 번째 글 제목", "1번 내용입니다.");
        Memo memo2 = new Memo(++sequence, "두 번째 글 제목", "2번 내용입니다.");
        Memo memo3 = new Memo(++sequence, "세 번째 글 제목", "3번 내용입니다.");

        memoMap.put(memo1.getMemoNo(), memo1);
        memoMap.put(memo2.getMemoNo(), memo2);
        memoMap.put(memo3.getMemoNo(), memo3);
    }

    @Override
    public List<Memo> findAll() {
        return new ArrayList<>(memoMap.values());
    }

    @Override
    public void write() {

    }

    @Override
    public boolean delete(int memoNo) {
        memoMap.remove(memoNo);
        return true;
    }
}
