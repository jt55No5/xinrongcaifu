(function(a){a.fn.pagination=function(b){a.fn.pagination.defaults={container:".wgt-pagination",total:0,pageIndex:1,pageSize:10,showCount:7,curCls:"selected",disabledCls:"disabled",callback:"load",showInfo:false,showFirst:false,showPageNum:true,showLast:false,callbackExtraArg:null,};var b=a.extend({},a.fn.pagination.defaults,b);this.each(function(){var d="",n=b.total,g=b.pageIndex,m=b.pageSize,f=Math.ceil(n/m),e=b.showCount,i=b.curCls,l=b.disabledCls,o=b.callback,oa=b.callbackExtraArg;if(b.showInfo){d+='<span class="wgt-pagination-info">'+b.showInfo+"</span>"}if(f>1){var c=Math.ceil(e/2),k=g<=c?1:(g-c+1),h=k+e-1;if(h>f||f<=e+1){h=f}if((h-k+1)<e){k=h+1-e}k=k<1?1:k;if(b.showFirst){if(f>1&&g!=1){d+='<a class="first" href="javascript:'+o+"("+1+","+m+","+oa+')">\u9996\u9875</a>'}else{d+='<a class="first '+l+'" href="javascript:;">\u9996\u9875</a>'}}if(g>k){d+='<a class="prev" href="javascript:'+o+"("+(g-1)+","+m+","+oa+');">\u4e0a\u4e00\u9875</a>'}else{d+='<a class="prev '+l+'" href="javascript:;">\u4e0a\u4e00\u9875</a>'}if(b.showPageNum){if(f>e+1&&g>=c+1){d+='<a href="javascript:'+o+'(1,'+m+','+oa+')">1</a>';if(k>2){d+='<a href="javascript:'+o+'(2,'+m+','+oa+')">2</a>'}d+='<a class="disabled" href="javascript:;">...</a>'}for(var j=k;j<=h;j++){if(j==g){d+='<a class="'+i+'" href="javascript:;">'+j+"</a>"}else{d+='<a href="javascript:'+o+"("+j+","+m+","+oa+')">'+j+"</a>"}}if(f>e&&(f-g>2)){d+='<a class="disabled" href="javascript:;">...</a>'}}if(g<h){d+='<a class="next" href="javascript:'+o+"("+(g+1)+","+m+","+oa+')">\u4e0b\u4e00\u9875</a>'}else{d+='<a class="next '+l+'" href="javascript:;">\u4e0b\u4e00\u9875</a>'}if(b.showLast){if(f>1&&g!=f){d+='<a class="last" href="javascript:'+o+"("+f+","+m+","+oa+')">\u5c3e\u9875</a>'}else{d+='<a class="last '+l+'" href="javascript:;">\u5c3e\u9875</a>'}}}a(this).html(d)})}})(jQuery);