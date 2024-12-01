<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de Ventas</title>
    <%@ include file="includes/head.jsp" %>
</head>
<body class="bg-gray-100">
    <div class="max-w-md mx-auto my-8 bg-white shadow-md rounded-lg p-6">
        <h1 class="text-2xl font-bold mb-4">Sistema de Ventas</h1>
        
        <form id="sales-form" class="space-y-4">
            <div>
                <label for="product-name" class="block font-medium mb-1">Nombre del Producto</label>
                <input type="text" id="product-name" name="product-name" class="w-full border border-gray-300 rounded-md p-2" required>
            </div>
            <div>
                <label for="product-price" class="block font-medium mb-1">Precio</label>
                <input type="number" id="product-price" name="product-price" class="w-full border border-gray-300 rounded-md p-2" required>
            </div>
            <div>
                <label for="product-quantity" class="block font-medium mb-1">Cantidad</label>
                <input type="number" id="product-quantity" name="product-quantity" class="w-full border border-gray-300 rounded-md p-2" required>
            </div>
            <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded-md">Calcular Venta</button>
        </form>

        <div id="sales-result" class="mt-4 text-lg font-semibold text-gray-700"></div>
    </div>
    
    <%@ include file="includes/footer.jsp" %>
</body>
</html>
