window.onload = async () => {

    const products = await obtainProduct();
    showProduct(products);

};



async function obtainProduct() {

    // funcion que devuelve el json con los productos  de la API //

    let url = "https://api.mercadolibre.com/sites/MLU/search?category=MLU1144";
    let response = await fetch(url);
    let data = await response.json();
    let product = data.results;
    return product;

}


function showProduct(products) {
    let tableBody = document.getElementById("productTable");

    tableBody.innerHTML = "";

    products.forEach(product => {
        let row = document.createElement("tr");
        let idCell = document.createElement("td");
        idCell.textContent = product.id;
        row.appendChild(idCell);

        let titleCell = document.createElement("td");
        titleCell.textContent = product.title;
        row.appendChild(titleCell);

        let priceCell = document.createElement("td");
        priceCell.textContent = `$${product.price}`;
        row.appendChild(priceCell);

        let imageCell = document.createElement("td");
        let img = document.createElement("img");
        img.src = product.thumbnail;
        img.alt = product.title;
        img.width = 50;  // para ajustar el tamaño de la imagen //
        imageCell.appendChild(img);
        row.appendChild(imageCell);

        let buttonCell = document.createElement("tr");
        let button = document.createElement("button");
        button.textContent = "Enviar";  // establece el texto del boton  //
        button.width = 50;  // para ajustar el tamaño de el boton //
        buttonCell.appendChild(button);
        row.appendChild(buttonCell);

        tableBody.appendChild(row); 
    });
};