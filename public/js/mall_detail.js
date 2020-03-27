// ajax 数据请求
function ajax() { 
  let arr = window.location.search.substr(1).split("=");  //获取url传来的参数
  let $lid =arr[1]
  let xhr = new XMLHttpRequest();
  xhr.onreadystatechange=function()
  {
      if (xhr.readyState==4 && xhr.status==200)
      {
        let arr = JSON.parse(xhr.responseText);
        console.log(arr)
        let str =`<div class="detail flex justify-around bg-white">
        <div class="img flex">
          <div>
            <img src="img/mall_detail/${arr[0].dspic}" alt="" class="w-100">
          </div>
          <div>
            <img src="img/mall_detail/${arr[0].dpic}" alt="" class="w-100">
          </div>
        </div>
        <div class="desc">
          <h3>${arr[0].d_title}</h3>
          <p>${arr[0].d_subtitle}</p>
          <div>
            <span>￥${arr[0].dprice}</span>
            <div>
              <span>数量</span>
              <button>-</button>
              <span>${arr[0].dnum}</span>
              <button>+</button>
            </div>
            <button>加入购物车</button>
          </div>
          <div>分享+</div>
          <div>CHARCOLAZING (SUOB404) 为深灰色表盘搭配 Swatch Solar Spectrum 玻璃罩，并采用金属感哑光表带，将两大经典设计巧妙融为一体</div>
        </div>
      </div>
      <div class="more bg-white p-5 mt-5">
        <h3>更多信息</h3>
        <div class="more-news flex">
          <div class="flex flex-column">
            <span>系列:</span>
            <span>功能:</span>
            <span>机芯颜色:</span>
            <span>Water Prof Meter:</span>
            <span>颜色:</span>
            <span>宽/毫米:</span>
            <span>厚/毫米:</span>
            <span>高/毫米:</span>
            <span>表带颜色:</span>
            <span>表带材质:</span>
            <span>表圈材质:</span>
            <span>表扣:</span>
            <span>表盘颜色:</span>
            <span>表壳颜色:</span>
            <span>表壳形状:</span>
            <span>表壳材料:</span>
          </div>
          <div class="flex flex-column">
            <span>${arr[0].d_series}</span>
            <span>${arr[0].d_fun}</span>
            <span>${arr[0].d_ncolor}</span>
            <span>${arr[0].d_meter}</span>
            <span>${arr[0].d_color}</span>
            <span>${arr[0].d_width}</span>
            <span>${arr[0].d_thick}</span>
            <span>${arr[0].d_height}</span>
            <span>${arr[0].d_bcolor}</span>
            <span>${arr[0].d_bmate}</span>
            <span>${arr[0].d_cmate}</span>
            <span>${arr[0].d_button}</span>
            <span>${arr[0].d_dial}</span>
            <span>${arr[0].d_ccolor}</span>
            <span>${arr[0].d_cshape}</span>
            <span>${arr[0].d_case_meta}</span>
          </div>
        </div>
      </div>
      <div class="browse bg-white p-5 mt-5">
        <h3>浏览商品</h3>
        <div class="flex">
          
        </div>
      </div>`;
        
        detail.innerHTML=str;
        
      }
  }
  xhr.open("get",'/mall_detail/'+$lid,true);
  xhr.send();
}