<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="main">
    <script src="https://www.google.com/recaptcha/api.js"></script>
    <div class="mt-4">
        <i class="fa-solid fa-users fa-2xl"></i> 회원가입
        <hr>
    </div>
    <nav style="--bs-breadcrumb-divider: '>'; " class="mt-3">
        <ul class="breadcrumb">
            <li class="breadcrumb-item active"><button class="btn btn-success" disabled>이용약관</button></li>
            <li class="breadcrumb-item active"><button class="btn btn-success" disabled>실명확인</button></li>
            <li class="breadcrumb-item active"><button class="btn btn-success" disabled>정보입력</button></li>
            <li class="breadcrumb-item"><button class="btn btn-light" disabled>가입완료</button></li>
        </ul>
    </nav>
    <div class="mt-5">
        <h2>회원정보 입력</h2>
        <small class="text-muted">
            회원정보는 개인정보 취급방침에 따라 안전하게 보호되며,
            회원님의 명백한 동의없이 공개 또는 제3자에게 제공되지 않습니다.
        </small>
        <hr>
    </div>
    <div class="card card-body bg-light mt-5 mx-3">
        <h3 class="mb-4">일반회원</h3>
        <form name="joinfrm" id="joinfrm">
            <div class="row">
                <div class="row col-11 offset-1 align-items-center">
                    <label class="col-2 form-label text-danger text-end mt-1" for="name">이름</label>
                    <div class="col-3">
                        <input type="text" class="form-control border-danger bg-light"
                               id="name" name="name" value="${mb.name}" readonly>
                    </div>
                </div>
                <div class="row col-11 offset-1 mt-3 align-items-center">
                    <label class="col-2 form-label text-danger text-end mt-1" for="userid">아이디</label>
                    <div class="col-3">
                        <input type="text" class="form-control border-danger" id="userid" name="userid">
                    </div>
                    <span class="col-auto form-text" id="uidmsg">
                            6~16 자의 영문 소문자, 숫자와 특수기호(_)만 사용할 수 있습니다.
                        </span>
                </div>
                <div class="row col-11 offset-1 mt-3 align-items-center">
                    <label class="col-2 form-label text-danger text-end mt-1" for="passwd">비밀번호</label>
                    <div class="col-3">
                        <input type="password" class="form-control border-danger" id="passwd" name="passwd">
                    </div>
                    <span class="col-auto form-text" id="pwdmsg">
                            6~16 자의 영문 소문자, 숫자와 특수기호(_)만 사용할 수 있습니다.
                        </span>
                </div>
                <div class="row col-11 offset-1 mt-3 align-items-center">
                    <label class="col-2 form-label text-danger text-end mt-1" for="reppsswd">비밀번호 확인</label>
                    <div class="col-3">
                        <input type="password" class="form-control border-danger" id="reppsswd" name="reppsswd">
                    </div>
                    <span class="col-auto form-text" id="repwdmsg">
                            이전 항목에서 입력했던 비밀번호를 한번 더 입력하세요.
                        </span>
                </div>
                <div class="row col-11 offset-1 mt-3 align-items-center">
                    <label class="col-2 form-label text-danger text-end mt-1" for="zip1">우편번호</label>
                    <div class="col-2">
                        <input type="text" class="form-control border-danger bg-light"
                               id="zip1" name="zip1" readonly>
                    </div>
                    <div class="col-2">
                        <input type="text" class="form-control border-danger bg-light"
                               id="zip2" name="zip2" readonly>
                    </div>
                    <div class="col-3">
                        <button type="button" class="btn btn-dark" id="zipmdbtn">
                            <i class="fas fa-question-circle"></i> 우편번호 찾기</button>
                    </div>
                </div>
                <div class="row col-11 offset-1 mt-3 align-items-center">
                    <label class="col-2 form-label text-danger text-end mt-1" for="addr1">나머지 주소</label>
                    <div class="col-4">
                        <input type="text" class="form-control border-danger bg-light"
                               id="addr1" name="addr1" readonly>
                    </div>
                    <div class="col-4">
                        <input type="text" class="form-control border-danger" id="addr2" name="addr2">
                    </div>
                </div>
                <div class="row col-11 offset-1 mt-3 align-items-center">
                    <label class="col-2 form-label text-danger text-end"
                           for="email1">전자우편 주소</label>
                    <div class="col-5">
                        <div class="input-group">
                            <input type="text" name="email1" id="email1"
                                   class="form-control border-danger">
                            <span class="input-group-text border-danger">@</span>
                            <input type="text" name="email2" id="email2"
                                   class="form-control border-danger bg-light" readonly>
                        </div>
                    </div>
                    <div class="col-3">
                        <select class="form-select border-danger" id="email3">
                            <option>선택하세요</option>
                            <option>직접 입력하기</option>
                            <option>naver.com</option>
                            <option>gmail.com</option>
                            <option>hotmail.com</option>
                        </select> </div>
                </div>

                <div class="row col-11 offset-1 mt-3 mb-3 align-items-center">
                    <label class="col-2 form-label text-danger text-end"
                           for="pnum1">전화번호</label>
                    <div class="col-2">
                        <input type="text" name="pnum1" id="pnum1"
                               class="form-control border-danger" value="${mb.pnum1}" readonly>
                    </div>
                    <div class="col-2">
                        <input type="text" name="pnum2" id="pnum2"
                               class="form-control border-danger" value="${mb.pnum2}" readonly> </div>
                    <div class="col-2">
                        <input type="text" name="pnum3" id="pnum3"
                               class="form-control border-danger" value="${mb.pnum3}" readonly> </div>
                </div>

                <div class="row col-11 offset-1  align-items-center">
                    <label class="col-2 form-label text-danger text-end mb-5"
                           for="grecaptcha">자동가입방지</label>
                    <div class="col-3">
                        <div class="g-recaptcha"
                             data-sitekey="6LdD4OskAAAAAH6Uazf4s8YBShdvsgMUbU5KkmDK"></div>
                        <input type="hidden" name="grecaptcha" id="grecaptcha">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col text-center">
                    <hr class="w-75 mx-auto">
                    <button type="button" name="joinbtn" id="joinbtn" class="btn btn-primary float-right me-3">
                        <i class="fa-solid fa-check-circle"></i> 입력완료</button>
                    <button type="button" name="cancelbtn" id="cancelbtn" class="btn btn-danger float-right">
                        <i class="fa-solid fa-xmark-circle"></i> 입력취소</button>
                </div>
            </div>

            <input type="hidden" name="phone" id="phone">
            <input type="hidden" name="zipcode" id="zipcode">
            <input type="hidden" name="email" id="email">
            <input type="hidden" name="checkuid" id="checkuid">
            <input type="hidden" name="checkuid" id="checkpwd">
        </form>
    </div>

    <!-- 우편번호 폼 모달 -->
    <div class="modal fade" id="zipmodal" role="dialog" data-bs-backdrop="static"
         data-bs-keyboard="false">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="mt-2">
                        <h3 class="modal-title" id="exampleModalLabel">우편번호 찾기</h3>
                    </div>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form name="zipfrm">
                        <div class="row mt-3 justify-content-center align-items-center">
                            <div class="col-3 text-danger text-end mt-2">
                                <label for="dong" class="form-label">검색하실 주소의<br>
                                    동 이름을 입력하세요</label>
                            </div>
                            <div class="col-5 d-flex justify-content-end">
                                <input type="text" class="form-control border-primary" id="dong" name="dong">
                            </div>
                            <div class="col-auto me-1 d-flex justify-content-end">
                                <button type="button" class="btn btn-primary" id="findzipbtn">
                                    <i class="fas fa-search"></i> 검색하기</button>
                            </div>
                            <hr class="w-75 mx-auto mt-3">
                            <p class="col-10 mt-1 text-center">
                                지역의 읍/면/동의 이름을 공백없이 입력하신 후, [검색] 버튼을 클릭하세요
                            </p>
                        </div>
                        <div>
                            <div class="col-8 offset-2 mt-3">
                                <select class="form-select" id="addrlist" name="addrlist" size="10">

                                </select>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer justify-content-end">
                    <hr>
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal" id="addrclose">
                        <i class="fas fa-check-square"></i> 선택하고 닫기</button>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="/assets/js/join.js"></script>