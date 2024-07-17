document.addEventListener('DOMContentLoaded', function() {
    const slides = document.querySelectorAll('.news-slide'); // 모든 뉴스 슬라이드 요소를 가져옴
    let currentSlide = 0; // 현재 슬라이드 인덱스 초기화

    // 지정된 인덱스의 슬라이드를 화면에 보여주는 함수
    function showSlide(index) {
        slides.forEach((slide, i) => {
            slide.style.transform = `translateX(${100 * (i - index)}%)`; // 슬라이드 이동을 통해 보여줌
        });
    }

    // 다음 슬라이드로 이동하는 함수
    function nextSlide() {
        currentSlide = (currentSlide + 1) % slides.length; // 다음 슬라이드 인덱스 계산
        showSlide(currentSlide); // 다음 슬라이드 보여주기
    }

    setInterval(nextSlide, 4000); // 4초마다 다음 슬라이드로 자동 이동

    // 클릭 시 뉴스 내용을 보여주는 기능
    slides.forEach(slide => {
        slide.addEventListener('click', function() {
            const content = this.getAttribute('data-news-content'); // 클릭한 슬라이드의 데이터 속성에서 뉴스 내용을 가져옴
            const newsContentDiv = document.querySelector('.news-content'); // 뉴스 내용을 보여줄 요소를 가져옴
            newsContentDiv.textContent = content; // 뉴스 내용을 요소에 설정
            newsContentDiv.style.display = 'block'; // 뉴스 내용 요소를 화면에 보여줌
        });
    });

    // 네비게이션 링크에 대한 부드러운 스크롤 기능
    const navLinks = document.querySelectorAll('nav ul li a');

    navLinks.forEach(link => {
        link.addEventListener('click', function(e) {
            e.preventDefault(); // 기본 클릭 이벤트를 취소
            const targetId = this.getAttribute('href').split('.html')[0]; // 클릭된 링크의 대상 섹션 ID를 가져옴
            const targetSection = document.querySelector(`section.${targetId}`); // 대상 섹션 요소를 가져옴
            if (targetSection) {
                targetSection.scrollIntoView({ behavior: 'smooth' }); // 대상 섹션으로 부드러운 스크롤로 이동
            } else {
                window.location.href = this.getAttribute('href'); // 대상 섹션이 없으면 링크의 기본 동작을 수행하여 페이지를 이동
            }
        });
    });
});

