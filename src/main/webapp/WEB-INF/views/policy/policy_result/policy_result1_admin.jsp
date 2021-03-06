<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@include file="/WEB-INF/views/common/header.jsp" %>
    
<!DOCTYPE html>
<html>

<body>
    <section style="width: 100%;height: 1500px;">
        <h1 class="text-center" style="width: 100%;height: 50px;margin-top: 150px;font-size: 2.4rem;font-family: 'Gowun Dodum';font-weight: bold;margin-bottom: 100px;">청년정책 통합검색</h1>
        <div class="d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="width: 100%;height: 50px;margin-top: 0px;">
            <div class="text-nowrap d-xxl-flex justify-content-xxl-start align-items-xxl-center" style="height: 40px;width: 70%;padding: 0px;"><i class="fa fa-search d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="height: 40px;width: 40px;color:rgb(2,170,178);"></i><label class="form-label d-xxl-flex justify-content-xxl-start align-items-xxl-center" style="height: 40px;text-align: left;font-family: 'Gowun Dodum';font-size: 1.2rem;font-weight: bold;margin-bottom: 0px;">정책 검색</label></div>
        </div>
        <div class="d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="width: 100%;height: 50px;margin-top: 0px;">
            <div class="text-nowrap d-xxl-flex justify-content-xxl-start align-items-xxl-center" style="height: 40px;width: 70%;padding: 0px;"><input class="d-xxl-flex" type="search" style="width: 505px;margin-left: 14px;height: 35px;margin-top: 4px;border-radius: 5px;font-family: 'IBM Plex Sans KR';font-size: 1.2rem;"></div>
        </div>
        <div class="d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="width: 100%;height: 50px;margin-top: 0px;">
            <div class="text-nowrap d-xxl-flex justify-content-xxl-start align-items-xxl-center" style="height: 40px;width: 70%;padding: 0px;"><i class="fa fa-search d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="height: 40px;width: 40px;color:rgb(2,170,178);"></i><label class="form-label d-xxl-flex justify-content-xxl-start align-items-xxl-center" style="height: 40px;text-align: left;font-family: 'Gowun Dodum';font-size: 1.2rem;font-weight: bold;margin-bottom: 0px;">정책 유형</label></div>
        </div>
        <div class="d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="width: 100%;height: 50px;margin-top: 0px;">
            <div class="text-nowrap d-xxl-flex justify-content-xxl-start align-items-xxl-center" style="height: 40px;width: 70%;padding: 0px;"><button class="btn btn-danger text-center d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="border: none;width: 90px;height: 30px;margin-left: 14px;color: #ffffff;font-size: 1rem;font-weight: bold;background: #02AAB2;" type="button">유형 전체</button><button class="btn btn-danger" style="border: none;width: 90px;height: 30px;margin-left: 14px;font-weight: bold;text-align: center;background: #7FD3D1;" type="button">취업지원</button><button class="btn btn-danger" style="border: none;width: 90px;height: 30px;margin-left: 14px;font-weight: bold;text-align: center;background: #7FD3D1;" type="button">창업지원</button><button class="btn btn-danger" style="border: none;width: 90px;height: 30px;margin-left: 14px;font-weight: bold;text-align: center;background: #7FD3D1;" type="button">주거 금융</button><button class="btn btn-danger" style="border: none;width: 90px;height: 30px;margin-left: 14px;font-weight: bold;text-align: center;background: #7FD3D1;" type="button">생활 복지</button><button class="btn btn-danger" style="border: none;width: 90px;height: 30px;margin-left: 14px;font-weight: bold;text-align: center;background: #7FD3D1;" type="button">정책참여</button><button class="btn btn-danger" style="border: none;width: 90px;height: 30px;margin-left: 14px;font-weight: bold;text-align: center;background: #7FD3D1;" type="button">코로나19</button></div>
        </div>
        <div class="d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="width: 100%;height: 50px;margin-top: 0px;">
            <div class="text-nowrap d-xxl-flex justify-content-xxl-start align-items-xxl-center" style="height: 40px;width: 70%;padding: 0px;"><i class="fa fa-search d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="height: 40px;width: 40px; color:rgb(2,170,178);"></i><label class="form-label d-xxl-flex justify-content-xxl-start align-items-xxl-center" style="height: 40px;text-align: left;font-family: 'Gowun Dodum';font-size: 1.2rem;font-weight: bold;margin-bottom: 0px;">지역 유형</label></div>
        </div>
        <div class="d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="width: 100%;height: 50px;margin-top: 0px;">
            <div class="text-nowrap d-xxl-flex justify-content-xxl-start align-items-xxl-center" style="height: 40px;width: 70%;padding: 0px;"><button class="btn btn-danger text-center d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="border: none;width: 90px;height: 30px;margin-left: 14px;color: #ffffff;font-size: 1rem;font-weight: bold;background: #02AAB2;" type="button">지역 전체</button><button class="btn btn-danger" style="border: none;width: 90px;height: 30px;margin-left: 14px;font-weight: bold;text-align: center;background: #7FD3D1;" type="button">중앙부처</button><button class="btn btn-danger" style="border: none;width: 90px;height: 30px;margin-left: 14px;font-weight: bold;text-align: center;background: #7FD3D1;" type="button">서울</button><button class="btn btn-danger" style="border: none;width: 90px;height: 30px;margin-left: 14px;font-weight: bold;text-align: center;background: #7FD3D1;" type="button">부산</button><button class="btn btn-danger" style="border: none;width: 90px;height: 30px;margin-left: 14px;font-weight: bold;text-align: center;background: #7FD3D1;" type="button">경기</button><button class="btn btn-danger" style="border: none;width: 90px;height: 30px;margin-left: 14px;font-weight: bold;text-align: center;background: #7FD3D1;" type="button">충북</button><button class="btn btn-danger" style="border: none;width: 90px;height: 30px;margin-left: 14px;font-weight: bold;text-align: center;background: #7FD3D1;" type="button">충남</button><button class="btn btn-danger" style="border: none;width: 90px;height: 30px;margin-left: 14px;font-weight: bold;text-align: center;background: #7FD3D1;" type="button">전북</button><button class="btn btn-danger" style="border: none;width: 90px;height: 30px;margin-left: 14px;font-weight: bold;text-align: center;background: #7FD3D1;" type="button">경남</button></div>
        </div>
        <div class="d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="width: 100%;height: 150px;margin-top: 0px;">
            <div class="text-nowrap d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="height: 80px;width: 70%;padding: 0px;"><button class="btn btn-danger" style="border: none;width: 120px;height: 40px;margin-left: 14px;text-align: center;font-weight: bold;background: #989898e6;" type="button">선택 초기화</button><button class="btn btn-danger" style="border: none;width: 120px;height: 40px;margin-left: 14px;font-weight: bold;text-align: center;background: rgb(2,170,178);" type="button">검색</button></div>
        </div>
        <div class="d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="width: 100%;height: 50px;margin-top: 0px;">
            <div class="text-nowrap d-xxl-flex justify-content-xxl-start align-items-xxl-center" style="height: 40px;width: 70%;padding: 0px;"><i class="fas fa-dot-circle d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="height: 40px;width: 40px; color:rgb(2,170,178);"></i><label class="form-label d-xxl-flex justify-content-xxl-start align-items-xxl-center" style="height: 40px;text-align: left;font-family: 'Gowun Dodum';font-size: 1.2rem;font-weight: bold;margin-bottom: 0px;">검색결과</label></div>
        </div>
        <section class="d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="margin: 30px 0px;width: 100%;">
            <div class="row d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="width: 80%;">
                <div class="col d-xxl-flex justify-content-xxl-end align-items-xxl-center" style="height: 172px;">
                    <div class="d-xxl-flex card-devices zoom" id="card-devices-1" style="margin-left: 0px;height: 172px;">
                       
                        <div id="card-body-1" class="card-body" style="height: 165px;">
                            <header id="card-title-1" class="card-title">
                                <h5 style="font-family: 'Gowun Dodum';font-weight: bold;font-size: 1.2rem;">국민취업지원제도</h5>
                            </header>
                            <p style="width: 100px;font-size: 1rem;font-weight: bold;background: #b1dfbb;border-radius: 5%;text-align: center;font-family: 'IBM Plex Sans KR';">중앙부처</p>
                            <p class="d-xxl-flex justify-content-xxl-center" style="text-align: center;width: 100px;padding-left: 0px;background: #d3d3d3;border-radius: 5%;font-size: 1rem;font-family: 'IBM Plex Sans KR';font-weight: bold;">취업지원</p><button class="btn btn-danger d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="border: none;width: 100px;height: 30px;margin-left: 160px;color: #ffffff;font-size: 1rem;font-weight: bold;text-align: center;background: #BCCE52;" type="button">상세보기</button>
                        </div>
                        <div id="border-bottom-1" class="border-bottom"></div>
                    </div>
                </div>
                <div class="col d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="height: 172px;">
                    <div class="d-xxl-flex card-devices zoom" id="card-devices-2" style="margin-left: 0px;height: 172px;">
                        
                        <div id="card-body-2" class="card-body" style="height: 165px;">
                            <header id="card-title-2" class="card-title">
                                <h5 style="font-family: 'Gowun Dodum';font-weight: bold;font-size: 1.2rem;">생활지원비</h5>
                            </header>
                            <p style="width: 100px;font-size: 1rem;font-weight: bold;background: #b1dfbb;border-radius: 5%;text-align: center;font-family: 'IBM Plex Sans KR';">중앙부처</p>
                            <p class="d-xxl-flex justify-content-xxl-center" style="text-align: center;width: 100px;padding-left: 0px;background: #d3d3d3;border-radius: 5%;font-size: 1rem;font-family: 'IBM Plex Sans KR';font-weight: bold;">코로나19</p><button class="btn btn-danger d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="border: none;width: 100px;height: 30px;margin-left: 160px;color: #ffffff;font-size: 1rem;font-weight: bold;text-align: center;background: #BCCE52;" type="button">상세보기</button>
                        </div>
                        <div id="border-bottom-7" class="border-bottom"></div>
                    </div>
                </div>
                <div class="col d-xxl-flex justify-content-xxl-start">
                    <div class="d-xxl-flex card-devices zoom" id="card-devices-3" style="margin-left: 0px;height: 172px;">
                       
                        <div id="card-body-3" class="card-body" style="height: 165px;">
                            <header id="card-title-3" class="card-title">
                                <h5 style="font-family: 'Gowun Dodum';font-weight: bold;font-size: 1.2rem;">청년 신체건강 인프라 확대</h5>
                            </header>
                            <p style="width: 100px;font-size: 1rem;font-weight: bold;background: #b1dfbb;border-radius: 5%;text-align: center;font-family: 'IBM Plex Sans KR';">중앙부처</p>
                            <p class="d-xxl-flex justify-content-xxl-center" style="text-align: center;width: 100px;padding-left: 0px;background: #d3d3d3;border-radius: 5%;font-size: 1rem;font-family: 'IBM Plex Sans KR';font-weight: bold;">생활복지</p><button class="btn btn-danger d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="border: none;width: 100px;height: 30px;margin-left: 160px;color: #ffffff;font-size: 1rem;font-weight: bold;text-align: center;background: #BCCE52;" type="button">상세보기</button>
                        </div>
                        <div id="border-bottom-3" class="border-bottom"></div>
                    </div>
                </div>
            </div>
        </section>
        <section class="d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="margin: 30px 0px;width: 100%;">
            <div class="row d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="width: 80%;">
                <div class="col d-xxl-flex justify-content-xxl-end align-items-xxl-center" style="height: 172px;">
                    <div class="d-xxl-flex card-devices zoom" id="card-devices-4" style="margin-left: 0px;height: 172px;">
                       
                        <div id="card-body-4" class="card-body" style="height: 165px;">
                            <header id="card-title-4" class="card-title">
                                <h5 style="font-family: 'Gowun Dodum';font-weight: bold;font-size: 1.2rem;">청년 주거급여 분리지급</h5>
                            </header>
                            <p style="width: 100px;font-size: 1rem;font-weight: bold;background: #b1dfbb;border-radius: 5%;text-align: center;font-family: 'IBM Plex Sans KR';">중앙부처</p>
                            <p class="d-xxl-flex justify-content-xxl-center" style="text-align: center;width: 100px;padding-left: 0px;background: #d3d3d3;border-radius: 5%;font-size: 1rem;font-family: 'IBM Plex Sans KR';font-weight: bold;">주거금융</p><button class="btn btn-danger d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="border: none;width: 100px;height: 30px;margin-left: 160px;color: #ffffff;font-size: 1rem;font-weight: bold;text-align: center;background: #BCCE52;" type="button">상세보기</button>
                        </div>
                        <div id="border-bottom-2" class="border-bottom"></div>
                    </div>
                </div>
                <div class="col d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="height: 172px;">
                    <div class="d-xxl-flex card-devices zoom" id="card-devices-5" style="margin-left: 0px;height: 172px;">
                        
                        <div id="card-body-5" class="card-body" style="height: 165px;">
                            <header id="card-title-5" class="card-title">
                                <h5 style="font-family: 'Gowun Dodum';font-weight: bold;font-size: 1.2rem;">서울시 청년수당</h5>
                            </header>
                            <p style="width: 100px;font-size: 1rem;font-weight: bold;background: #b1dfbb;border-radius: 5%;text-align: center;font-family: 'IBM Plex Sans KR';">서울</p>
                            <p class="d-xxl-flex justify-content-xxl-center" style="text-align: center;width: 100px;padding-left: 0px;background: #d3d3d3;border-radius: 5%;font-size: 1rem;font-family: 'IBM Plex Sans KR';font-weight: bold;">취업지원</p><button class="btn btn-danger d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="border: none;width: 100px;height: 30px;margin-left: 160px;color: #ffffff;font-size: 1rem;font-weight: bold;text-align: center;background: #BCCE52;" type="button">상세보기</button>
                        </div>
                        <div id="border-bottom-4" class="border-bottom"></div>
                    </div>
                </div>
                <div class="col d-xxl-flex justify-content-xxl-start">
                    <div class="d-xxl-flex card-devices zoom" id="card-devices-6" style="margin-left: 0px;height: 172px;">
                        
                        <div id="card-body-6" class="card-body" style="height: 165px;">
                            <header id="card-title-6" class="card-title">
                                <h5 style="font-family: 'Gowun Dodum';font-weight: bold;font-size: 1.2rem;">서울형 뉴딜 일자리</h5>
                            </header>
                            <p style="width: 100px;font-size: 1rem;font-weight: bold;background: #b1dfbb;border-radius: 5%;text-align: center;font-family: 'IBM Plex Sans KR';">서울</p>
                            <p class="d-xxl-flex justify-content-xxl-center" style="text-align: center;width: 100px;padding-left: 0px;background: #d3d3d3;border-radius: 5%;font-size: 1rem;font-family: 'IBM Plex Sans KR';font-weight: bold;">취업지원</p><button class="btn btn-danger d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="border: none;width: 100px;height: 30px;margin-left: 160px;color: #ffffff;font-size: 1rem;font-weight: bold;text-align: center;background: #BCCE52;" type="button">상세보기</button>
                        </div>
                        <div id="border-bottom-5" class="border-bottom"></div>
                    </div>
                </div>
            </div>
        </section>
        <section class="d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="margin: 30px 0px;width: 100%;">
            <div class="row d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="width: 80%;">
                <div class="col d-xxl-flex justify-content-xxl-end align-items-xxl-center" style="height: 172px;">
                    <div class="d-xxl-flex card-devices zoom" id="card-devices-7" style="margin-left: 0px;height: 172px;">
                       
                        <div id="card-body-7" class="card-body" style="height: 165px;">
                            <header id="card-title-7" class="card-title">
                                <h5 style="font-family: 'Gowun Dodum';font-weight: bold;font-size: 1.2rem;">청년 월세 지원</h5>
                            </header>
                            <p style="width: 100px;font-size: 1rem;font-weight: bold;background: #b1dfbb;border-radius: 5%;text-align: center;font-family: 'IBM Plex Sans KR';">서울</p>
                            <p class="d-xxl-flex justify-content-xxl-center" style="text-align: center;width: 100px;padding-left: 0px;background: #d3d3d3;border-radius: 5%;font-size: 1rem;font-family: 'IBM Plex Sans KR';font-weight: bold;">주거금융</p><button class="btn btn-danger d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="border: none;width: 100px;height: 30px;margin-left: 160px;color: #ffffff;font-size: 1rem;font-weight: bold;text-align: center;background: #BCCE52;" type="button">상세보기</button>
                        </div>
                        <div id="border-bottom-6" class="border-bottom"></div>
                    </div>
                </div>
                <div class="col d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="height: 172px;">
                    <div class="d-xxl-flex card-devices zoom" id="card-devices-8" style="margin-left: 0px;height: 172px;">
                       
                        <div id="card-body-8" class="card-body" style="height: 165px;">
                            <header id="card-title-8" class="card-title">
                                <h5 style="font-family: 'Gowun Dodum';font-weight: bold;font-size: 1.2rem;">서울「청년창업꿈터」 지원</h5>
                            </header>
                            <p style="width: 100px;font-size: 1rem;font-weight: bold;background: #b1dfbb;border-radius: 5%;text-align: center;font-family: 'IBM Plex Sans KR';">서울</p>
                            <p class="d-xxl-flex justify-content-xxl-center" style="text-align: center;width: 100px;padding-left: 0px;background: #d3d3d3;border-radius: 5%;font-size: 1rem;font-family: 'IBM Plex Sans KR';font-weight: bold;">창업지원</p><button class="btn btn-danger d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="border: none;width: 100px;height: 30px;margin-left: 160px;color: #ffffff;font-size: 1rem;font-weight: bold;text-align: center;background: #BCCE52;" type="button">상세보기</button>
                        </div>
                        <div id="border-bottom-8" class="border-bottom"></div>
                    </div>
                </div>
                <div class="col d-xxl-flex justify-content-xxl-start">
                    <div class="d-xxl-flex card-devices zoom" id="card-devices-9" style="margin-left: 0px;height: 172px;">
                        
                        <div id="card-body-9" class="card-body" style="height: 165px;">
                            <header id="card-title-9" class="card-title">
                                <h5 style="font-family: 'Gowun Dodum';font-weight: bold;font-size: 1.2rem;">청년희망날개통장</h5>
                            </header>
                            <p style="width: 100px;font-size: 1rem;font-weight: bold;background: #b1dfbb;border-radius: 5%;text-align: center;font-family: 'IBM Plex Sans KR';">부산</p>
                            <p class="d-xxl-flex justify-content-xxl-center" style="text-align: center;width: 100px;padding-left: 0px;background: #d3d3d3;border-radius: 5%;font-size: 1rem;font-family: 'IBM Plex Sans KR';font-weight: bold;">주거금융</p><button class="btn btn-danger d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="border: none;width: 100px;height: 30px;margin-left: 160px;color: #ffffff;font-size: 1rem;font-weight: bold;text-align: center;background: #BCCE52;" type="button">상세보기</button>
                        </div>
                        <div id="border-bottom-9" class="border-bottom"></div>
                    </div>
                </div>
            </div>
        </section>
        <div class="d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="width: 100%;height: 50px;margin-top: 0px;">
            <div class="text-nowrap d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="height: 40px;width: 70%;padding: 0px;"><button class="btn btn-danger" style="border: none;width: 120px;height: 40px;margin-left: 0px;text-align: center;font-weight: bold;background: var(--bs-info);padding: 0px;" type="button">등록</button><button class="btn btn-danger" style="border: none;width: 120px;height: 40px;margin-left: 14px;text-align: center;font-weight: bold;background: #989898e6;padding: 0px;" type="button">삭제</button><button class="btn btn-primary" type="button" style="padding: 0px;width: 120px;height: 40px;margin-left: 14px;text-align: center;font-weight: bold;">뒤로가기</button></div>
        </div>
        <section class="d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="width: 100%;"><nav class="d-xxl-flex justify-content-xxl-end align-items-xxl-center" style="width: 210px">
    <ul class="pagination pagination-lg justify-content-center">
        <li class="page-item"><a class="page-link" href="#" aria-label="Previous"><span aria-hidden="true"><i class="fas fa-angle-double-left fa-2x" style="color:rgb(2,170,178);"></i></span></a></li>
        <li class="page-item"><a class="page-link" href="#">1</a></li>
        <li class="page-item"><a class="page-link" href="#">2</a></li>
        <li class="page-item"><a class="page-link" href="#">3</a></li>
        <li class="page-item"><a class="page-link" href="#">4</a></li>
        <li class="page-item"><a class="page-link" href="#">5</a></li>
        <li class="page-item"><a class="page-link" href="#" aria-label="Next"><span aria-hidden="true"><i class="fas fa-angle-double-right fa-2x" style="color:rgb(2,170,178);"></i></span></a></li>
    </ul>
</nav></section>
    </section>
   <%@include file="/WEB-INF/views/common/footer.jsp" %> 
</body>

</html>