package com.mytodolist.controller;

import com.mytodolist.entity.Memo;
import com.mytodolist.service.MemoService;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 메인 컨트롤러
 * repository 에 의존해야 한다
 */
@Controller
@RequiredArgsConstructor
@RequestMapping("/memo")
public class SystemController {
    //    private final MemberController memberController;
    //    private final MemoController memoController;
    private final MemoService memoService;

    @GetMapping("/main")
    public String main() {
        return "index";
    }

    @GetMapping("/list")
    public String list(Model model, @RequestParam(defaultValue = "num") String sort) {
        model.addAttribute("memoList", memoService.findAll(sort));
        return "list";
    }

    @GetMapping("/signup")
    public String signup() {
        System.out.println("signup click");

        return "signup";
    }

    @GetMapping("/back")
    public String back() {
        System.out.println("back");

        return "redirect:/memo";
    }

    @GetMapping("/write")
    public String write() {
        System.out.println("write GET click!");

        return "write";
    }

    @PostMapping("/write")
    public String write(Memo memo) {
        System.out.println("write POST click!");
        return "";
    }

    @GetMapping("/delete")
    public String delete(int memoNo) {
        if (memoService.delete(memoNo)) {
            return "redirect:/memo/list";
        }
        return "redirect:/memo/list";
    }


}
