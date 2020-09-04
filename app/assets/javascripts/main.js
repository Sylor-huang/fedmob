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