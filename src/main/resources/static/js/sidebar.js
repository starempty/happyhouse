  		var area_m = null, area_pyung = null, area_ft = null, area_yd = null;
  		
  		function onClickCalcul()
  		{
  			var area_sub_m = document.getElementById('area_m').value;
  			var area_sub_pyung = document.getElementById('area_pyung').value;
  			var area_sub_ft = document.getElementById('area_ft').value;
  			var area_sub_yd = document.getElementById('area_yd').value;

  			if(area_yd != area_sub_yd && area_sub_yd != '') {
  				
  				area_sub_m = area_sub_yd*0.836127;
  				area_sub_ft = area_sub_yd*9;
  				area_sub_pyung = area_sub_yd*0.252929;
  				
  			} else if(area_ft != area_sub_ft && area_sub_ft != '') {

  				area_sub_m = area_sub_ft*0.092903;
  				area_sub_yd = area_sub_ft*0.111111;
  				area_sub_pyung = area_sub_ft*0.028103;
  				  				
  			} else if(area_pyung != area_sub_pyung && area_sub_pyung != '') {

  				area_sub_m = area_sub_pyung*3.305785;
  				area_sub_yd = area_sub_pyung*3.953686;
  				area_sub_ft = area_sub_pyung*35.583175;
  				  				
  			} else {
  				
  				area_sub_pyung = area_sub_m*0.3025;
  				area_sub_ft = area_sub_m*10.76391;
  				area_sub_yd = area_sub_m*1.1959;
  				
  			}
  			
  			document.getElementById('area_m').value = Floor(area_sub_m,1);
  			document.getElementById('area_pyung').value = Floor(area_sub_pyung,1);
  			document.getElementById('area_ft').value = Floor(area_sub_ft,1);
  			document.getElementById('area_yd').value = Floor(area_sub_yd,1);
  		
  			area_m = Floor(area_sub_m,1);
  			area_pyung = Floor(area_sub_pyung,1);
  			area_ft = Floor(area_sub_ft,1);
  			area_yd = Floor(area_sub_yd,1);	
  		}
  		
  		function Floor(n, pos) 
  		{
			var digits = Math.pow(10, pos);
		
			var num = Math.floor(n * digits) / digits;
		
			return num.toFixed(pos);
		}
  		
  		function onMouseOverPrevOfferings(id)
  		{
  			var prev = document.getElementById('prev_offerings_'+id);
  			var prev_img = document.getElementById('prev_offerings_img_'+id);
			var id_next = Number(id) + 1;
			var id_prev = Number(id) - 1;
			
			prev_img.style.display = '';
  			prev.style.border = '1px solid rgb(210, 210, 210)';
  			
  			if(document.getElementById('prev_offerings_'+String(id_next))) { 
  				document.getElementById('prev_offerings_'+String(id_next)).style.borderTop = '1px solid #FFFFFF';
  			}
  			
  		}
  		
  		function onMouseOutPrevOfferings(id)
  		{
  			var prev = document.getElementById('prev_offerings_'+id);
  			var prev_img = document.getElementById('prev_offerings_img_'+id);
			var id_next = Number(id) + 1;
			var id_prev = Number(id) - 1;
			var id_prev_prev = Number(id) - 2;
			var ynTop = true;
			
			if(prev) { 
	  			prev_img.style.display = 'none';  			
	  			prev.style.border = '1px solid #FFFFFF';
	  			
	  			
  				for(var i = 0; i < current_cnt;i ++){
  					if(current_array[i] != false || String(current_array[i]) == '0') {
	  					if(document.getElementById('prev_offerings_'+String(i))&& document.getElementById('prev_offerings_'+String(i)).style.display != 'none') {
	  						
	  						if(ynTop) document.getElementById('prev_offerings_'+String(i)).style.borderTopColor = '#FFFFFF';
	  						else document.getElementById('prev_offerings_'+String(i)).style.borderTopColor = '#D2D2D2';
	  						
	  						ynTop = false;
	  					}	
  					}
  				}
			}
  		}
  		
  		function clearcookie(name)
  		{
  		    today   = new Date();
  		    today.setDate(today.getDate() - 1);
  		    document.cookie = name + "=; path=/; expires=" + today.toGMTString() + ";";
  		}
  		
  		function setCookie( cookieName, cookieValue, expireDate )
  		{
  			 var today = new Date();
  			 today.setDate( today.getDate() + parseInt( expireDate ) );
  			 document.cookie = cookieName + "=" + escape( cookieValue ) + "; path=/; expires=" + today.toGMTString() + ";";
  		}
  		
  		function getcookie(name)
  		{
  		    cookie  = document.cookie;
  		    name    = name + "=";
  		    idx     = cookie.indexOf(name);
  		    if(cookie && idx >= 0) {        
  		        
  		        tmp     = cookie.substring(idx, cookie.length);
  		        deli    = tmp.indexOf(";");
  		        if(deli > 0) {
  		            return tmp.substring(name.length, deli);
  		        } else {
  		            return tmp.substring(name.length);
  		        }
  		        
  		    }
  		}
  		
  		function prevOfferingsDelete(offerings,id)
  		{
  			var prev = document.getElementById('prev_offerings_'+id);
  			var prev_img = document.getElementById('prev_offerings_img_'+id);
			var id_next = Number(id) + 1;
			var cookies = getcookie('neonet_offerings');
			
  			if(document.getElementById('prev_offerings_'+String(id_next))) { 
  				document.getElementById('prev_offerings_'+String(id_next)).style.borderTopColor = '#FFFFFF';
  			}
  			
  			current_array[id] = false;
  			
  			prev.parentNode.removeChild(prev);
  			
  			cookies = unescape(cookies)
  			
  			cookies = cookies.replace(offerings,'');
  			
  			cookies = cookies.replace(",,",",");
  			
  			setCookie('neonet_offerings',cookies,1);
  			
  			if(id == current_top_num) {
  				current_top_num = current_top_num - 1
  			}
  			
			var resultcnt = 0;
  			
  			for(var i = 0; i < current_cnt; i++) {
  				if(current_array[i] != false || String(current_array[i]) == '0') {
  					resultcnt = resultcnt+1;
  				}
  			}
  			
  			if(resultcnt > 2) {
  				
  				initRecentlyBox();
  				
  			} else if(String(resultcnt) == '0'){
  				
  				var recently_box = document.getElementById('recently_offerings_box');
  				
  				var p_tag = document.createElement('p');
  				
  				p_tag.innerHTML = '최근 본<br>매물이<br>없습니다.';
  				
  				p_tag.style.fontSize ='11px';
  				p_tag.style.color ='#D2D2D2';
  				p_tag.style.marginTop = '5px';
  				p_tag.style.marginBottom = '5px';
  				
  				recently_box.appendChild(p_tag); 
  				
  			}
  		}
  		
  		var current_array = new Array('0','1','2','3','4');
  		
  		var current_cnt = '5';
  		var current_top_num = '0';
  		
  		
  		function initRecentlyBox()
  		{
  			var firstnum;
  			
  			for(var i = 0, j = 0, bools = true; i < current_cnt; i++) 
  			{
  				if(current_array[i] != false || String(current_array[i]) == '0') {
  					if(bools) {
  	  					if(document.getElementById('prev_offerings_'+String(i)).style.display != 'none')
  	  	  				{
  	  	  					firstnum = i;
  	  	  					bools = false;
  	  	  				}
  					} else {
  						if(j < 2) {
  							document.getElementById('prev_offerings_'+String(i)).style.display = '';
  							j ++;
  							
  						} else {
  							document.getElementById('prev_offerings_'+String(i)).style.display = 'none';
  						}
  					}
  				}

				if(Number(current_cnt)-1 == i && j < 2) {
					for(var k = i, z = 0; k >= 0; k--)
					{
						if(current_array[k] != false || String(current_array[k]) == '0') {
							if(z < 3) {
								document.getElementById('prev_offerings_'+String(k)).style.display = '';
								z++;
							} else {
								break;
							}
						}
					}
				}
  			}
  		}
  		
  		function onClickRecentlyImgUp()
  		{
  			var id = Number(current_top_num);
  			var id_next = Number(current_top_num) + 1;
  			var id_prev = Number(current_top_num) - 1;
  			var targetnum = current_top_num;
  			var check = 0;
  			var targetbottomnum = null;
  			
  			
  			if(posibleUpDown('up',id)) {
				return;  				
  			}
  			
  			for(var i = id_prev,j = 0,bools = true; i >= 0; i--)
  			{
  				if(document.getElementById('prev_offerings_'+String(i))) 
  				{
  					if(document.getElementById('prev_offerings_'+String(i)).style.display == 'none'){
						if(bools) targetnum = i;
						
						bools = false;	
  					}
  				}
  			}
  			
  			for(var i = targetnum, j = 0; i < current_cnt; i++)
  			{
  				if(document.getElementById('prev_offerings_'+String(i))) 
  				{
  					
  					if(j < 3) {
  						document.getElementById('prev_offerings_'+String(i)).style.display = '';	
  					} else {
  						document.getElementById('prev_offerings_'+String(i)).style.display = 'none';
  					}
  					
  					j++;
  				}
  			}
  			
  			
  			initLineRecentlyBox('up',targetnum);
  			  			
  		}
  		
  		function onClickRecentlyImgDown()
  		{
  		
  			var id = Number(current_top_num);
  			var id_next = Number(current_top_num) + 1;
  			var id_prev = Number(current_top_num) - 1;
  			var targetnum = current_top_num;
  			var targetbottomnum = null;
  			var check = 0;

  			if(posibleUpDown('down',id)) {
				return;  				
  			}
  			
  			for(var i = id,j = 0,bools = true; i < current_cnt; i++){
  				
				if(document.getElementById('prev_offerings_'+String(i))) {
					
					if(document.getElementById('prev_offerings_'+String(i)).style.display != 'none') {
						if(bools) targetnum = i;
						
						bools = false;	
					}
					
					j++;
					
					if(j == 4) {
						targetbottomnum = i;
						break;
					}
				}
			}

  			if(targetbottomnum != null) {
  			
  	  			document.getElementById('prev_offerings_'+String(targetnum)).style.display = 'none';
  	  			document.getElementById('prev_offerings_'+String(targetbottomnum)).style.display = '';
	
  			}
  			
  			initLineRecentlyBox('down',targetnum);

  		}
  		
  		function initLineRecentlyBox(gbn , targetnum)
  		{
  			var check = 0;
  			
  			if(gbn == 'down') {
  				
  	  			for(var i = Number(targetnum)+1; i < current_cnt; i++)
  	  			{
  	  				if(current_array[i] != false || String(current_array[i]) == '0'){
  	  					targetnum = i;
  	  					break;
  	  				}	
  	  			}
  	  			
  	  			current_top_num = targetnum;
  	  			
  	  			
  			} else if(gbn == 'up') {
  				
  	  			for(var i = Number(targetnum); i >= 0; i--)
  	  			{
  	  				if(current_array[i] != false || String(current_array[i]) == '0'){
  	  					targetnum = i;
  	  					break;
  	  				}	
  	  			}
  	  			
  	  			current_top_num = targetnum;
  	  			
  	  			check = 0;
  	  			
  			}

	  		onMouseOutPrevOfferings(targetnum);
  		}
  		
  		function posibleUpDown(gbn , id)
  		{
  			var check = 0;

			if(gbn == 'down') {
				
	  			for(var i = id; i < current_cnt; i++) {
	  				if(current_array[i] != false || String(current_array[i]) == '0') {
	  					check = check+1;
	  				}	
	  			}
	  			
		  		if(check < 4){
		  			return true;
		  		}
		  		
			} else if(gbn == 'up') {
				
	  			for(var i = id; i >= 0; i--) {
	  				if(current_array[i] != false || String(current_array[i]) == '0') {
	  					check = check+1;
	  				}	
	  			}
	  			
		  		if(check == 0) {
		  			return true; 
		  		}
			}  			
  		}

  	var initMovingTime = null;
  	
  	function reMoveTime() {
  		
  		clearTimeout(initMovingTime);
  		
  	}
  	
  	function initMoving(target, position, topLimit, btmLimit) {
  		if (!target) {
  			return false;
  		}
  		
  		var obj = target;
  		var initTop = position;
  		var bottomLimit = Math.max(document.documentElement.scrollHeight, document.body.scrollHeight) - btmLimit - obj.offsetHeight;
  		var top = initTop;

  		obj.style.position = 'absolute';

  		if (typeof(window.pageYOffset) == 'number') {
  			var getTop = function() {
  				return window.pageYOffset;
  			}
  		} else if (typeof(document.documentElement.scrollTop) == 'number') {
  			var getTop = function() {
  				return Math.max(document.documentElement.scrollTop, document.body.scrollTop);
  			}
  		} else {
  			var getTop = function() {
  				return 0;
  			}
  		}

  		if (self.innerHeight) {	
  			var getHeight = function() {
  				return self.innerHeight;
  			}
  		} else if(document.documentElement.clientHeight) {
  			var getHeight = function() {
  				return document.documentElement.clientHeight;
  			}
  		} else {
  			var getHeight = function() {
  				return 500;
  			}
  		}
  		
  		function move() {
  			if (initTop > 0) {
  				pos = getTop() + initTop;
  			} else {
  				pos = getTop() + getHeight() + initTop;
  			}

  			if (pos > bottomLimit) {
  				pos = bottomLimit;
  			}
  			
  			if (pos < topLimit) {
  				pos = topLimit;
  			}

  			interval = top - pos;
  			top = top - interval / 3;
  			obj.style.top = top + 'px';
  			
  			initMovingTime = window.setTimeout(function () {
  				move();
  			},25);
  		}

  		move();

  	}
  	
	// Function : 텍스트박스에 오로지 숫자만 입력할수 있도록 방지
	// Example  : <input type="text" OnKeyPress="num_only()" style='ime-mode:disabled'>
	function num_only()
	{  
		if(((event.keyCode < 48) || (event.keyCode > 57)) && event.keyCode != 46) {
		    if(event.preventDefault){
		        event.preventDefault(); 
		    } else {
		        event.returnValue = false; 
		    }
		}
	}
  	
	function calcMoney(gbn)
	{
		var height = "800";
		var width = "660";
		
		if( gbn == "sale_prc" ) {
			target_url = "http://www.neonet.co.kr/novo-rebank/view/consult/calculator/Brokerage.neo?sale_prc=";
		} else if( gbn == "lend_mnt" ) {
			target_url = "http://www.neonet.co.kr/novo-rebank/view/consult/calculator/Mogijiloan.neo?lend_mnt=";
			height = "500";
		} else if( gbn == "buyprice" ) {
			target_url = "http://www.neonet.co.kr/novo-rebank/view/consult/calculator/Transfer.neo?buyprice=";
		} else if( gbn == "boo_money" ) {
			target_url = "http://www.neonet.co.kr/novo-rebank/view/consult/calculator/Registration.neo?boo_money=";
			height = "890";
		} else if( gbn == "total_estate_tax") {
		    target_url = "http://www.neonet.co.kr/novo-rebank/view/consult/calculator/TotalEstateTax.neo?public_money=";
		} else if( gbn == "estate_tax") {
		    target_url = "http://www.neonet.co.kr/novo-rebank/view/consult/calculator/EstateTax.neo?public_money=";
		} else if( gbn == "subscription_calc") {
		    target_url = "http://www.neonet.co.kr/novo-rebank/view/consult/calculator/SubscriptionCalc.neo?public_money=";
		    width = "670";
		    height = "750";
		} else if (gbn == "office_benefit") { 
			target_url="http://www.neonet.co.kr/novo-rebank/view/housing/popup_OfficetelBenefitCalculator.neo";
			height = "680";
		} else if( gbn == "sangga_benefit") {	
			target_url="http://www.neonet.co.kr/novo-rebank/view/consult/calculator/SanggaBenefit.neo";
		}

		window.open(target_url,'window','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=no,width='+width+', height='+height);
	}
	
	
	function goSisePurchase()
	{
		location.href = "http://www.neonet.co.kr/novo-rebank/view/market_price/MarketPriceDBPurchase.neo";	
	}
	
