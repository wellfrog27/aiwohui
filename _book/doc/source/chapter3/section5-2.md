# 数据导出服务

<div class="help-center-list-content">
                    <h2>数据导出服务及其开通方法</h2>
                    <div class="help-center-list-content-detail"><p>Tongji API即数据导出服务提供给外部站长和客户使用，调用方为外部系统业务端、前端或APP。</p>

<p>开通数据导出服务，百度Tongji API可以为网站接入者提供便捷的获取网站流量数据的通道，从而使网站接入者可向网站账号提供数据分析、运营监控、网站推广等服务。</p>

<p>开通方式：</p>

<p>数据导出服务支持自助开通，登录百度统计，在后台的管理—其它设置——数据导出服务，按照引导说明自行开通。</p>

<p><img src="http://mtj.baidu.com/static/article/image/tongji/%E4%BD%BF%E7%94%A8%E6%8C%87%E5%8D%97/%E7%BB%9F%E8%AE%A1%E8%AE%BE%E7%BD%AE/%E5%85%B6%E5%AE%83%E8%AE%BE%E7%BD%AE-%E5%B7%B2review/%E4%BD%BF%E7%94%A8%E6%8C%87%E5%8D%97_%E7%BB%9F%E8%AE%A1%E8%AE%BE%E7%BD%AE_%E6%95%B0%E6%8D%AE%E5%AF%BC%E5%87%BA%E6%9C%8D%E5%8A%A1%E5%8F%8A%E5%85%B6%E5%BC%80%E9%80%9A%E6%96%B9%E6%B3%95/media/image1.png" width="553" height="360"></p>

<p>需要注意的是，申请开通数据导出服务的站点需要具有一定的账户规模和技术实力（自有网站昨日PV数需大于100）。</p>

<p><img src="http://mtj.baidu.com/static/article/image/tongji/%E4%BD%BF%E7%94%A8%E6%8C%87%E5%8D%97/%E7%BB%9F%E8%AE%A1%E8%AE%BE%E7%BD%AE/%E5%85%B6%E5%AE%83%E8%AE%BE%E7%BD%AE-%E5%B7%B2review/%E4%BD%BF%E7%94%A8%E6%8C%87%E5%8D%97_%E7%BB%9F%E8%AE%A1%E8%AE%BE%E7%BD%AE_%E6%95%B0%E6%8D%AE%E5%AF%BC%E5%87%BA%E6%9C%8D%E5%8A%A1%E5%8F%8A%E5%85%B6%E5%BC%80%E9%80%9A%E6%96%B9%E6%B3%95/media/image2.png" width="553" height="167"></p>
                </div>


<div class="help-center-list-content">
                    <h2>Tongji&nbsp;API&nbsp;使用流程</h2>
                    <div class="help-center-list-content-detail"><p>采用HTTP+Json的方式。所有查询接口均采用GET方法，所有提交接口均采用POST方法。所有请求的输入参数由系统级输入参数和应用级输入参数组成，每个参数值都必须采用UTF-8字符集编码，在发送调用请求时，所有参数都必须进行urlencode编码处理。返回的数据格式为Json。</p>

<p><strong>登陆服务</strong></p>

<blockquote>
  <p>重用统计的登陆服务<a href="https://api.baidu.com/sem/common/HolmesLoginService"><em>https://api.baidu.com/sem/common/HolmesLoginService</em></a></p>

  <p>请求和响应过程包括rsa公钥加密、gzip打包等步骤，具体调用方法由<a href="http://sitecenter.baidu.com/dataapi/file/TongjiApiDemo.zip">Tongji API Demo</a>给出，此外还可参考<a href="http://sitecenter.baidu.com/dataapi/file/JavaDemoClient.zip">Java版登录demo_api-client</a>，与<a href="http://sitecenter.baidu.com/dataapi/file/DrApiFile.pdf">DR-API安全登录使用手册</a>。</p>
</blockquote>

<p><strong>数据服务</strong></p>

<blockquote>
  <p>数据服务地址为<a href="https://api.baidu.com/json/tongji/v1/ReportService"><em>https://api.baidu.com/json/tongji/v1/ReportService</em></a></p>
</blockquote>

<p><strong>调用示例</strong></p>

<p>调用client需要openssl支持，curl示例如下：</p>

<pre class="prettyprint"><code class="language-php hljs "><span class="hljs-variable">$curl</span> = curl_init();
curl_setopt(<span class="hljs-variable">$curl</span>, CURLOPT_URL, <span class="hljs-string">'https://api.baidu.com/json/tongji/v1/ReportService/getData'</span>);
curl_setopt(<span class="hljs-variable">$curl</span>, CURLOPT_SSL_VERIFYPEER, <span class="hljs-number">0</span>);
curl_setopt(<span class="hljs-variable">$curl</span>, CURLOPT_SSL_VERIFYHOST, <span class="hljs-number">1</span>);
curl_setopt(<span class="hljs-variable">$curl</span>, CURLOPT_USERAGENT, <span class="hljs-variable">$_SERVER</span>[<span class="hljs-string">'HTTP_USER_AGENT'</span>]);
curl_setopt(<span class="hljs-variable">$curl</span>, CURLOPT_FOLLOWLOCATION, <span class="hljs-number">1</span>);
curl_setopt(<span class="hljs-variable">$curl</span>, CURLOPT_AUTOREFERER, <span class="hljs-number">1</span>);
curl_setopt(<span class="hljs-variable">$curl</span>, CURLOPT_HTTPHEADER, <span class="hljs-keyword">array</span>(<span class="hljs-string">'UUID: '</span>.UUID, <span class="hljs-string">'USERID: '</span>.<span class="hljs-variable">$ucid</span>, <span class="hljs-string">'Content-Type:  data/json;charset=UTF-8'</span>));
curl_setopt(<span class="hljs-variable">$curl</span>, CURLOPT_POST, <span class="hljs-number">1</span>);
curl_setopt(<span class="hljs-variable">$curl</span>, CURLOPT_POSTFIELDS, $ postData);
curl_setopt(<span class="hljs-variable">$curl</span>, CURLOPT_TIMEOUT, <span class="hljs-number">30</span>);
curl_setopt(<span class="hljs-variable">$curl</span>, CURLOPT_HEADER, <span class="hljs-number">0</span>);
curl_setopt(<span class="hljs-variable">$curl</span>, CURLOPT_RETURNTRANSFER, <span class="hljs-number">1</span>); </code></pre>

<p><strong>系统级输入参数</strong></p>

<p>系统级输入参数通过post数据中的header部分提交。</p>

<hr>

<table>
<thead>
<tr>
  <th>参数名</th>
  <th>参数类型</th>
  <th>是否必须</th>
  <th>描述</th>
</tr>
</thead>
<tbody><tr>
  <td>username</td>
  <td>string</td>
  <td>是</td>
  <td>用户名</td>
</tr>
<tr>
  <td>password</td>
  <td><span>string</span></td>
  <td><span>是</span></td>
  <td><span class="TextRun SCX211938237"><span class="NormalTextRun SCX211938237">通过登陆服务获取到的</span></span><span class="TextRun SCX211938237"><span class="NormalTextRun SCX211938237">st</span></span><span class="TextRun SCX211938237"><span class="NormalTextRun SCX211938237">票据</span></span></td>
</tr>
<tr>
  <td>token</td>
  <td><span>string</span></td>
  <td><span>是</span></td>
  <td><span class="TextRun SCX160818729"><span class="NormalTextRun SCX160818729">申请获取到的</span></span><span class="TextRun SCX160818729"><span class="NormalTextRun SCX160818729">token</span></span></td>
</tr>
<tr>
  <td>account_type</td>
  <td>uint</td>
  <td>是</td>
  <td><span class="TextRun SCX73753517"><span class="NormalTextRun SCX73753517">账户类型，</span></span><span class="TextRun SCX73753517"><span class="NormalTextRun SCX73753517">如</span></span><span class="TextRun SCX73753517"><span class="NormalTextRun SCX73753517"> </span></span><span class="EOP SCX73753517">&nbsp;</span><span class="TextRun SCX73753517"><span class="NormalTextRun SCX73753517">ZhanZhang:1,FengChao:2,Union:3,Columbus:4</span></span></td>
</tr>
</tbody></table>


<hr>

<p><strong>响应格式</strong></p>

<p>响应数据由header和body两部分构成：</p>

<p>1.header是api.baidu.com提供的头数据，包括desc, failures, oprs, succ, <br>
oprtime, quota, rquota, status等；</p>

<p>2.body为Tongji API提供的内容数据，具体参见各个接口的返回参数定义。</p>

<p><strong>返回示例</strong></p>

<pre class="prettyprint"><code class=" hljs json">{
    "<span class="hljs-attribute">header</span>": <span class="hljs-value">{
        "<span class="hljs-attribute">desc</span>": <span class="hljs-value"><span class="hljs-string">"success"</span></span>,
        "<span class="hljs-attribute">failures</span>": <span class="hljs-value">[]</span>,
        "<span class="hljs-attribute">oprs</span>": <span class="hljs-value"><span class="hljs-number">1</span></span>,
        "<span class="hljs-attribute">succ</span>": <span class="hljs-value"><span class="hljs-number">1</span></span>,
        "<span class="hljs-attribute">oprtime</span>": <span class="hljs-value"><span class="hljs-number">0</span></span>,
        "<span class="hljs-attribute">quota</span>": <span class="hljs-value"><span class="hljs-number">200000</span></span>,
        "<span class="hljs-attribute">rquota</span>": <span class="hljs-value"><span class="hljs-number">200000</span></span>,
        "<span class="hljs-attribute">status</span>": <span class="hljs-value"><span class="hljs-number">0</span>
    </span>}</span>,
    "<span class="hljs-attribute">body</span>": <span class="hljs-value">{
        "<span class="hljs-attribute">data</span>": <span class="hljs-value">[
            {
                "<span class="hljs-attribute">list</span>": <span class="hljs-value">[
                    {
                        "<span class="hljs-attribute">status</span>": <span class="hljs-value"><span class="hljs-number">0</span></span>,
                        "<span class="hljs-attribute">create_time</span>": <span class="hljs-value"><span class="hljs-string">"2010-01-01 01:00:00"</span></span>,
                        "<span class="hljs-attribute">domain</span>": <span class="hljs-value"><span class="hljs-string">"tongji.baidu.com"</span></span>,
                        "<span class="hljs-attribute">site_id</span>": <span class="hljs-value"><span class="hljs-number">12345</span></span>,
                        "<span class="hljs-attribute">sub_dir_list</span>": <span class="hljs-value">[]
                    </span>},
                    {
                        "<span class="hljs-attribute">status</span>": <span class="hljs-value"><span class="hljs-number">0</span></span>,
                        "<span class="hljs-attribute">create_time</span>": <span class="hljs-value"><span class="hljs-string">"2010-01-02 01:00:00"</span></span>,
                        "<span class="hljs-attribute">domain</span>": <span class="hljs-value"><span class="hljs-string">"www.baidu.com"</span></span>,
                        "<span class="hljs-attribute">site_id</span>": <span class="hljs-value"><span class="hljs-number">12346</span></span>,
                        "<span class="hljs-attribute">sub_dir_list</span>": <span class="hljs-value">[]
                    </span>},
                ]
            </span>}
        ]
    </span>}
</span>} </code></pre>

<p><span id="_Toc376781829" class="anchor"></span><strong>错误响应</strong></p>

<p>错误响应由header中failures定义的，包括code和message两个信息，这两个参数只在异常响应的输出中出现，正常响应的输出不会出现这两个参数。</p>

<p><span id="_Toc376781830" class="anchor"></span><strong>错误码定义</strong></p>

<hr>

<table>
<thead>
<tr>
  <th>错误码</th>
  <th>错误信息</th>
  <th>描述</th>
</tr>
</thead>
<tbody><tr>
  <td><span>base+1</span></td>
  <td><span>Unknown Error</span></td>
  <td><span>未知或其他错误</span></td>
</tr>
<tr>
  <td><span>base+2</span></td>
  <td><span>Invalid User</span></td>
  <td><span class="TextRun SCX14709634"> <span class="NormalTextRun SCX14709634">无效用户或尚未接受协议</span></span><span class="EOP SCX14709634">&nbsp;</span></td>
</tr>
<tr>
  <td><span>base+3</span></td>
  <td><span class="TextRun SCX149347313"><span class="NormalTextRun SCX149347313">Invalid&nbsp;</span></span><span class="TextRun SCX149347313"><span class="NormalTextRun SCX149347313">Site</span></span></td>
  <td><span class="TextRun SCX245649985"><span class="NormalTextRun SCX245649985">站点</span></span><span class="TextRun SCX245649985"><span class="NormalTextRun SCX245649985">不存在或者不属于该用户</span></span></td>
</tr>
<tr>
  <td><span>base+4</span></td>
  <td><span>Invalid Parameter</span></td>
  <td><span>参数等校验错误</span></td>
</tr>
</tbody></table>


<p>其中base由api.baidu.com分配；</p>

<p>错误码会随着扩展需求的增加而不断补充。</p>

<hr>

<p><strong>错误返回示例</strong></p>



<pre class="prettyprint"><code class=" hljs json">{
    "<span class="hljs-attribute">header</span>": <span class="hljs-value">{
        "<span class="hljs-attribute">desc</span>": <span class="hljs-value"><span class="hljs-string">"failure"</span></span>,
        "<span class="hljs-attribute">failures</span>": <span class="hljs-value">[
            {
                "<span class="hljs-attribute">code</span>": <span class="hljs-value"><span class="hljs-number">9331</span></span>,
                "<span class="hljs-attribute">message</span>": <span class="hljs-value"><span class="hljs-string">"Invalid Site Or No Permission"</span>
            </span>}
        ]</span>,
        "<span class="hljs-attribute">oprs</span>": <span class="hljs-value"><span class="hljs-number">1</span></span>,
        "<span class="hljs-attribute">succ</span>": <span class="hljs-value"><span class="hljs-number">0</span></span>,
        "<span class="hljs-attribute">oprtime</span>": <span class="hljs-value"><span class="hljs-number">0</span></span>,
        "<span class="hljs-attribute">quota</span>": <span class="hljs-value"><span class="hljs-number">200000</span></span>,
        "<span class="hljs-attribute">rquota</span>": <span class="hljs-value"><span class="hljs-number">200000</span></span>,
        "<span class="hljs-attribute">status</span>": <span class="hljs-value"><span class="hljs-number">2</span>
    </span>}</span>,
    "<span class="hljs-attribute">body</span>": <span class="hljs-value">{}
</span>} </code></pre></div>
                </div>


<div class="help-center-list-content">
                    <h2>如何获取用户的站点列表</h2>
                    <div class="help-center-list-content-detail"><p><span id="_Toc376781833" class="anchor"></span><strong>功能</strong></p>

<p>获取当前用户下的站点和子目录列表，不包括权限站点和汇总网站。</p>

<p><span id="_Toc376781834" class="anchor"></span><strong>接口名称</strong></p>

<p><a href="https://api.baidu.com/json/tongji/v1/ReportService/getSiteList">https://api.baidu.com/json/tongji/v1/ReportService/getSiteList</a> </p>

<p><span id="_Toc376781835" class="anchor"></span><strong>用户相关性</strong></p>

<p>用户相关</p>

<p><span id="_Toc376781836" class="anchor"></span><strong>应用级输入参数</strong></p>

<p>无</p>

<p><span id="_Toc376781838" class="anchor"></span><strong>返回参数</strong></p>

<hr>

<table>
<thead>
<tr>
  <th>参数名</th>
  <th>参数类型</th>
  <th>是否必需</th>
  <th>描述</th>
</tr>
</thead>
<tbody><tr>
  <td>list</td>
  <td><span>array of SiteInfo</span></td>
  <td>是</td>
  <td><span>站点列表</span></td>
</tr>
</tbody></table>


<hr>

<p><strong>SiteInfo结构</strong></p>

<hr>

<table>
<thead>
<tr>
  <th>参数名</th>
  <th>参数类型</th>
  <th>是否必需</th>
  <th>描述</th>
</tr>
</thead>
<tbody><tr>
  <td><span>site_id</span></td>
  <td><span>uint</span></td>
  <td><span>是</span></td>
  <td><span>应用ID</span></td>
</tr>
<tr>
  <td><span>domain</span></td>
  <td><span>string</span></td>
  <td><span>是</span></td>
  <td><span>站点域名</span></td>
</tr>
<tr>
  <td><span>status</span></td>
  <td><span>uint</span></td>
  <td><span>是</span></td>
  <td><span>0：正常；1：暂停</span></td>
</tr>
<tr>
  <td><span>create_time</span></td>
  <td><span>DateTime</span></td>
  <td><span>是</span></td>
  <td><span>日期时间格式，以北京时间表示</span></td>
</tr>
<tr>
  <td><span>sub_dir_list</span></td>
  <td><span>array of SubDirInfo</span></td>
  <td><span>是</span></td>
  <td><span>子目录列表</span></td>
</tr>
</tbody></table>


<hr>

<p><span id="_Toc376781839" class="anchor"></span><strong>SubDirInfo结构</strong></p>

<hr>

<table>
<thead>
<tr>
  <th>参数名</th>
  <th>参数类型</th>
  <th>是否必需</th>
  <th>描述</th>
</tr>
</thead>
<tbody><tr>
  <td><span>sub_dir_id</span></td>
  <td><span>uint</span></td>
  <td>是</td>
  <td><span>子目录ID</span></td>
</tr>
<tr>
  <td><span>name</span></td>
  <td><span>string</span></td>
  <td><span>是</span></td>
  <td><span>子目录名称</span></td>
</tr>
<tr>
  <td><span>status</span></td>
  <td><span>uint</span></td>
  <td><span>是</span></td>
  <td><span>0：正常；1：暂停</span></td>
</tr>
<tr>
  <td><span>create_time</span></td>
  <td><span>DateTime</span></td>
  <td><span>是</span></td>
  <td><span>日期时间格式，以北京时间表示</span></td>
</tr>
<tr>
  <td><span>sub_dir_list</span></td>
  <td><span>array of SubDirInfo</span></td>
  <td><span>是</span></td>
  <td><span>子目录列表</span></td>
</tr>
</tbody></table>


<hr>

<p><strong>返回示例</strong></p>



<pre class="prettyprint"><code class=" hljs json">{

"<span class="hljs-attribute">header</span>": <span class="hljs-value">{

"<span class="hljs-attribute">desc</span>": <span class="hljs-value"><span class="hljs-string">"success"</span></span>,

"<span class="hljs-attribute">failures</span>": <span class="hljs-value">[]</span>,

"<span class="hljs-attribute">oprs</span>": <span class="hljs-value"><span class="hljs-number">1</span></span>,

"<span class="hljs-attribute">succ</span>": <span class="hljs-value"><span class="hljs-number">1</span></span>,

"<span class="hljs-attribute">oprtime</span>": <span class="hljs-value"><span class="hljs-number">1</span></span>,

"<span class="hljs-attribute">quota</span>": <span class="hljs-value"><span class="hljs-number">1</span></span>,

"<span class="hljs-attribute">rquota</span>": <span class="hljs-value"><span class="hljs-number">1538</span></span>,

"<span class="hljs-attribute">status</span>": <span class="hljs-value"><span class="hljs-number">0</span>

</span>}</span>,

"<span class="hljs-attribute">body</span>": <span class="hljs-value">{

"<span class="hljs-attribute">data</span>": <span class="hljs-value">[

{

"<span class="hljs-attribute">list</span>": <span class="hljs-value">[

{

"<span class="hljs-attribute">site_id</span>": <span class="hljs-value"><span class="hljs-number">12345</span></span>,

"<span class="hljs-attribute">domain</span>": <span class="hljs-value"><span class="hljs-string">"www.iqiyi.com"</span></span>,

"<span class="hljs-attribute">status</span>": <span class="hljs-value"><span class="hljs-number">0</span></span>,

"<span class="hljs-attribute">create_time</span>": <span class="hljs-value"><span class="hljs-string">"2011-01-01 15:00:00"</span></span>,

"<span class="hljs-attribute">sub_dir_list</span>": <span class="hljs-value">[

{

"<span class="hljs-attribute">sub_dir_id</span>": <span class="hljs-value"><span class="hljs-number">123456</span></span>,

"<span class="hljs-attribute">name</span>": <span class="hljs-value"><span class="hljs-string">"视频"</span></span>,

"<span class="hljs-attribute">create_time</span>": <span class="hljs-value"><span class="hljs-string">"2011-01-02 15:00:00"</span>

</span>},

{

"<span class="hljs-attribute">sub_dir_id</span>": <span class="hljs-value"><span class="hljs-number">123457</span></span>,

"<span class="hljs-attribute">name</span>": <span class="hljs-value"><span class="hljs-string">"我的积分"</span></span>,

"<span class="hljs-attribute">create_time</span>": <span class="hljs-value"><span class="hljs-string">"2011-01-03 15:00:00"</span>

</span>}

]

</span>},</span></span></span></code></pre></div>
                </div>


<div class="help-center-list-content">
                    <h2>如何获取站点的报告数据</h2>
                    <div class="help-center-list-content-detail"><p><strong>功能</strong></p>

<p>根据站点ID获取站点报告数据。</p>

<p><strong>接口名称</strong></p>

<p><a href="https://api.baidu.com/json/tongji/v1/ReportService/getData">https://api.baidu.com/json/tongji/v1/ReportService/getData</a></p>

<p><strong>用户相关性</strong></p>

<p>用户相关</p>

<p><strong>应用级输入参数</strong></p>

<p><strong>基本参数</strong></p>

<hr>

<table>
<thead>
<tr>
  <th>参数名</th>
  <th>参数类型</th>
  <th>是否必需</th>
  <th>描述</th>
</tr>
</thead>
<tbody><tr>
  <td>site_id</td>
  <td>uint</td>
  <td>是</td>
  <td>站点id</td>
</tr>
<tr>
  <td>method</td>
  <td></td>
  <td>是</td>
  <td>通常对应要查询的报告</td>
</tr>
<tr>
  <td>start_date</td>
  <td></td>
  <td>是</td>
  <td>查询起始时间,例：20160501</td>
</tr>
<tr>
  <td>end_date</td>
  <td></td>
  <td>是</td>
  <td>查询结束时间,例：20160531</td>
</tr>
<tr>
  <td>start_date2</td>
  <td></td>
  <td>否</td>
  <td>对比查询起始时间</td>
</tr>
<tr>
  <td>end_date2</td>
  <td></td>
  <td>否</td>
  <td>对比查询结束时间</td>
</tr>
<tr>
  <td>metrics</td>
  <td></td>
  <td>是</td>
  <td>自定义指标选择，多个指标用逗号分隔</td>
</tr>
<tr>
  <td>gran</td>
  <td></td>
  <td>否</td>
  <td>时间粒度(只支持有该参数的报告): day/hour/week/month</td>
</tr>
<tr>
  <td>order</td>
  <td></td>
  <td>否</td>
  <td>指标排序，示例：visitor_count,desc</td>
</tr>
<tr>
  <td>start_index</td>
  <td>uint</td>
  <td>否</td>
  <td>获取数据偏移，用于分页；默认是0</td>
</tr>
<tr>
  <td>max_results</td>
  <td>uint</td>
  <td>否</td>
  <td>单次获取数据条数，用于分页；默认是20;</td>
</tr>
<tr>
  <td></td>
  <td></td>
  <td></td>
  <td>0表示获取所有数据.</td>
</tr>
</tbody></table>


<hr>

<p>注：</p>

<p>1．method参数，通常对应要查询的报告，与网站页面所发送请求的method参数一致，如要获取趋势分析报告的数据，所用到的方法为“trend/time/a”。</p>

<p>2.metrics参数，是所要获取的指标，根据不同的报告填写相关指标，与网站页面所发送请求的indicators参数一致，如要获取浏览量(PV)、访客数(UV)、新访客数，则所填指标为“pv_count,visitor_count,new_visitor_count”。</p>

<p>详见下面“关键参数与报告的对应”的描述。</p>

<p><strong>筛选参数</strong></p>

<hr>

<table>
<thead>
<tr>
  <th>参数名</th>
  <th>参数类型</th>
  <th>是否必需</th>
  <th>描述</th>
</tr>
</thead>
<tbody><tr>
  <td>target</td>
  <td>int</td>
  <td>否</td>
  <td>转化目标：1：全部页面目标  2：全部事件目标  3：时长目标 4：访问页数目标</td>
</tr>
<tr>
  <td>source</td>
  <td>string</td>
  <td>否</td>
  <td>来源过滤： through：直接访问 search,0：搜索引擎全部 link：外部链接</td>
</tr>
<tr>
  <td>clientDevice</td>
  <td>string</td>
  <td>否</td>
  <td>设备过滤 pc：计算机 mobile：移动设备</td>
</tr>
<tr>
  <td>area</td>
  <td>string</td>
  <td>否</td>
  <td>地域过滤 china：全国 province,1：省市自治区北京 province,2：省市自治区上海 province,3：省市自治区天津 … other：其他</td>
</tr>
<tr>
  <td>visitor</td>
  <td>string</td>
  <td>否</td>
  <td>访客过滤 new：新访客 old：老访客</td>
</tr>
</tbody></table>


<hr>

<p><strong>关键参数与报告的对应</strong></p>

<p><img src="https://mtj.baidu.com/static/article/image/tTYzdbwGiR1477816356.png"> <br>
  <img src="https://mtj.baidu.com/static/article/image/DZDCZrjSSl1477816362.png"> <br>
  <img src="https://mtj.baidu.com/static/article/image/fAgzReOMcA1477816368.png">() <br>
  <img src="https://mtj.baidu.com/static/article/image/MOIZgolgux1477816374.png"> <br>
  <img src="https://mtj.baidu.com/static/article/image/OblQQlCKru1477816382.png"> <br>
  <img src="https://mtj.baidu.com/static/article/image/rszRhJiNKK1477816389.png">()          </p>

<p><strong>请求示例</strong></p>

<p>这里通过列举若干调用实例来进一步阐述该接口的使用方式，其中会根据获取数据的不同而传入不同的请求参数。</p>

<p>1.获取趋势分析报告中PV和UV数据，按天粒度</p>

<p><img src="https://mtj.baidu.com/static/article/image/uwmZMqWawT1477816573.png" alt="图片" title=""></p>

<p>2.获取地域分布报告中的跳出率、平均访问时长、平均访问页数指标，按平均</p>

<p>访问页数指标排序（倒序），并做新访客的筛选。</p>

<p><img src="https://mtj.baidu.com/static/article/image/YhxCuhXeYA1477816620.png" alt="图片" title=""></p>

<p><strong>返回参数</strong></p>

<hr>

<table>
<thead>
<tr>
  <th>参数名</th>
  <th>参数类型</th>
  <th>是否必需</th>
  <th>描述</th>
</tr>
</thead>
<tbody><tr>
  <td>result</td>
  <td>ReportData</td>
  <td>是</td>
  <td>报告数据</td>
</tr>
</tbody></table>


<hr>

<p><strong>ReportData结构</strong></p>

<hr>

<p><img src="https://mtj.baidu.com/static/article/image/hIxdbIwUOW1477816719.png" alt="图片" title=""></p>

<hr>

<p><strong>返回示例</strong></p>

<pre class="prettyprint"><code class=" hljs json">{
    "<span class="hljs-attribute">header</span>": <span class="hljs-value">{
        "<span class="hljs-attribute">desc</span>": <span class="hljs-value"><span class="hljs-string">"success"</span></span>,
        "<span class="hljs-attribute">failures</span>": <span class="hljs-value">[]</span>,
        "<span class="hljs-attribute">oprs</span>": <span class="hljs-value"><span class="hljs-number">1</span></span>,
        "<span class="hljs-attribute">succ</span>": <span class="hljs-value"><span class="hljs-number">1</span></span>,
        "<span class="hljs-attribute">oprtime</span>": <span class="hljs-value"><span class="hljs-number">1</span></span>,
        "<span class="hljs-attribute">quota</span>": <span class="hljs-value"><span class="hljs-number">1</span></span>,
        "<span class="hljs-attribute">rquota</span>": <span class="hljs-value"><span class="hljs-number">1538</span></span>,
        "<span class="hljs-attribute">status</span>": <span class="hljs-value"><span class="hljs-number">0</span>
    </span>}</span>,
    "<span class="hljs-attribute">body</span>": <span class="hljs-value">{
        "<span class="hljs-attribute">data</span>": <span class="hljs-value">[
            {
                "<span class="hljs-attribute">result</span>": <span class="hljs-value">{
                    "<span class="hljs-attribute">offset</span>": <span class="hljs-value"><span class="hljs-number">0</span></span>,
                    "<span class="hljs-attribute">timeSpan</span>": <span class="hljs-value">[
                        <span class="hljs-string">"2016/05/31"</span>
                    ]</span>,
                    "<span class="hljs-attribute">fields</span>": <span class="hljs-value">[
                        <span class="hljs-string">"visit_district_title"</span>,
                        <span class="hljs-string">"pv_count"</span>,
                        <span class="hljs-string">"visitor_count"</span>,
                        <span class="hljs-string">"ip_count"</span>
                    ]</span>,
                    "<span class="hljs-attribute">total</span>": <span class="hljs-value"><span class="hljs-number">35</span></span>,
                    "<span class="hljs-attribute">sum</span>": <span class="hljs-value">[
                        [
                            <span class="hljs-number">88498794</span>,
                            <span class="hljs-number">35978529</span>,
                            <span class="hljs-number">25665169</span>
                        ],
                        []
                    ]</span>,
                    "<span class="hljs-attribute">pageSum</span>": <span class="hljs-value">[
                        [
                            <span class="hljs-number">35405459</span>,
                            <span class="hljs-number">14085496</span>,
                            <span class="hljs-number">9982100</span>
                        ],
                        [],
                        []
                    ]</span>,
                    "<span class="hljs-attribute">items</span>": <span class="hljs-value">[
                        [
                            [
                                {
                                    "<span class="hljs-attribute">name</span>": <span class="hljs-value"><span class="hljs-string">"广东"</span></span>,
                                    "<span class="hljs-attribute">area</span>": <span class="hljs-value"><span class="hljs-string">"province,4"</span>
                                </span>}
                            ],
                            [
                                {
                                    "<span class="hljs-attribute">name</span>": <span class="hljs-value"><span class="hljs-string">"浙江"</span></span>,
                                    "<span class="hljs-attribute">area</span>": <span class="hljs-value"><span class="hljs-string">"province,32"</span>
                                </span>}
                            ],
                            [
                                {
                                    "<span class="hljs-attribute">name</span>": <span class="hljs-value"><span class="hljs-string">"其他"</span></span>,
                                    "<span class="hljs-attribute">area</span>": <span class="hljs-value"><span class="hljs-string">"province,0"</span>
                                </span>}
                            ],
                            [
                                {
                                    "<span class="hljs-attribute">name</span>": <span class="hljs-value"><span class="hljs-string">"江苏"</span></span>,
                                    "<span class="hljs-attribute">area</span>": <span class="hljs-value"><span class="hljs-string">"province,19"</span>
                                </span>}
                            ],
                            [
                                {
                                    "<span class="hljs-attribute">name</span>": <span class="hljs-value"><span class="hljs-string">"河南"</span></span>,
                                    "<span class="hljs-attribute">area</span>": <span class="hljs-value"><span class="hljs-string">"province,14"</span>
                                </span>}
                            ]
                        ],
                        [
                            [
                                <span class="hljs-number">12341436</span>,
                                <span class="hljs-number">4761366</span>,
                                <span class="hljs-number">3272131</span>
                            ],
                            [
                                <span class="hljs-number">6246400</span>,
                                <span class="hljs-number">2439809</span>,
                                <span class="hljs-number">1818061</span>
                            ],
                            [
                                <span class="hljs-number">5843763</span>,
                                <span class="hljs-number">2371240</span>,
                                <span class="hljs-number">1583733</span>
                            ],
                            [
                                <span class="hljs-number">5786661</span>,
                                <span class="hljs-number">2349302</span>,
                                <span class="hljs-number">1784306</span>
                            ],
                            [
                                <span class="hljs-number">5187199</span>,
                                <span class="hljs-number">2163779</span>,
                                <span class="hljs-number">1523869</span>
                            ]
                        ],
                        [],
                        []
                    ]
                </span>}
            </span>}
        ]
    </span>}
</span>} </code></pre></div>
                </div>
