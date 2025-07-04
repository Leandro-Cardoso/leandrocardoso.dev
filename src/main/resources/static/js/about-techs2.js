document.addEventListener('DOMContentLoaded', () => {

    const techsContainer = document.querySelector('.techs');
    const techItems = techsContainer.querySelectorAll('li');
    const totalItems = techItems.length;

    if (totalItems === 0) {
        return;
    }

    function adjustGridColumns() {

        const containerWidth = techsContainer.offsetWidth;
        const minItemWidth = 150;
        const gapStyle = getComputedStyle(techsContainer).gap;
        let gap = 0;

        if (gapStyle) {
            const gapParts = gapStyle.split(' ');
            gap = parseFloat(gapParts[0]) || 0;
        }

        let maxPossibleColumns = Math.floor((containerWidth + gap) / (minItemWidth + gap));
        maxPossibleColumns = Math.max(1, maxPossibleColumns);
        let optimalColumns = maxPossibleColumns;
        let minRemainder = totalItems % maxPossibleColumns;

        for (let numCols = maxPossibleColumns; numCols >= 1; numCols--) {

            console.log(`Testando numCols: ${numCols}`);

            if (numCols * (minItemWidth + gap) - gap > containerWidth) {
                continue;
            }

            const currentRemainder = totalItems % numCols;

            console.log(`  Current Remainder for ${numCols} cols: ${currentRemainder}`);

            if (currentRemainder < minRemainder ||
               (currentRemainder === minRemainder && numCols < optimalColumns)) {
                minRemainder = currentRemainder;
                optimalColumns = numCols;

                console.log(`  --> OptimalColumns atualizado para: ${optimalColumns} com Remainder: ${minRemainder}`);
            }
            else {
                console.log(`  --> Mantendo optimalColumns: ${optimalColumns} (currentRemainder: ${currentRemainder} >= minRemainder: ${minRemainder})`);
            }

        }

        techsContainer.style.gridTemplateColumns = `repeat(${optimalColumns}, 1fr)`;

        console.log(`Largura Container: ${containerWidth}px, Total Itens: ${totalItems}, Gap: ${gap}px`);
        console.log(`Max Colunas Possíveis: ${maxPossibleColumns}, Colunas Otimizadas: ${optimalColumns}, Resto: ${minRemainder}`);
    }

    adjustGridColumns();

    let resizeTimeout;

    window.addEventListener('resize', () => {
        clearTimeout(resizeTimeout);
        resizeTimeout = setTimeout(adjustGridColumns, 100);
    });

});
