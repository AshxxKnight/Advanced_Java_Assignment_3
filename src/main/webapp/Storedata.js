const dataTable = document.querySelector("tbody");

addEventListener("submit", (e) => {
    e.preventDefault();

    const Title = document.querySelector("input[name='name']");
    const Quantity = document.querySelector("input[name='quantity']");
    const Size = document.querySelector("input[name='size']");
    const Image = document.querySelector("input[name='image']");

    const td1 = document.createElement('td');
    const td2 = document.createElement('td');
    const td3 = document.createElement('td');
    const td4 = document.createElement('td');
    const td5 = document.createElement('td');
    //const td6 = document.createElement('td');

    const title = document.createElement('p');
    title.append(`${Title.value}`);

    const quantity = document.createElement('p');
    quantity.append(`${Quantity.value}`);

    const size = document.createElement('p');
    size.append(`${Size.value}`);
	
	var i = 1;
	
	td1.append(i);
	td1.setAttribute("class","td1");
    
    i++;
    
    td2.append(title);
    td2.setAttribute("class", "td2")

    td3.append(quantity);
    td3.setAttribute("class", "td3")

    td4.append(size);
    td4.setAttribute("class", "td4")


    const image = document.createElement('img');
    if (Image.value) {
        image.setAttribute("src", `${Image.value}`);
    } else {
        image.setAttribute("src", `default-face.jpg`);
    }


    td5.append(image);
    td5.setAttribute("class", "td5")

    const tr = document.createElement("tr");
    
    
    
    tr.append(td1);
    tr.append(td2);
    tr.append(td3);
    tr.append(td4);
    tr.append(td5);
    //tr.append(td6);

    dataTable.append(tr);
});