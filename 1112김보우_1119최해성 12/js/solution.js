document.addEventListener("DOMContentLoaded", function () {
    // 페이지가 로드되면 실행될 함수 정의

    // 모든 .methods 클래스 내의 h3 요소를 선택
    const methods = document.querySelectorAll(".methods h3");

    // 각 h3 요소에 마우스 오버와 마우스 아웃 이벤트를 추가
    methods.forEach((method) => {
        // 마우스 오버 이벤트: 글자 색상을 초록색으로 변경
        method.addEventListener("mouseover", function () {
            this.style.color = "#009688";
        });

        // 마우스 아웃 이벤트: 글자 색상을 이전 색(으로 변경
        method.addEventListener("mouseout", function () {
            this.style.color = "#007c91";
        });
    });
});
