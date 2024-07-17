// 새 창을 열기 위한 JavaScript 코드
document.addEventListener("DOMContentLoaded", function() {
    // 팝업이 이미 표시되었는지 확인
    const isPopupShown = sessionStorage.getItem("isPopupShown");

    // 팝업이 표시되지 않은 경우에만 팝업을 띄움
    if (!isPopupShown) {
      window.open(
        "../html/pop.html",
        "",
        "width=350,height=600,left=500,top=100"
      );
      // 팝업이 표시되었음을 저장
      sessionStorage.setItem("isPopupShown", "true");
    }
});
