// let _PageHeight = document.documentElement.clientHeight,
//     _PageWidth = document.documentElement.clientWidth;
// let _LoadingTop = _PageHeight > 61 ? (_PageHeight - 61) / 2 : 0,
//     _LoadingLeft = _PageWidth > 215 ? (_PageWidth - 215) / 2 : 0;
// let _LoadingHtml = '<div id="loadingDiv" style="height:' + _PageHeight + 'px;"><div class="loading-image" style="left: ' + _LoadingLeft + 'px; top:' + _LoadingTop + 'px;">加载中 (Loading) ...</div></div>';
// document.write(_LoadingHtml);
// document.onreadystatechange = completeLoading;
// function completeLoading() {
//     if (document.readyState === "complete") {
//         let loadingMask = document.getElementById('loadingDiv');
//         loadingMask.parentNode.removeChild(loadingMask);
//     }
// }

$(document).on("turbolinks:load", function () {
  'use strict';
    $('pre code').each(function(i, block) {
        hljs.highlightBlock(block);
    });
  // 编辑器的使用
  $(function () {
    let lan_simditor = "zh-CN";
    Simditor.locale = lan_simditor; //设置中文
    let input_simditor = $(".simditor-input");
    if (input_simditor.length > 0) {
      toolbar = [
        "title",
        "bold",
        "italic",
        "underline",
        "strikethrough",
        "color",
        "|",
        "ol",
        "ul",
        "blockquote",
        "code",
        "table",
        "|",
        "link",
        "image",
        "hr",
        "|",
        "alignment",
        "fullscreen",
      ];
      input_simditor.each(function () {
        let editor = new Simditor({
          textarea: $(this),
          placeholder: "",
          pasteImage: true,
          toolbar: toolbar,
          fileKey: "file",
          allowedAttributes: {
            img: ["src", "alt", "width", "height", "data-non-image"],
          },
          upload: { url: "/documents" },
        });
      });
    }
  });

  //图片点击放大功能
  $(function () {
    let imgEls = $(".editor-content img");
    imgEls.each(function () {
      $(this).wrap(
        "<a href=" +
          $(this).attr("src") +
          " class='zoom-image text-center' data-action='zoom'></a>"
      );
    });
    $("a.zoom-image").fluidbox();
  });
});


function start_pixel() {
  var script = document.createElement('script');
  script.type = 'text/javascript';
  const params_hash = getUrlParams()

  const pixel_id = params_hash["stackadapt_pixel_id"]

  if(pixel_id && pixel_id.length > 0){
      script.innerHTML = "saq('ts', pixel_id, params_hash);"
      document.head.appendChild(script);
  }
};


function getUrlParams(){
  let search_params = window.location.search
  let params_hash = {};
  new URLSearchParams(search_params.slice(1)).forEach((val, key) => {
    params_hash[key] = val;
  });
  return params_hash
}

