<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>mYtOdOlIsT</title>

    <!-- reset -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">

    <!-- 폰트어썸 아이콘 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="https://kit.fontawesome.com/68f79e919f.js" crossorigin="anonymous"></script>

</head>

<body>

    <!-- set-up -->
    <link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.5/dist/full.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>

    <div class="navbar bg-neutral text-neutral-content">
        <h1>
            <a class="btn btn-ghost normal-case text-xl">MY TO DO LIST</a>
        </h1>
    </div>

    <div class="flex flex-row justify-around m-8">
        <button class="btn btn-warning">로그아웃</button>
        <a href="/memo/write">
            <button class="btn btn-success">글쓰기</button>
        </a>
        <div class="dropdown">
            <label tabindex="0" class="btn m-1">정렬 기준</label>
            <ul tabindex="0" class="dropdown-content menu p-2 shadow bg-base-100 rounded-box w-52">
                <li><a>번호순</a></li>
                <li><a>제목순</a></li>
                <li><a>내용길이순</a></li>
            </ul>
        </div>
    </div>


    <div class="overflow-x-auto">
        <table class="table w-full">
            <!-- head -->
            <thead>
                <tr>
                    <th></th>
                    <th>TITLE</th>
                    <th>CONTENT</th>
                    <th></th>
                </tr>
            </thead>

            <tbody>

                <c:forEach var="m" items="${memoList}">
                    <c:if test="${m.memoNo%2==0}">
                        <tr>
                    </c:if>
                    <c:if test="${m.memoNo%2==1}">
                        <tr class="active">
                    </c:if>

                    <th>${m.memoNo}</th>
                    <td>${m.title}</td>
                    <td>${m.content}</td>
                    <th>
                        <a href="/memo/delete?memoNo=${m.memoNo}">
                            <button class="btn btn-error">삭제</button>
                        </a>
                    </th>
                </c:forEach>

            </tbody>
            <tbodye>
    </div>

</body>

</html>