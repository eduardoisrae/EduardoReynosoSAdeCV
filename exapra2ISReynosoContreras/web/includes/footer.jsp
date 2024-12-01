<script>
    document.addEventListener("DOMContentLoaded", function() {
        const form = document.getElementById('sales-form');
        const resultsDiv = document.getElementById('sales-result');

        form.addEventListener('submit', (event) => {
            event.preventDefault();

            const productName = document.getElementById('product-name').value.trim();
            const productPrice = parseFloat(document.getElementById('product-price').value);
            const productQuantity = parseInt(document.getElementById('product-quantity').value);

            if (!productName || isNaN(productPrice) || isNaN(productQuantity)) {
                resultsDiv.textContent = "Por favor, complete todos los campos correctamente.";
                return;
            }

            const totalSales = productPrice * productQuantity;
            resultsDiv.textContent = `La venta de ${productQuantity} unidades de "${productName}" a $${productPrice.toFixed(2)} c/u es de $${totalSales.toFixed(2)}.`;
        });
    });
</script>


</body>
</html>
