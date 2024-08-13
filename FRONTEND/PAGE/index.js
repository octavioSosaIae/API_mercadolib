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
        
        row.innerHTML = `
        <td>${product.id}</td>
        <td>${product.title}</td>
        <td>${product.price}</td>
        <td><img src="${product.thumbnail}"></td>
        `;

        let button = document.createElement("button");
        tableBody.appendChild(row);
      row.appendChild(button);
      button.innerHTML = "enviar";
      button.onclick=()=>{
        sendDB(product);

      };

    });

};

function sendDB(product){

console.log(product);
}