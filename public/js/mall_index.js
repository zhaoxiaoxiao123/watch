var play = document.querySelector(".column .video-menu .icon-icon_play");
play.onclick = function () {
  var video = document.querySelector(".column .tv-block-video>video");
  var logo = document.querySelector(".column .tv-block-video>.ykplayer-poster-logo");
  if (video.paused) {
    video.play();
    logo.style.display = "none";
  } else { 
    video.pause();
  }
}

function ajax() { 
  let xhr =new XMLHttpRequest();
      xhr.onreadystatechange=function()
      {
          if (xhr.readyState==4 && xhr.status==200)
          {
            let arr = JSON.parse(xhr.responseText);
            console.log(arr);
            let str = `<div class="block-collection-top row no-gutters">
            <div class="col-md-4 col-sm-6 col-xs-6">
          <div class="list bg-white">
            <div class="img">
              <a href="mall_list.html?f_id=${arr[0].fid}">
                <img src="img/mall_index/${arr[0].fpic}" class="w-100">
              </a>
            </div>
            <div class="title">
              <a href="mall_list.html?f_id=${arr[0].fid}">
                <b>${arr[0].fname}</b>
                <br>
                ${arr[0].fdes}
                <br>
                <br>
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 col-xs-6">
          <div class="list bg-white">
            <div class="img">
              <a href="mall_list.html?f_id=${arr[1].fid}">
                <img src="img/mall_index/${arr[1].fpic}" class="w-100">
              </a>
            </div>
            <div class="title">
              <a href="mall_list.html?f_id=${arr[1].fid}">
                <b>${arr[1].fname}</b>
                <br>
                ${arr[1].fdes}
                <br>
                <br>
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-sm-12 col-xs-12">
          <div class="list bg-white w-100">
            <div class="img">
              <a href="mall_list.html?f_id=${arr[2].fid}">
                <img src="img/mall_index/${arr[2].fpic}" class="w-100">
              </a>
            </div>
            <div class="title">
              <a href="mall_list.html?f_id=${arr[2].fid}">
                <b>${arr[2].fname}</b>
                <br>
                ${arr[2].fdes}
                <br>
                <br>
              </a>
            </div>
          </div>
        </div>
        </div>
        <div class="home-bottom-set row no-gutters">
        <div class="left col col-xs-12 col-sm-12 col-lg-4">
          <div class="list bg-white">
            <div class="img">
              <a href="javascript:;">
                <img src="img/mall_index/select_4.jpg" class="w-100">
              </a>
            </div>
            <div class="title">
              <a href="javascript:;">
                <b>送给他</b>
                <br>
                型男本色，戴出潮流风尚
                <br>
                <br>
              </a>
            </div>
          </div>
        </div>
        <div class="right col col-xs-12 col-sm-12 col-lg-8">
          <div class="row no-gutters">
            <div class="col-6">
              <div class="list bg-white">
                <div class="img">
                  <a href="javascript:;">
                    <img src="img/mall_index/${arr[4].fpic}" class="w-100">
                  </a>
                </div>
                <div class="title">
                  <a href="javascript:;">
                    <b>${arr[4].fname}</b>
                    <br>
                    ${arr[4].fdes} 
                    <br>
                    <br>
                  </a>
                </div>
              </div>
            </div>
            <div class="col-6">
              <div class="list bg-white">
                <div class="img">
                  <a href="mall_list.html?f_id=${arr[5].fid}">
                    <img src="img/mall_index/${arr[5].fpic}" class="w-100">
                  </a>
                </div>
                <div class="title">
                  <a href="mall_list.html?f_id=${arr[5].fid}">
                    <b>${arr[5].fname}</b>
                    <br>
                    ${arr[5].fdes}
                    <br>
                    <br>
                  </a>
                </div>
              </div>
            </div>
          </div>
          <div class="row no-gutters">
            <div class="col-12">
              <div class="list bg-white">
                <div class="img">
                  <a href="javascript:;">
                    <img src="img/mall_index/${arr[6].fpic}" class="w-100">
                  </a>
                </div>
                <div class="title">
                  <a href="javascript:;">
                    <b>${arr[6].fname}</b>
                    <br>
                    ${arr[6].fdes} 
                    <br>
                    <br>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>`;
            list.innerHTML=str;
          }
      }
      xhr.open("get",'/list',true);
      xhr.send();
}



