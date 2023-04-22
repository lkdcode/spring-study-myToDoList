<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>write</title>

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

    <div class="navbar bg-base-100">
        <h1>
            <a class="btn btn-ghost normal-case text-xl">메모하기</a>
        </h1>
    </div>

    <div class="flex flex-row justify-around m-8">
        <button class="btn btn-warning">뒤로가기</button>
        <button class="btn btn-success">완료</button>
    </div>

    <div class="flex justify-center">
        <input type="text" placeholder="제목을 입력해주세요!" class="input input-bordered w-full max-w-xs m-5" />
    </div>

    <div class="form-control">
        <textarea class="textarea textarea-bordered h-80" placeholder="내용을 입력해주세요!"></textarea>
        <label class="label">
        </label>
    </div>
</body>

</html>