package com.mytodolist.repository;

import com.mytodolist.entity.Memo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MemoRepository {
    List<Memo> findAll();

    void write();

    boolean delete(int memoNo);
}
