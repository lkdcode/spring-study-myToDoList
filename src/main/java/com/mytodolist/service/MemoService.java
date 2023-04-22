package com.mytodolist.service;

import com.mytodolist.entity.Memo;
import com.mytodolist.repository.MemoRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class MemoService {

    private final MemoRepository memoRepository;

    public List<Memo> findAll(String sort) {
        Comparator<Memo> comparator = Comparator.comparing(Memo::getMemoNo);

        switch (sort) {
            case "title":
                comparator = Comparator.comparing(Memo::getTitle);
                break;
            case "contentLength":
                comparator = Comparator.comparing(e -> e.getContent().length());
        }

        return memoRepository.findAll().stream()
                .sorted(comparator)
                .collect(Collectors.toList());
    }

    public boolean write() {

        return true;
    }

    public boolean delete(int memoNo) {
        return memoRepository.delete(memoNo);
    }

}
