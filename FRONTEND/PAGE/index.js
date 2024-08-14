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


function showProduct(products) {        // funcion para mostrar productos en una tabla //
  let tableBody = document.getElementById("productTable");       // llamamos a la tabla por el id //

  tableBody.innerHTML = "";

  products.forEach(product => {
    let row = document.createElement("tr");

    row.innerHTML = `
        <td>${product.title}</td>
        <td><a href="${product.permalink}">visitar la pagina</a></td>
        <td><img src="${product.thumbnail}"></td>
        <td>${product.price}</td>
        `;

    let button = document.createElement("button");
    tableBody.appendChild(row);
    row.appendChild(button);
    button.innerHTML = "Guardar";
    button.onclick = () => {
      sendDB(product);

    };

  });

};

async function sendDB(product) {      //  funcion para mandar la informacion de los productos a el backend  //


  console.log(product);

  let url = "http://localhost/API_mercadolib/BACKEND/CONTROLLERS/controller.php?function=saveProduct";
  let formData = new FormData();

  formData.append("id", product.id);
  formData.append("title", product.title);
  formData.append("permalink", product.permalink);
  formData.append("thumbnail", product.thumbnail);
  formData.append("price", product.price);

  let config = {
    method: "POST",
    body: formData

  }
  let response = await fetch(url, config);
  let ret = await response.json();
  return ret;


};



