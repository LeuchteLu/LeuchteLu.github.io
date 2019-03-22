<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Generic - Spectral by HTML5 UP</title>
	<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
	<link rel="stylesheet" href="CSS/assets/css/main.css" />
	<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
</head>
<body>


		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<!-- Header -->
					<header id="header">
						<h1><a href="index.html">finger print</a></h1>
						<nav id="nav">
							<ul>
								<li class="special">
									<a href="#menu" class="menuToggle"><span>Menu</span></a>
									<div id="menu">
										<ul>
											<li><a href="index.html">Home</a></li>
										</ul>
									</div>
								</li>
							</ul>
						</nav>
					</header>

				<!-- Main -->
					<article id="main">
						<header>
							<h2>Your Finger Print</h2>
							<button id = "simhash">get your simhash</button>
							<h2 id = "hash"></h2>
						</header>
						<section class="wrapper style5">
							<div class="inner">
								<h3>Detailed Information</h3>
                                <div class="table-wrapper">
                                    <table class="alt">
                                        <thead>
                                            <tr>
                                                <th>Property</th>
                                                <th>Value</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<tr id = "00"></tr>
                                          	<tr id = "01"></tr>
                                            <tr id = "02"></tr>
                                            <tr id = "03"></tr>
                                            <tr id = "04"></tr>
                                            <tr id = "0"></tr>
                                          	<tr id = "1"></tr>
                                            <tr id = "2"></tr>
                                            <tr id = "3"></tr>
                                            <tr id = "4"></tr>
                                            <tr id = "5"></tr>
                                            <tr id = "6"></tr>
                                            <tr id = "7"></tr>
                                          	<tr id = "8"></tr>
                                            <tr id = "9"></tr>
                                            <tr id = "10"></tr>
                                            <tr id = "11"></tr>
                                            <tr id = "12"></tr>
                                            <tr id = "13"></tr>
                                            <tr id = "14"></tr>
                                          	<tr id = "15"></tr>
                                            <tr id = "16"></tr>
                                            <tr id = "17"></tr>
                                            <tr id = "18"></tr>
                                            <tr id = "19"></tr>
                                            <tr id = "20"></tr>
                                            <tr id = "21"></tr>
                                          	<tr id = "22"></tr>
                                            <tr id = "23"></tr>
                                            <tr id = "24"></tr>
                                            <tr id = "25"></tr>
                                            <tr id = "26"></tr>
                                            <tr id = "27"></tr>
                                            <tr id = "28"></tr>
                                          	<tr id = "29"></tr>
                                            <tr id = "30"></tr>
                                            <tr id = "31"></tr>
                                            <tr id = "32"></tr>
                                            <tr id = "33"></tr>
                                            <tr id = "34"></tr>
                                            <tr id = "35"></tr>
                                          	<tr id = "36"></tr>
                                            <tr id = "37"></tr>
                                            <tr id = "38"></tr>
                                            <tr id = "39"></tr>
                                            <tr id = "40"></tr>
                                            <tr id = "41"></tr>
                                            <tr id = "42"></tr>
                                            <tr id = "43"></tr>
                                            <tr id = "44"></tr>
                                            <tr id = "45"></tr>
                                            <tr id = "46"></tr>
                                            <tr id = "47"></tr>
                                            <tr id = "48"></tr>
                                          	<tr id = "49"></tr>
                                            <tr id = "50"></tr>
                                            <tr id = "51"></tr>
                                            <tr id = "52"></tr>
                                            <tr id = "53"></tr>
                                        </tbody>
                                    </table>
                                </div>

								

							</div>
						</section>
					</article>

				<!-- Footer -->
					<footer id="footer">
						<ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
							<li><a href="#" class="icon fa-envelope-o"><span class="label">Email</span></a></li>
						</ul>
						<ul class="copyright">
						  <li>&copy; LU TAOTAO</li>
						  <li>LIU YUNPENG</li>
                          <li>HAN HAOJIE</li>
						</ul>
					</footer>
			</div>
	
		<!-- Scripts -->
			<script src="CSS/assets/js/jquery.min.js"></script>
			<script src="CSS/assets/js/jquery.scrollex.min.js"></script>
			<script src="CSS/assets/js/jquery.scrolly.min.js"></script>
			<script src="CSS/assets/js/skel.min.js"></script>
			<script src="CSS/assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="CSS/assets/js/main.js"></script>
            <script src="CSS/client.min.js"></script>
			
			<script type="text/javascript">
			var list = [];
			var info1 = new Object();	var info2 = new Object();	var info3 = new Object();
			var info4 = new Object();	var info5 = new Object();	var info6 = new Object();
			var info7 = new Object();	var info8 = new Object();	var info9 = new Object();
			var info10 = new Object();	var info11 = new Object();	var info12 = new Object();
			var info13 = new Object();	var info14 = new Object();	var info15 = new Object();
			var info16 = new Object();	var info17 = new Object();	var info18 = new Object();
			var info19 = new Object();	var info20 = new Object();	var info21 = new Object();
			var info22 = new Object();	var info23 = new Object();	var info24 = new Object();
			var info25 = new Object();	var info26 = new Object();	var info27 = new Object();
			var info28 = new Object();	var info29 = new Object();	var info30 = new Object();
			var info31 = new Object();	var info32 = new Object();	var info33 = new Object();
			var info34 = new Object();	var info35 = new Object();	var info36 = new Object();
			var info37 = new Object();	var info38 = new Object();	var info39 = new Object();
			var info40 = new Object();	var info41 = new Object();	var info42 = new Object();
			var info43 = new Object();	var info44 = new Object();	var info45 = new Object();
			var info46 = new Object();	var info38 = new Object();	var info39 = new Object();
			var info40 = new Object();	var info41 = new Object();	var info42 = new Object();
			var info43 = new Object();	var info44 = new Object();	var info45 = new Object();
			
  //clientjs
  var client = new ClientJS(); // Create A New Client TObject
	
  var softwareVersion = client.getSoftwareVersion(); // Get ClientJS Software Version
  document.getElementById("00").innerHTML = "<td>software version</td>" + "<td>"+ softwareVersion +"</td>";
  
  
  //fingerprint
  ////var fingerprint = client.getFingerprint(); // Get Client's Fingerprint
  var ua = client.getBrowserData().ua;//get browser fingerprint
  var canvasPrint = client.getCanvasPrint();
  document.getElementById("01").innerHTML = "<td>User Agent</td>" + "<td>"+ ua +"</td>";
  document.getElementById("02").innerHTML = "<td>canvas print</td>" + "<td>"+ canvasPrint +"</td>";
  ////var fingerprint = client.getCustomFingerprint(ua, canvasPrint);
  
  info1.name = "software version";
  info1.value = softwareVersion;
  info2.name = "User Agent";
  info2.value = canvasPrint;
  list[0] = info1;
  list[1] = info2;
  
  //useragent
  var userAgent = client.getUserAgent(); // Get User Agent String
  var userAgentLowerCase = client.getUserAgentLowerCase(); // Get User Agent String
  document.getElementById("03").innerHTML = "<td>user Agent</td>" + "<td>"+ userAgent +"</td>";
  document.getElementById("04").innerHTML = "<td>User Agent String</td>" + "<td>"+ userAgentLowerCase +"</td>";

  //browser
  var browser = client.getBrowser(); // Get Browser
  var browserVersion = client.getBrowserVersion(); // Get Browser Version
  var browserMajorVersion = client.getBrowserMajorVersion(); // Get Browser's Major Version
  var isIE = client.isIE(); // Check For IE
  var isChrome = client.isChrome(); // Check For Chrome
  var isFirefox = client.isFirefox(); // Check For Firefox
  var isSafari = client.isSafari(); // Check For Safari
  var isOpera = client.isOpera(); // Check For Opera
  ////var isMobileSafari = client.isMobileSafari(); // Check For Mobile Safari
  document.getElementById("0").innerHTML = "<td>browser</td>" + "<td>"+ browser +"</td>";
  document.getElementById("1").innerHTML = "<td>browser version</td>" + "<td>"+ browserVersion +"</td>";
  document.getElementById("2").innerHTML = "<td>browser major version</td>" + "<td>"+ browserMajorVersion +"</td>";
  document.getElementById("3").innerHTML = "<td>IE</td>" + "<td>"+ isIE +"</td>";
  document.getElementById("4").innerHTML = "<td>Chrome</td>" + "<td>"+ isChrome +"</td>";
  document.getElementById("5").innerHTML = "<td>Firefox</td>" + "<td>"+ isFirefox +"</td>";
  document.getElementById("6").innerHTML = "<td>Safari</td>" + "<td>"+ isSafari +"</td>";
  document.getElementById("7").innerHTML = "<td>Opera</td>" + "<td>"+ isOpera +"</td>";
  

  //engine
  var engine = client.getEngine(); // Get Engine
  var engineVersion = client.getEngineVersion(); // Get Engine Version
  document.getElementById("8").innerHTML = "<td>engine</td>" + "<td>"+ engine +"</td>";
  document.getElementById("9").innerHTML = "<td>engine version</td>" + "<td>"+ engineVersion +"</td>";
 

  //OS
  var OS = client.getOS(); // Get OS Version
  var osVersion = client.getOSVersion(); // Get OS Version
  var isWindows = client.isWindows(); // Check For Windows
  var isMac = client.isMac(); // Check For Mac
  var isLinux = client.isLinux(); // Check For Linux
  var isUbuntu = client.isUbuntu(); // Check For Ubuntu
  var isSolaris = client.isSolaris(); // Check For Solaris
  document.getElementById("10").innerHTML = "<td>OS</td>" + "<td>"+ OS +"</td>";
  document.getElementById("11").innerHTML = "<td>os version</td>" + "<td>"+ osVersion +"</td>";
  document.getElementById("12").innerHTML = "<td>Windows</td>" + "<td>"+ isWindows +"</td>";
  document.getElementById("13").innerHTML = "<td>Mac</td>" + "<td>"+ isMac +"</td>";
  document.getElementById("14").innerHTML = "<td>Linux</td>" + "<td>"+ isLinux +"</td>";
  document.getElementById("15").innerHTML = "<td>Ubuntu</td>" + "<td>"+ isUbuntu +"</td>";
  document.getElementById("16").innerHTML = "<td>Solaris</td>" + "<td>"+ isSolaris +"</td>";


  //device
  var device = client.getDevice(); // Get Device
  var deviceType = client.getDeviceType(); // Get Device Type
  var deviceVendor = client.getDeviceVendor(); // Get Device Vendor
  document.getElementById("17").innerHTML = "<td>device</td>" + "<td>"+ device +"</td>";
  document.getElementById("18").innerHTML = "<td>device type</td>" + "<td>"+ deviceType +"</td>";
  document.getElementById("19").innerHTML = "<td>device vendor</td>" + "<td>"+ deviceVendor +"</td>";


  //cpu
  var CPU = client.getCPU(); // Get CPU Architecture
  document.getElementById("20").innerHTML = "<td>CPU</td>" + "<td>"+ CPU +"</td>";


  //mobile
  var isMobile = client.isMobile(); // Check For Mobile
  var isMobileMajor = client.isMobileMajor(); // Check For Mobile Major
  var isMobileAndroid = client.isMobileAndroid(); // Check For Mobile Android
  var isMobileOpera = client.isMobileOpera(); // Check For Mobile Opera
  var isMobileWindows = client.isMobileWindows(); // Check For Mobile Windows
  var isMobileBlackBerry = client.isMobileBlackBerry(); // Check For Mobile Blackberry
  document.getElementById("21").innerHTML = "<td>mobile</td>" + "<td>"+ isMobile +"</td>";
  document.getElementById("22").innerHTML = "<td>Major</td>" + "<td>"+ isMobileMajor +"</td>";
  document.getElementById("23").innerHTML = "<td>Android</td>" + "<td>"+ isMobileAndroid +"</td>";
  document.getElementById("24").innerHTML = "<td>Opera</td>" + "<td>"+ isMobileOpera +"</td>";
  document.getElementById("25").innerHTML = "<td>Windows</td>" + "<td>"+ isMobileWindows +"</td>";
  document.getElementById("26").innerHTML = "<td>BlackBerry</td>" + "<td>"+ isMobileBlackBerry +"</td>";


  //ios
  var isMobileIOS = client.isMobileIOS(); // Check For Mobile iOS
  var isIphone = client.isIphone(); // Check For iPhone
  var isIpad = client.isIpad(); // Check For iPad
  var isIpod = client.isIpod(); // Check For iPod
  document.getElementById("27").innerHTML = "<td>MobileIOS</td>" + "<td>"+ isMobileIOS +"</td>";
  document.getElementById("28").innerHTML = "<td>Iphone</td>" + "<td>"+ isIphone +"</td>";
  document.getElementById("29").innerHTML = "<td>Ipad</td>" + "<td>"+ isIpad +"</td>";
  document.getElementById("30").innerHTML = "<td>Ipod</td>" + "<td>"+ isIpod +"</td>";


  //screen
  var screenPrint = client.getScreenPrint(); // Get Screen Print
  var colorDepth = client.getColorDepth(); // Get Color Depth
  var currentResolution = client.getCurrentResolution(); // Get Current Resolution
  var availableResolution = client.getAvailableResolution(); // Get Available Resolution
  var deviceXDPI = client.getDeviceXDPI(); // Get Device XDPI
  var deviceYDPI = client.getDeviceYDPI(); // Get Device YDPI
  document.getElementById("31").innerHTML = "<td>screen print</td>" + "<td>"+ screenPrint +"</td>";
  document.getElementById("32").innerHTML = "<td>color depth</td>" + "<td>"+ colorDepth +"</td>";
  document.getElementById("33").innerHTML = "<td>current resolution</td>" + "<td>"+ currentResolution +"</td>";
  document.getElementById("34").innerHTML = "<td>available resolution</td>" + "<td>"+ availableResolution +"</td>";
  document.getElementById("35").innerHTML = "<td>device XDPI</td>" + "<td>"+ deviceXDPI +"</td>";
  document.getElementById("36").innerHTML = "<td>device YDPI</td>" + "<td>"+ deviceYDPI +"</td>";


  //plugins
  var plugins = client.getPlugins(); // Get Plugins
  var isJava = client.isJava(); // Check For Java
  var javaVersion = client.getJavaVersion(); // Get Java Version
  var isFlash = client.isFlash(); // Check For Flash
  var flashVersion = client.getFlashVersion(); // GET Flash Version
  var isSilverlight = client.isSilverlight(); // Check For Silverlight
  var silverlightVersion = client.getSilverlightVersion(); // GET Silverlight Version
  document.getElementById("37").innerHTML = "<td>plugins</td>" + "<td>"+ plugins +"</td>";
  document.getElementById("38").innerHTML = "<td>Java</td>" + "<td>"+ isJava +"</td>";
  document.getElementById("39").innerHTML = "<td>java version</td>" + "<td>"+ javaVersion +"</td>";
  document.getElementById("40").innerHTML = "<td>Flash</td>" + "<td>"+ isFlash +"</td>";
  document.getElementById("41").innerHTML = "<td>flash version</td>" + "<td>"+ flashVersion +"</td>";
  document.getElementById("42").innerHTML = "<td>Silverlight</td>" + "<td>"+ isSilverlight +"</td>";
  document.getElementById("43").innerHTML = "<td>silverlight version</td>" + "<td>"+ silverlightVersion +"</td>";


  //mime
  var isMimeTypes = client.isMimeTypes(); // Check For Mime Types
  var mimeTypes = client.getMimeTypes(); // Get Mime Types
  document.getElementById("44").innerHTML = "<td>MimeTypes</td>" + "<td>"+ isMimeTypes +"</td>";
  document.getElementById("45").innerHTML = "<td>mimeTypes</td>" + "<td>"+ mimeTypes +"</td>";


  //font
  var font = "Times New Roman"; // Set Font String
  ////var isFont = client.isFont(font); // Check For A Font
  ////var fonts = client.getFonts(); // Get Fonts


  //storage
  var isLocalStorage = client.isLocalStorage(); // Check For Local Storage
  var isSessionStorage = client.isSessionStorage(); // Check For Session Storage
  var isCookie = client.isCookie(); // Check For Cookies
  document.getElementById("46").innerHTML = "<td>LocalStorage</td>" + "<td>"+ isLocalStorage +"</td>";
  document.getElementById("47").innerHTML = "<td>SessionStorage</td>" + "<td>"+ isSessionStorage +"</td>";
  document.getElementById("48").innerHTML = "<td>Cookie</td>" + "<td>"+ isCookie +"</td>";


  //time
  var timeZone = client.getTimeZone(); // Get Time Zone
  document.getElementById("49").innerHTML = "<td>time zone</td>" + "<td>"+ timeZone +"</td>";


  //language
  var language = client.getLanguage(); // Get User Language
  ////var systemLanguage = client.SystemLanguage(); // Get System Language
  document.getElementById("50").innerHTML = "<td>language</td>" + "<td>"+ language +"</td>";


  //canvas
  var isCanvas = client.isCanvas(); // Check For The Canvas Element
  var canvasPrint = client.getCanvasPrint(); // Get Canvas Print
  document.getElementById("51").innerHTML = "<td>Canvas</td>" + "<td>"+ isCanvas +"</td>";
  document.getElementById("52").innerHTML = "<td>canvas print</td>" + "<td>"+ canvasPrint +"</td>";
</script>
	<script type="text/javascript">
	$(function(){
	    $('#simhash').click(function(){
	    	$.ajax({
	    		url : "/finger_teach/test",
	    		data : {'informations':JSON.stringify(list)},
	    		dataType : "json",
	    		type : 'post',
	    		success: function(msg) {
	    			alert(msg);
	    			document.getElementById("hash").innerHTML = msg;
	    		},
	    		error: function(XMLHttpRequest, textStatus, errorThrown) {
	    			alert(XMLHttpRequest.status);
	    			alert(XMLHttpRequest.readyState);
	    			alert(textStatus);
	    		},
	    		complete: function(XMLHttpRequest, textStatus) {
	    			this; // 调用本次AJAX请求时传递的options参数
	    		}
	    	});
	    });
	});
	</script>

</body>
</html>