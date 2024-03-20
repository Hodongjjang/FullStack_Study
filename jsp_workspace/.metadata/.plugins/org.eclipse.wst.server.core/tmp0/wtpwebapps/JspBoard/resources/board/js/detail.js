const modiBtn = document.querySelector('#modiBtn');
const delBtn = document.querySelector('#delBtn');
const delBtn2 = document.querySelector('#delBtn2');
const delForm = document.querySelector('#delForm');
const hiddenPassword = document.querySelector('#hiddenPassword')
const inputPassword = document.querySelector('#inputPassword');

const getHashedPassword = password => sha256(password).toUpperCase();
const checkHash = () => boardPassword === getHashedPassword(inputPassword.value);

modiBtn.addEventListener('click', (e)=>{
   // = sha256(inputPassword.value);
   
   //console.log('boardPassword',boardPassword); -> 대문자로 나왔고
   //console.log('inputPassword', inputPassword.value); -> 소문자로 나왔다 그래서 sha256().toUpperCase()한것
   //console.log('inputHashed:', sha256(inputPassword.value));
   // ->여기서 추출된 결과를 보관해야한다 -> inputHashed 매게변수로 뺏다가.. -> checkHash 만듦
   
   if (checkHash()) {
      location.href = './modify?board_id=' + board_id;
   } else{
      alert('비밀번호가 틀렸습니다');
   }
   
});

delBtn.addEventListener('click', (e) =>{
	if(checkHash()){
		hiddenPassword.value = getHashedPassword(inputPassword.value);
		delForm.submit();
	} else {
		alert('비밀번호가 틀렸습니다')
	}
});

delBtn2.addEventListener('click', (e) =>{
	const popup =open('./delete/open', '_blank', 'width=500,height=350');
	console.log(delBtn2);
});
