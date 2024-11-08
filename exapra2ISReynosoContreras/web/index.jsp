<%@ include file="includes/head.jsp" %>

<div class="max-w-md mx-auto my-8 bg-white shadow-md rounded-lg p-6">
    <h1 class="text-2xl font-bold mb-4">Sistema de Ventas</h1>

    <form id="sales-form" class="space-y-4">
        <div>
            <label for="product-name" class="block font-medium mb-1">Nombre del Producto</label>
            <input type="text" id="product-name" name="product-name" class="w-full border border-gray-300 rounded-md py-2 px-3 focus:outline-none focus:ring focus:border-blue-500" required>
        </div>

        <div>
            <label for="product-price" class="block font-medium mb-1">Precio</label>
            <input type="number" id="product-price" name="product-price" class="w-full border border-gray-300 rounded-md py-2 px-3 focus:outline-none focus:ring focus:border-blue-500" step="0.01" required>
        </div>

        <div>
            <label for="product-quantity" class="block font-medium mb-1">Cantidad</label>
            <input type="number" id="product-quantity" name="product-quantity" class="w-full border border-gray-300 rounded-md py-2 px-3 focus:outline-none focus:ring focus:border-blue-500" min="1" required>
        </div>

        <button type="submit" class="bg-blue-500 hover:bg-blue-600 text-white font-medium py-2 px-4 rounded-md">Calcular Venta</button>
    </form>

    <div id="sales-result" class="mt-6 text-lg font-medium"></div>
</div>

<%@ include file="includes/footer.jsp" %>
