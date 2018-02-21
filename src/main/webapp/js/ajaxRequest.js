window.onload= function () {
    setInterval("change()",50);
}
function  change() {
    var i=Math.random();
    //生成随机数避免缓存
    createRequest('/getJson?id='+i);
}
//初始化XmlHttpRequest对象
function  createRequest(url) {
    http_request = false;
    if (window.XMLHttpRequest) {
        http_request = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
        try {
            http_request = new ActiveXObject("Msxml2.XMLHTTP");
        } catch (e) {
            http_request = new ActiveXObject("Microsoft.XMLHTT");
        }
    }
    if (!http_request) {
        alert("不能创建XMLHTTPRequest对象");
        return false;
    }
    //当获取到返回值就提交到getResult函数.
    http_request.onreadystatechange = getResult;
    http_request.open('GET', url, true);
    http_request.send(null);
}

function getResult() {
    if (http_request.readyState == 4) {
        if (http_request.status == 200) {
            //1,获取返回json
            var result = http_request.responseText;
            //2,接下json
            var json = eval("(" + result + ")");
            //3,进行DOM操作
            setContent(json);
        } else {
            alert("您所请求的页面有错误");
        }
    }
}
/**
 * 解析类似{"temperature":20,"co":40}的json
 * {"result":true,
 * @param contents
 */
function setContent(contents) {
    var size = contents.length;
    for (var i=0;i<size;i++){
        var temperature=contents[i].temperature;
        var carbonDioxide=content[i].carbonDioxide;
        var illumination=content[i].illumination;
        alert(temperature);
        alert(carbonDioxide);
        alert(illumination);
    }
}
