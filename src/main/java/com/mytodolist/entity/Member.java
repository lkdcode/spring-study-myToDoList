package com.mytodolist.entity;

import lombok.*;

import java.util.List;

/**
 * 회원가입하는 멤버 정보
 */
@Setter
@Getter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
public class Member {
    private String id;
    private String password;
    private List<Memo> memoList;
}
