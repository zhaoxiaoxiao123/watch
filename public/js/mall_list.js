
// ajax 数据请求
function ajax() { 
  let arr = window.location.search.substr(1).split("=");  //获取url传来的参数
  let $fid =arr[1]
  let xhr = new XMLHttpRequest();
  xhr.onreadystatechange=function()
  {
      if (xhr.readyState==4 && xhr.status==200)
      {
        let arr = JSON.parse(xhr.responseText);
        console.log(arr);
        title.innerHTML = arr[0].l_title;
        subtitle.innerHTML = arr[0].l_subtitle;
        let str =`<div class="product-item col-sm-8">
        <div class="product-item-info bg-white h-100 w-100">
          <div>
            <h3 class="font-lg font-weight-bold">${arr[0].l_title}</h3>
            <p class="text-main font-md">${arr[0].l_des}</p>
          </div>
          <div>
            <img src="img/list/${arr[0].lpic}" alt="" class="w-100">
            <button id="btn-img">+</button>
          </div>
        </div>
        </div>`;
        for (var i = 1; i < arr.length; i++) { 
          str += `<div class="product-item col-sm-4">
        <div class="product-item-info1 bg-white h-100 flex flex-column justify-around">
          <div class="pt-4">
            <a href="mall_detail.html?l_id=${arr[i].lid}">
              <img src="img/list/${arr[i].lpic}" alt="" class="w-100" id="img">
            </a>
          </div>
          <div class="text-center">
            <a href="mall_detail.html?l_id=${arr[i].lid}" class="text-second font-weight-bold" id="title">${arr[i].lname}</a>
            <span class="font-weight-bold" id="price">￥${arr[i].lprice}</span>
          </div>
        </div>
        </div>`;
        }
        
        product.innerHTML=str;
        
      }
  }
  xhr.open("get",'/mall_list/'+$fid,true);
  xhr.send();
}

// 下拉菜单——button
var btns = document.getElementsByClassName("btn1");
for (var item of btns) {  
  item.onclick = function () { 
    if (this.className == "open") {
      this.className = "";
      this.innerHTML = "+";
      this.style.color = "black";
      this.previousElementSibling.style.color = "black";
    } else { 
      openBtn = document.querySelector("button.open");
      if (openBtn!=null) { 
        openBtn.className = "";
        openBtn.innerHTML = "+";
      }
      this.className = "open";
      this.innerHTML = "-";
      this.style.color = "red";
      this.previousElementSibling.style.color = "red";
    }
  }
}
// 图片信息查看
var btnImg = document.getElementById("btn-img");
console.log(btnImg);
btnImg.onclick = function () { 
  let info = document.getElementsByClassName("product-item-info")[0];
  if (this.className == "open") {
    this.className = "";
    this.innerHTML = "+";
    info.style.opacity = 0;
  } else { 
    this.className = "open";
    this.innerHTML = "-";
    info.style.opacity = 1;
  }
}





