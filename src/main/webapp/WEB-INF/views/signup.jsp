<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>회원가입</title>

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

    <div class="navbar bg-primary text-primary-content">
        <h1>
            <a class="btn btn-ghost normal-case text-xl">회원가입하기</a>
        </h1>
    </div>

    <form class="flex flex-col justify-center items-center p-11" method="POST">
        <input type="text" name="id" placeholder="아이디를 입력해주세요"
            class="input input-bordered input-primary w-full max-w-xs m-5" />
        <input type="text" name="password1" placeholder="비밀번호를 입력해주세요"
            class="input input-bordered input-primary w-full max-w-xs m-5" />
        <input type="text" name="password2" placeholder="비밀번호를 다시 입력해주세요"
            class="input input-bordered input-primary w-full max-w-xs m-5" />
        <div class="flex flex-row m-4">
    </form>
    <a href="localhost:8181">
        <button class="btn btn-active btn-secondary m-4">돌아가기</button>
    </a>
    <button class="btn m-4">회원가입하기</button>
    </div>

</body>

</html>