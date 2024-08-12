async function obtainProduct(){
let url = "https://api.mercadolibre.com/sites/MLU/search?category=MLU1144";
let response = await fetch(url);
let data = response.json();
let product = data.results;
return product;
console.log(product);

}


function getProduct(){

};

window.onload = async ()=>{

let obtain = await obtainProduct();
console.log();



};