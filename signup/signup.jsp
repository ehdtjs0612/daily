<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>회원가입 페이지</title>

    <link rel="stylesheet" type="text/css" href="signup.css">
</head>

<body>
  <section id="container" role="main">

    <div id="content">

      <h1 id="title">회원가입</h1>

      <form action="/action/signup_action.jsp" onsubmit="return validate()">

        <div class="join_content">
          <div id="form-container">
            <h4 class="info-label">아이디 (영어 소문자 + 숫자) 6 ~ 10자리</h4>

            <label id="id-check-label" class="check-label">아이디를 입력해주세요</label>

            <button id="id-validate-button" class="validate-button" disabled>중복 체크</button>

            <div id="id-input-box" class="input-box">
              <input id="id-text-field" class="info-text-field" placeholder="ID" type="text" name="id_value">
            </div>

          </div>

          <div id="form-container">
            <h4 class="info-label">비밀번호 (영어 소문자 + 숫자 + 특수문자) 10 ~ 14자리</h4>
            <label id="pw-check-label" class="check-label">비밀번호를 입력해주세요</label>

            <span class="input-box">
              <input id="pw-text-field" class="info-text-field" placeholder="비밀번호" type="password" name="pw_value">
            </span>
          </div>

          <div id="form-container">
            <h4 class="info-label">비밀번호 확인</h4>
            <label id="pw-same-check-label" class="check-label">비밀번호를 재확인해주세요</label>

            <span class="input-box">
              <input id="pw-check-text-field" class="info-text-field" placeholder="동일한 비밀번호" type="password">
            </span>
          </div>

          <div id="form-container" class="select">
            <div id="position-select-form">
              <h4 id="position" class="info-label">직급</h4>
              <select id="position-select" class="input-box" name="position_value" onchange="changeFunc(this)">
                <option value=""> 직급 </option>
                <option value="관리자"> 관리자 </option>
                <option value="팀장"> 팀장 </option>
                <option value="팀원"> 팀원 </option>
              </select>
            </div>

            <div id="name-form">
              <h4 class="info-label">이름</h4>
              <label id="name-check-label" class="check-label">이름을 입력해주세요</label>
              <span class="input-box">
                <input id="name-text-field" class="info-text-field" placeholder="이름" type="text" name="name_value">
              </span>
            </div>

          </div>

          <div id="form-container">
            <h4 id="phonenumber-label" class="info-label">전화번호 예시: 01000000000</h4>
            <label id="phonenumber-check-label" class="check-label">전화번호를 입력해주세요</label>
            <button id="phonenumber-validate-button" class="validate-button" disabled>중복 체크</button>

            <span id="phonenumber-input-box" class="input-box">
              <input id="phonenumber-text-field" class="info-text-field" placeholder="전화번호" type="text"
                name="phonenumber_value">
            </span>
          </div>

          <div id="button-container">

            <button id="sign-up-button" class="action-button" type="submit">
              회원가입
            </button>

            <button id="home-button" class="action-button" type="button">
              로그인 화면으로 가기
            </button>

          </div>

        </div>

      </form>

    </div>
    
  </section>

  <script src="/common/common.js"></script>
  <script src="signup.js"></script>
</body>

</html>