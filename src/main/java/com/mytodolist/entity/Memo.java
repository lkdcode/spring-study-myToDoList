package com.mytodolist.entity;

import lombok.*;

@Setter
@Getter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
public class Memo {
    private int memoNo; // 메모 번호
    private String title; // 메모 제목
    private String content; // 메모 내용
}
