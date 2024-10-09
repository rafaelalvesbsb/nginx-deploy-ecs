window.onload = function() {
    const img = document.querySelector('img');
    let direction = 1;

    setInterval(() => {
        let currentX = img.offsetLeft;
        img.style.left = (currentX + (5 * direction)) + 'px';

        if (currentX > 300 || currentX < 0) {
            direction *= -1;
        }
    }, 100);
};
