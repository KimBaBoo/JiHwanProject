
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DTO.PostDTO"%>
<%@ page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%
	//List<PostDTO> allPosts = (List<PostDTO>)request.getAttribute("allPost"); ---> "Type safety"
	ArrayList<?> list1 = (ArrayList<?>)request.getAttribute("allPost");
    ArrayList<PostDTO> allPosts = new ArrayList<PostDTO>();
	for(Object obj : list1) {
		if(obj instanceof PostDTO)
			allPosts.add((PostDTO)obj);
	}
	
// 	List<PostDTO> hotPosts = (List<PostDTO>)request.getAttribute("hotPost"); ---> "Type safety"
	ArrayList<?> list2 = (ArrayList<?>)request.getAttribute("hotPost");
	ArrayList<PostDTO> hotPosts = new ArrayList<PostDTO>();
	for(Object obj : list2){
		if(obj instanceof PostDTO)
			hotPosts.add((PostDTO)obj);
	} 
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Community Main</title>
    <link rel="stylesheet" href="css/Community.css" />
</head>
<body>
    <jsp:include page="CommunitySideBar.jsp" />
    <div class="right">
        <div class="rightBackImg">
            <div class="rightTop">
                <div>
	                <img class="mainLogo" src="data:image/svg+xml,%3C%3Fxml version='1.0' standalone='no'%3F%3E%3C!DOCTYPE svg PUBLIC '-//W3C//DTD SVG 20010904//EN' 'http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd'%3E%3Csvg version='1.0' xmlns='http://www.w3.org/2000/svg' width='1344.000000pt' height='1344.000000pt' viewBox='0 0 1344.000000 1344.000000' preserveAspectRatio='xMidYMid meet'%3E%3Cg transform='translate(0.000000,1344.000000) scale(0.100000,-0.100000)'%0Afill='%23000000' stroke='none'%3E%3Cpath d='M1975 13238 c-11 -6 -37 -26 -57 -44 -55 -49 -119 -64 -270 -64 -78%0A0 -138 -5 -151 -12 -34 -17 -125 -102 -194 -180 -51 -58 -63 -78 -69 -117 -8%0A-53 -30 -98 -79 -159 l-35 -44 0 -4947 0 -4948 28 -39 c39 -53 288 -301 332%0A-329 19 -13 60 -28 91 -34 40 -8 69 -23 104 -52 62 -51 68 -54 136 -68 39 -8%0A69 -23 105 -52 63 -53 80 -59 163 -59 84 0 160 -22 191 -55 35 -37 79 -61 125%0A-70 50 -9 104 -36 134 -69 31 -32 77 -46 161 -46 89 0 130 -13 181 -59 53 -46%0A80 -61 111 -61 34 -1 97 -32 147 -74 23 -20 55 -39 70 -42 73 -15 103 -28 155%0A-68 54 -42 58 -43 148 -49 113 -7 150 -19 206 -68 42 -36 55 -42 149 -68 24%0A-6 63 -29 88 -51 25 -22 64 -45 88 -51 96 -26 111 -33 146 -64 53 -47 73 -55%0A145 -55 106 0 157 -16 215 -65 30 -25 70 -49 94 -55 84 -22 103 -31 150 -70%0A51 -42 69 -47 187 -53 82 -4 114 -17 179 -71 24 -20 55 -39 70 -42 82 -19 104%0A-28 157 -69 32 -25 70 -48 84 -51 80 -18 103 -28 147 -64 57 -48 95 -60 186%0A-60 81 0 123 -16 184 -70 28 -24 59 -42 82 -46 67 -11 103 -26 140 -59 20 -18%0A46 -37 58 -44 31 -16 855 -16 886 1 12 6 40 26 61 44 39 34 71 47 137 58 23 4%0A54 22 82 46 61 54 103 70 184 70 91 0 129 12 186 60 44 36 66 46 148 64 14 3%0A52 26 85 51 53 41 74 51 155 69 15 3 46 22 70 42 65 54 97 67 179 71 118 6%0A136 11 187 53 47 39 66 48 150 70 24 6 64 30 94 55 58 49 109 65 215 65 72 0%0A92 8 145 55 35 32 60 42 146 65 24 6 63 28 88 50 25 22 64 45 88 51 94 26 107%0A32 149 68 56 49 93 61 206 68 90 6 94 7 148 49 52 40 82 53 156 69 15 3 48 23%0A73 45 67 58 79 62 197 70 65 5 115 13 126 21 11 8 38 29 62 47 39 29 61 38%0A143 56 15 4 44 22 65 40 46 41 86 62 137 71 53 10 84 27 120 64 37 39 107 61%0A196 61 83 0 100 6 163 59 36 29 66 44 105 52 68 14 74 17 136 68 35 29 64 44%0A104 52 31 6 72 21 91 34 44 29 294 276 332 329 l28 39 0 4948 0 4947 -35 44%0Ac-49 61 -71 106 -79 159 -8 52 -58 118 -164 217 -98 91 -99 92 -248 92 -153 0%0A-217 15 -272 64 -20 18 -47 38 -59 45 -31 16 -9419 15 -9448 -1z m1778 -2600%0Ac21 -10 59 -36 84 -58 35 -30 59 -42 106 -51 56 -11 68 -19 151 -97 50 -46%0A109 -105 131 -131 22 -26 61 -67 88 -91 66 -60 114 -128 137 -196 11 -32 38%0A-85 60 -119 21 -33 44 -80 49 -105 14 -58 14 -611 0 -669 -5 -24 -25 -67 -44%0A-95 -19 -29 -47 -83 -63 -121 -36 -89 -119 -197 -232 -301 -85 -79 -114 -95%0A-192 -109 -54 -9 -108 -62 -108 -106 0 -78 54 -110 201 -119 113 -6 122 -10%0A212 -82 23 -19 46 -24 120 -29 109 -7 144 -23 176 -79 26 -46 23 -75 -10 -122%0A-41 -57 -48 -58 -407 -58 -355 0 -367 1 -442 55 -25 17 -78 44 -118 59 -86 33%0A-131 67 -272 206 -104 102 -179 160 -209 160 -40 0 -95 24 -135 60 -43 36 -58%0A43 -151 69 -29 7 -66 35 -132 98 -50 49 -104 104 -120 124 -15 19 -91 95 -168%0A167 -103 97 -144 143 -157 175 -15 36 -17 86 -17 374 -1 210 3 342 10 360 5%0A15 28 55 49 88 22 34 48 86 59 117 10 30 37 82 59 114 22 33 48 85 57 116 32%0A111 165 252 264 282 63 18 101 39 126 66 56 62 104 69 485 67 274 -2 320 -5%0A353 -19z m1757 6 c117 -47 109 -184 -13 -243 -74 -36 -88 -58 -94 -147 -3 -44%0A-16 -116 -30 -162 -28 -91 -27 -150 3 -183 28 -31 62 -24 108 24 22 23 127%0A131 233 238 115 118 194 206 198 222 4 15 4 44 1 65 -19 110 -20 106 16 144%0A50 53 89 60 318 56 187 -3 200 -4 229 -25 20 -16 44 -23 74 -23 74 0 120 -54%0A97 -114 -10 -28 -57 -56 -93 -56 -18 0 -110 -85 -379 -355 -226 -225 -358%0A-364 -362 -381 -5 -20 2 -46 28 -98 19 -39 37 -82 41 -96 9 -29 65 -110 77%0A-110 18 0 128 -153 147 -207 34 -92 36 -95 210 -271 240 -242 271 -268 336%0A-287 67 -20 110 -54 125 -99 14 -44 5 -77 -32 -115 -48 -49 -77 -53 -363 -49%0Al-260 3 -53 29 c-100 56 -179 156 -227 289 -11 32 -43 76 -96 133 -92 99 -96%0A106 -149 255 -53 150 -73 175 -145 184 -89 11 -112 -28 -76 -131 18 -50 21%0A-83 22 -229 0 -216 5 -230 84 -271 108 -56 139 -129 86 -203 -42 -58 -63 -61%0A-476 -61 -413 0 -434 3 -476 61 -48 68 -27 137 57 187 25 15 60 39 78 54 l31%0A26 0 817 0 817 -31 26 c-18 15 -53 39 -78 54 -25 15 -55 42 -66 60 -38 60 -8%0A136 65 169 36 17 73 19 417 19 325 0 383 -2 418 -16z m2005 5 c21 -6 54 -26%0A72 -44 44 -44 44 -91 2 -178 -39 -78 -35 -110 20 -194 21 -32 46 -84 55 -117%0A13 -44 29 -69 65 -106 57 -57 99 -70 139 -44 100 65 236 213 253 276 6 23 22%0A58 35 77 13 20 24 43 24 53 0 24 -45 73 -88 96 -68 35 -66 105 6 160 l35 27%0A263 3 c297 4 331 -1 381 -55 26 -27 33 -43 33 -75 0 -52 -25 -93 -111 -185%0A-54 -57 -72 -84 -84 -128 -24 -80 -72 -145 -200 -271 -111 -109 -139 -148%0A-165 -229 -18 -56 -60 -114 -135 -189 -97 -94 -95 -87 -95 -431 0 -330 -2%0A-321 72 -391 46 -45 85 -68 133 -78 58 -13 105 -70 105 -127 0 -49 -46 -104%0A-98 -119 -49 -13 -755 -13 -804 0 -20 6 -50 26 -67 46 -62 70 -31 150 84 212%0A28 15 56 39 63 55 10 21 13 114 12 424 -1 450 0 445 -81 517 -64 58 -125 140%0A-144 194 -33 95 -55 121 -291 357 -277 277 -301 314 -260 394 39 75 68 80 426%0A81 192 0 320 -4 345 -11z m3020 -12 c22 -10 56 -33 75 -52 37 -35 77 -55 112%0A-55 12 0 41 -9 64 -20 61 -30 81 -78 90 -217 10 -160 0 -236 -37 -278 -82 -93%0A-187 -54 -229 84 -36 118 -93 163 -225 176 -102 10 -133 20 -199 65 -83 56%0A-137 52 -219 -16 -36 -30 -87 -44 -162 -44 -77 -1 -118 -21 -182 -90 -37 -40%0A-55 -69 -64 -103 -6 -26 -29 -74 -50 -107 -21 -32 -43 -76 -49 -97 -8 -26 -10%0A-153 -8 -393 l3 -356 44 -67 c23 -36 50 -90 58 -119 11 -37 31 -69 66 -108 67%0A-72 104 -89 192 -90 97 0 137 -14 196 -66 63 -56 94 -58 148 -8 22 19 71 48%0A108 64 100 42 108 56 108 200 l0 119 -51 53 c-80 83 -144 185 -144 231 0 49%0A47 100 105 116 25 7 155 11 350 11 284 0 314 -2 352 -20 50 -22 83 -70 83%0A-120 0 -43 -30 -91 -116 -182 -100 -107 -108 -188 -30 -308 70 -107 81 -162%0A47 -235 -22 -49 -71 -88 -138 -110 -28 -9 -88 -38 -133 -65 -58 -34 -99 -51%0A-134 -55 -28 -4 -235 -5 -461 -3 -454 3 -428 0 -525 73 -19 14 -57 32 -84 40%0A-85 26 -137 64 -299 224 -181 178 -219 226 -247 307 -11 32 -38 86 -60 120%0A-23 34 -45 77 -50 95 -13 44 -13 524 0 568 5 18 26 57 45 86 20 29 48 83 61%0A121 34 93 67 134 251 315 162 160 214 198 300 224 27 8 67 28 89 43 52 38 82%0A54 119 63 17 4 201 7 410 6 342 -2 384 -4 420 -20z m-3941 -5349 c58 -14 93%0A-57 107 -130 8 -42 22 -73 45 -102 49 -60 70 -105 79 -161 5 -38 15 -57 45%0A-87 43 -43 78 -49 122 -20 41 27 167 180 174 211 17 86 29 107 97 181 106 113%0A109 114 257 118 114 3 129 1 170 -20 26 -13 53 -37 65 -58 20 -34 20 -51 20%0A-700 0 -599 -2 -668 -16 -695 -38 -68 -92 -88 -235 -88 -135 1 -186 21 -216%0A90 -18 41 -22 73 -26 208 -4 139 -2 169 16 230 27 96 37 273 16 303 -8 12 -19%0A22 -24 22 -5 0 -41 -46 -79 -102 -93 -136 -199 -245 -246 -254 -54 -10 -86 3%0A-133 54 -82 90 -95 116 -101 202 -7 94 -18 108 -93 127 -48 13 -54 12 -65 -4%0A-17 -23 -16 -79 2 -139 20 -68 21 -570 1 -627 -17 -46 -42 -76 -76 -89 -49%0A-19 -161 -28 -231 -18 -154 22 -159 32 -171 400 -5 151 -8 444 -6 650 3 357 4%0A377 24 421 28 60 72 81 184 89 102 7 240 2 294 -12z m-2733 0 c34 -11 174%0A-134 196 -172 15 -26 17 -101 2 -128 -6 -11 -29 -28 -52 -39 -38 -17 -69 -19%0A-302 -19 -231 0 -264 -2 -300 -19 -43 -20 -187 -156 -235 -223 -30 -40 -30%0A-43 -30 -168 0 -126 0 -127 31 -170 45 -63 194 -205 233 -224 40 -19 237 -23%0A283 -5 34 13 109 84 130 123 14 26 13 31 -5 55 -17 24 -29 27 -130 38 -120 12%0A-153 26 -179 76 -25 49 -28 134 -6 192 16 43 25 53 68 75 49 25 54 25 285 25%0A219 0 238 -1 275 -21 75 -39 80 -58 83 -315 2 -151 -1 -241 -8 -270 -9 -32%0A-31 -63 -88 -122 -85 -88 -108 -102 -182 -118 -37 -8 -65 -23 -101 -55 -66%0A-58 -105 -67 -289 -67 -171 0 -208 9 -265 62 -32 31 -86 61 -107 61 -55 0 -91%0A26 -230 164 -103 102 -150 155 -159 182 -19 54 -20 572 -1 625 18 50 410 445%0A455 458 48 14 587 13 628 -1z m1436 -3 c41 -17 176 -145 200 -189 9 -18 18%0A-71 22 -137 7 -106 8 -108 45 -149 42 -47 60 -85 71 -148 5 -29 20 -58 47 -90%0A46 -52 62 -87 73 -151 5 -30 19 -57 45 -85 55 -61 62 -79 71 -200 6 -89 12%0A-115 29 -135 40 -50 63 -111 57 -158 -9 -83 -58 -107 -214 -106 -87 1 -110 4%0A-150 24 -63 31 -82 71 -90 186 -6 78 -9 91 -34 115 l-27 28 -237 0 c-187 0%0A-242 -3 -264 -15 -49 -25 -130 -122 -136 -163 -13 -82 -38 -126 -85 -150 -38%0A-20 -56 -23 -118 -19 -125 7 -164 54 -170 206 -6 129 8 186 63 250 39 46 65%0A101 65 139 0 21 36 86 60 107 35 31 50 78 50 153 0 90 22 160 61 197 37 36 54%0A67 64 120 9 51 30 91 71 137 18 21 36 50 39 65 22 107 48 148 106 169 51 18%0A241 17 286 -1z m3832 -10 c71 -42 99 -172 55 -260 -37 -76 -53 -79 -359 -85%0A-235 -4 -274 -7 -298 -22 -47 -32 -49 -134 -3 -177 23 -22 30 -23 287 -24 288%0A-2 314 -7 357 -61 45 -58 48 -186 5 -245 -11 -14 -37 -35 -59 -46 -36 -18 -63%0A-20 -306 -23 l-266 -4 -24 -25 c-33 -35 -34 -132 0 -165 22 -23 25 -23 355%0A-28 371 -6 374 -6 403 -75 19 -46 18 -185 -1 -231 -27 -66 -26 -66 -605 -66%0A-348 0 -529 4 -557 11 -45 12 -88 55 -101 99 -4 15 -7 322 -7 682 0 639 0 656%0A20 690 12 21 39 44 65 58 l45 23 480 -3 c459 -3 481 -4 514 -23z m1309 2 c46%0A-25 72 -85 72 -167 0 -78 -22 -126 -71 -155 -30 -18 -57 -21 -250 -25 -195 -4%0A-219 -7 -238 -24 -32 -29 -26 -56 25 -114 60 -68 81 -78 189 -86 124 -10 153%0A-19 212 -69 40 -35 64 -47 112 -56 80 -16 126 -58 138 -128 12 -74 9 -323 -5%0A-364 -16 -46 -279 -315 -330 -337 -29 -12 -74 -15 -202 -15 -181 0 -217 8%0A-275 62 -46 44 -65 50 -177 60 -125 11 -153 23 -180 75 -29 57 -31 177 -3 223%0A35 58 135 87 223 64 23 -7 68 -33 100 -59 l57 -47 188 0 189 0 24 28 c19 22%0A24 40 24 81 0 44 -4 56 -27 78 -27 25 -34 26 -173 30 -163 5 -190 13 -262 75%0A-35 31 -60 43 -108 52 -57 11 -68 18 -142 89 -107 102 -122 135 -121 272 0 66%0A5 117 14 138 20 46 295 320 333 331 17 6 166 9 331 8 269 -2 303 -4 333 -20z%0Am-2284 -3319 c55 -18 81 -57 80 -119 -1 -87 -52 -118 -207 -127 -95 -5 -100%0A-6 -140 -40 -64 -54 -112 -72 -192 -72 -93 0 -127 -11 -180 -58 -53 -47 -100%0A-62 -193 -62 -84 0 -113 -10 -163 -55 -57 -52 -76 -58 -190 -65 l-106 -6 -48%0A-42 c-78 -69 -152 -69 -230 0 l-48 42 -106 6 c-114 7 -133 13 -190 65 -50 45%0A-79 55 -163 55 -93 0 -140 15 -193 62 -53 47 -87 58 -180 58 -81 0 -128 18%0A-193 74 -40 33 -49 36 -107 36 -83 0 -164 16 -195 39 -38 28 -56 83 -41 131%0A15 51 55 79 128 88 31 4 679 6 1438 5 1101 -2 1388 -5 1419 -15z'/%3E%3Cpath d='M3366 10364 c-17 -9 -47 -29 -69 -45 -21 -15 -67 -37 -102 -49 -56%0A-19 -75 -33 -161 -117 -53 -53 -102 -110 -109 -127 -7 -17 -16 -67 -20 -111%0A-7 -84 -27 -142 -68 -197 -43 -59 -52 -96 -51 -213 1 -119 10 -148 74 -237 16%0A-22 36 -63 46 -91 9 -29 34 -80 57 -115 22 -35 48 -89 59 -120 35 -106 85%0A-157 184 -187 26 -8 79 -36 117 -62 l70 -48 91 0 c92 0 92 0 159 44 37 24 98%0A55 135 68 104 38 172 117 172 200 0 86 19 155 59 217 57 87 63 109 63 221 0%0A111 -10 146 -68 231 -29 42 -37 66 -45 130 -6 44 -12 93 -15 110 -2 16 -24 64%0A-49 105 -25 41 -54 101 -65 135 -27 81 -83 135 -171 167 -37 13 -90 41 -119%0A62 -61 45 -126 56 -174 29z'/%3E%3Cpath d='M5148 4723 c-9 -10 -25 -37 -37 -60 -11 -23 -30 -44 -40 -48 -11 -3%0A-32 -20 -46 -36 -23 -28 -25 -39 -25 -118 0 -74 3 -93 21 -115 20 -25 23 -26%0A132 -26 140 0 163 10 160 65 -4 86 -21 231 -31 256 -17 43 -72 99 -96 99 -13%0A0 -30 -8 -38 -17z'/%3E%3C/g%3E%3C/svg%3E%0A">
                </div>
                <div>
                    <span id="logoText"><br />QKYG GAMES</span>
                </div>
            </div>
            <div id="searchBoxMain">
                <div class="searchBox">
                    <div class="searchGlass">
                        <img src="Images/search.png">
                    </div>
                    <!-- 게시글 검색 기능 -->
                    <form action="Controller" method="GET">
                        <input type="text" id="searchTitleIn" name="searching" placeholder="  검색어를 입력해주세요." spellcheck="false" autocomplete="off"/>
                    	<input type="hidden" name="command" value="communitySearch"/>
                    </form>
                </div>
            </div>
            <div class="boardFlex">
            	<!-- 전체게시글 중 6개 -->
                <div class="leftBarAll">
                    <table>
                        <tr class="showBoardType">
                            <td><span>&emsp;전체글 보기</span></td>
                        </tr>
                        <tr class="allBoardTitle">
                            <th class="titleAll"><span>제목</span></th>
                            <th class="writeAll"><span>작성자</span></th>
                            <th class="dayAll"><span>작성일</span></th>
                            <th class="viewAll"><span>조회</span></th>
                        </tr>
                    <%
					    for (int i = 0; i < allPosts.size(); i++) {
					        PostDTO post = allPosts.get(i);
					%>
					        <tr class="allBoardItems">
					            <td class="titleAll">
					                <a href="Controller?command=showPostAction&showPostNo=<%out.print(post.getPostNo());%>">
					                    <span><% out.print(post.getTitle()); %></span>
					                </a>
					            </td>
					            <td class="writeAll"><span><% out.print(post.getNickname()); %></span></td>
					            <td class="dayAll"><span><% out.print(post.getUploadDate()); %></span></td>
					            <td class="viewAll"><span><% out.print(post.getViewCnt()); %></span></td>
					        </tr>
					<%
					    }
					%>


                    </table>
                </div>
                <!-- 조회수 높은 6개의 게시글 불러오기 -->
                <div class="leftBarHot">
                    <table>
                        <tr class="showBoardType">
                            <td><span>&emsp;베스트 게시글</span></td>
                        </tr>
                        <tr class="hotBoardTitle">
                            <th class="titleHot"><span>제목</span></th>
                            <th class="writerHot"><span>작성자</span></th>
                            <th class="viewHot"><span>조회</span></th>
                        </tr>
		                    <%
		                    	for (int i = 0; i < hotPosts.size(); i++) {
            		                PostDTO post = hotPosts.get(i);
		                    %>
							    <tr class="hotBoardItems">
							        <td class="titleHot">
							            <a href="Controller?command=showPostAction&showPostNo=<% out.print(post.getPostNo()); %>">
							                <span><% out.print(post.getTitle()); %></span>
							            </a>
							        </td>
							        <td class="writerHot"><span><% out.print(post.getNickname()); %></span></td>
							        <td class="viewHot"><span><% out.print(post.getViewCnt()); %></span></td>
							    </tr>
							<% } %>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
