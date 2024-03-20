const quiz2_1 = document.querySelector('#quiz2_1');
const quiz2_2 = document.querySelector('#quiz2_2');
const modifyFruitId = document.querySelector('#modify-fruit-id'); 
const quiz2_3 = document.querySelector('#quiz2_3');

quiz2_1.addEventListener('click', (e) => {
    const xhttp = new XMLHttpRequest();

    const newFruit ={
        fruit_name: 'Dragon Fruit',
        fruit_price: 3500,
        fruit_grade: 'A',
        country_id: 'BE',
    };

    xhttp.addEventListener('readystatechange', (e) =>{
        if(xhttp.readyState == 4 && xhttp.status == 200){
            console.log('insert succesess');
        }
    });

    xhttp.open('POST', './rest/fruit');
    xhttp.setRequestHeader('content-type', 'application/json');
    xhttp.send(JSON.stringify(newFruit));
});

quiz2_2.addEventListener('click', (e) => {
    const xhttp = new XMLHttpRequest();

    const fid = modifyFruitId.value;

    if(fid === null || fid == '' || fid < 0){
        alert('ID를 제대로 입력해주세요');	
        return;
    }

    const modifyFruit = {
        fruit_id: fid,
        fruit_name: 'Strawberry',
        fruit_price: 700,
        fruit_grade: 'C+',
        country_id: 'AR'
    };

    xhttp.addEventListener('readystatechange', (e) =>{
        if(xhttp.readyState == 4 && xhttp.status == 200){
            console.log('Update Compete!');
        }

    });
    xhttp.open('PUT', `./rest/fruit/${fid}`);
    xhttp.setRequestHeader('content-type', 'application/json');
    xhttp.send(JSON.stringify(modifyFruit));
});