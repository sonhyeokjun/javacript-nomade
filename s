const a = 5;
const b = 7;
const myname = "hyeokjun";

console.log(myname);
console.log(a + b);
console.log(myname + " is son");
// 변수 선언

const amIFat = true;

console.log(amIFat);

const c = null;
console.log(c);
let d;
console.log(d)
;
// null ,undefined, num,boolean

const toBuy = ["apple", "pen", "fruits", 1, undefined, null, true, false];
console.log(toBuy[5]);
toBuy.push("mango");
console.log(toBuy);

// array,list,push


const player = {
  name: "hyeokjun",
  fat: true,
  handsome: false,
  points: 123124,
};
console.log(player);
console.log(player.name);

player.name = "sonny";
player.cool = true;
player.points = player.points + 15;
console.log(player);

// object, (dictionary)


const player = {
  name: "hyeokjun",
  sayhello: function (nameOfPerson) {
    console.log("hello my name is " + nameOfPerson);
  },
};

player.sayhello("hyeokjun");



const calculator = {
  add: function (a, b) {
    console.log(a + b);
  },
  minus: function (a, b) {
    console.log(a - b);
  },
  power: function (a, b) {
    console.log(a ** b);
  },
  divide: function (a, b) {
    console.log(a / b);
  },
};

calculator.add(1, 3);
calculator.minus(5, 2);
calculator.divide(10, 2);
calculator.power(2, 3);




const calculator = {
  add: function (a, b) {
    return a + b;
  },
  minus: function (a, b) {
    return a - b;
  },
  power: function (a, b) {
    return a ** b;
  },
  divide: function (a, b) {
    return a / b;
  },
};

const addResult = calculator.add(1, 2);
const minusResult = calculator.minus(addResult, 3);
const divideResult = calculator.power(addResult, minusResult);
const powerResult = calculator.power(divideResult, addResult);


const age = parseInt(prompt("How old are you?"));
		"15">>15				몇살>>NaN
if (isNaN(age)) {
  alert("please write your number!");
} else if (age <= 18) {
  alert("you are so young to drink beer!");
} else if (age > 50) {
  alert("loose your weight");
} else {
  alert("good!");
}


const age = parseInt(prompt("How old are you?"));

if (isNaN(age) || age < 0) {
  alert("please write your real number!");
} else if (age <= 18) {
  alert("you are so young to drink beer!");
} else if (age > 18 && age <= 50) {
  alert("good drink~");
} else if (age > 50 && age < 80) {
  alert("you should exercise");
}


const title = document.getElementById("title");

title.className = "hope";

console.log(title.className);




const title = document.querySelector("div.hello h1");
const titles = document.querySelector("div.hi h1");

function handleTitle() {
  console.log("title was clicked");
}

function changeColor() {
  titles.style.color = "red";
}

function handleMouseDown() {
  titles.innerText = "oh shit! hello!!";
}

function handleMouseUp() {
  titles.innerText = "don't leave me~";
}

title.addEventListener("click", handleTitle);
titles.addEventListener("click", changeColor);
titles.addEventListener("mousedown", handleMouseDown);
titles.addEventListener("mouseup", handleMouseUp);


const title = document.querySelector("div.hello h1");
const titles = document.querySelector("div.hi h1");

function handleTitle() {
  console.log("title was clicked");
}

function changeColor() {
  titles.style.color = "red";
}

function handleMouseDown() {
  titles.innerText = "oh shit! hello!!";
}

function handleMouseUp() {
  titles.innerText = "don't leave me~";
}

function handleWindowResize() {
  document.body.style.backgroundColor = "tomato";
}

function handleWindowCopy() {
  alert("copier~");
}

title.addEventListener("click", handleTitle);
titles.addEventListener("click", changeColor);
titles.addEventListener("mousedown", handleMouseDown);
titles.addEventListener("mouseup", handleMouseUp);

window.addEventListener("resize", handleWindowResize);
window.addEventListener("copy", handleWindowCopy);




const h1 = document.querySelector("div.hello h1");

function handleClick() {
  const currentColor = h1.style.color;
  let newcolor;

  if (currentColor === "blue") {
    newcolor = "tomato";
  } else {
    newcolor = "blue";
  }
  h1.style.color = newcolor;
}

h1.addEventListener("click", handleClick);











const h1 = document.querySelector("div.hello:first-child h1");

function handleClick() {
  const clickedClass = "clicked";
  if (h1.classList.contains(clickedClass)) {
    h1.classList.remove(clickedClass);
  } else {
    h1.classList.add(clickedClass);
  }
}

h1.addEventListener("click", handleClick);



const h1 = document.querySelector("div.hello:first-child h1");

function handleClick() {
  h1.classList.toggle("clicked");
}
h1.addEventListener("click", handleClick);

// className은 모든걸 교체해버린다. 이전의 class들은 상관하지 않고 말야.
// classList를 사용해야 해. class를 목록으로 작업할 수 있게끔 허용해.
// classList에는 멋진 function들이 있어.
// constains라는 function은 우리가 명시한 class가 HTML element의 class에 포함되어 있는지를 말해줘.
// remove라는 function은 명시한 class name을 제거하고
// add라는 function은 명시한 class name을 추가해.
// function handleTitleClick() {
// const clickedClass = "clicked";
// if(h1.classList.contains(clickedClass)) {
// h1.classList.remove(clickedClass);
// } else {
// h1.classList.add(clickedClass);
// }
// }
// 더 좋은 function이 존재한다. toggle function은 class name이 존재하는지 확인한다.
// class name이 존재하면 toggle은 class name을 제거하고, class name이 존재하지 않으면 toggle은 class name을 추가한다.
// function handleTitleClick() {
// h1.classList.toggle("clicked");
// }
// 한번만 적기 때문에 const도 필요 없다. toggle은 버튼같은거다. 켜고끄고.








const loginInput = document.querySelector("#Login-form input");
const loginButton = document.querySelector("#Login-form button");

function onClickHandle() {
  console.log(loginInput.value);
}

// loginButton.addEventListener("click", onClickHandle);
// 든 것은 HTML에서 시작되어야 함. HTML에서 작성하고 자바스크립트로 기능을 구현.
// 먼저, HTML 코드 작성하기
// 1. 사용자가 이름을 작성할 수 있도록 input 태그를 작성한다.

// 안에 텍스트를 넣을 거니까, type="text"해주고, 안에 미리 작성할 말은 placeholder 안에 써주기
// 2. 그리고 옆에 버튼을 만든다.
// Log In
// 3. div태그로 위의 것들 묶어주고, id="login-form"을 해준다.
// 왜 div태그로 묶는지 확실히는 모르겠지만, 내 생각에는 둘을 묶은 다음, 저 id를 통해서
// 자바스크립트에서 내가 원하는 태그들을 쉽게 찾기 위해서 묶어주는 것 같음.

// input 안에 뭔가를 작성하고 로그인 버튼을 누르면 저장해야 되니까
// 자바스크립트로 그 기능 구현하기

// 그냥 html 태그를 가져올 수 없으니까 변수 안에 넣고 거기서 텍스트 받기

// 1. const loginInput = document.querySelector("#login-form input");
// const loginButton = document.querySelector("#login-form button");

// document 안에서 찾기. id="login-form"인 곳에서 input요소를 loginInput 안에 넣어주기

// 2. 버튼을 클릭하면, 내가 작성한 값을 콘솔에 보여주는 기능

// loginButton.addEventListener("click, onLoginBtnClick);

// 3. 함수 만들기
// function onLoginBtnClick(){
// console.log(loginInput.value);
// }

// input의 내용을 가져오려면 value라는 property를 찾아봐야 됨





const loginInput = document.querySelector("#Login-form input");
const loginButton = document.querySelector("#Login-form button");

function onClickHandle() {
  const value = loginInput.value;
  if (value === "") {
    alert("please write something!");
  } else if (value.length > 15) {
    alert("it's too long");
  }
}
loginButton.addEventListener("click", onClickHandle);



<input type="text" maxlength="15" placeholder="What is your name?" required />

/태그의 required 속성은 폼 데이터(form data)가 서버로 제출되기 전 반드시 채워져 있어야 하는 입력 필드를 명시합니다.
/required 속성이 제대로 동작하는 요소의 type 속성값은 다음과 같습니다.
/- checkbox, date, email, file, number, password, pickers, radio, search, tel, text, url
/required 속성은 불리언(boolean) 속성입니다.
/불리언 속성은 해당 속성을 명시하지 않으면 속성값이 자동으로 false 값을 가지게 되며, 명시하면 자동으로 true 값을 가지게 됩니다.
/input 안에 required, max length등의 조건을 trigger하기 위해서는 div안에서는 안되고 form안에 있어야한다.
/요약 : JavaScript에서 구현하는 대신 할 수 있다면 HTML의 기본 속성을 최대한 이용하기






const loginForm = document.querySelector("#Login-form");
const loginInput = document.querySelector("#Login-form input");

function handleSubmit(event) {
  event.preventDefault();
  console.log(loginInput.value);
}

// loginForm.addEventListener("submit", handleSubmit);

// 제 나름대로 해석한건데 잘못된 부분 있다면 지적부탁드리겠습니다!! 😂
// (개인적으로 argument라는 말보다 parameter가 입에 더 붙어서 바꿔서 말했습니당ㅎ)

// submit 됐다고 함수를 그냥 실행하는 것이 아님. 니꼬가 거짓말 쳤음.
// 실제로는 어떠한 파라미터(인자)를 넣어주고 그제서야 실행되는 것임.
// 그렇다면 함수안에 들어가는 파라미터는 무엇인가? 내가 만든적도 없는디?


// 그 파라미터 정체는 바로! event
// 사실 tomato라고 해도 되고 그냥 공간만 할당해주면 됨.
// 그 공간에 알아서 정보까지 다 채워줌 (개꿀)
// 어떤 정보냐면 지금 막 벌어진 상황에 대한 기본정보를 갖고 있다. (써밋, 클릭 등 event가 벌어졌을때)


// 그리고 event안에는 preventDefault라는게 있는데,
// 이것은 브라우저가 submit 했을 때 새로고침이 안 되게 막는 역할 등을 한다.
// 이거 찾아서 끄고 켜고 내 입맛대로 하자!
// 기본 default기능 끄려고 우리는 귀찮게 event라는 파라미터 공간을 만들었던 것이다!!





const loginForm = document.querySelector("#Login-form");
const loginInput = document.querySelector("#Login-form input");

const link = document.querySelector("a");

function handleSubmit(event) {
  event.preventDefault();
  console.log(loginInput.value);
}

function handleLinkClick(event) {
  event.preventDefault();
  console.dir(event);
}

loginForm.addEventListener("submit", handleSubmit);
link.addEventListener("click", handleLinkClick);


// addEventListener 안에 있는 함수는 직접 실행하지 않는다
// 브라우저가 실행시켜주고
// 브라우저에서 해당 이벤트에 대한 정보 즉, object를 가지게 된다.
// addEventListener의 함수에서 object에 대한 자리만 할당해주면
// 해당 이벤트가 발생시킨 정보들에 대한 object들을 볼 수 있다!
// 이때 해당 이벤트가 가진 기본 Default값을 발생시키지 않기 하게 위해선 preventDefault를 이용하여 막을 수 있다!

