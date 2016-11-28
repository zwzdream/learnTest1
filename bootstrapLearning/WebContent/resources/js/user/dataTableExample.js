$(function(){
	$table=$('#dataTable');
   initTable();
});
function doQry(){
	/**
	 * 在执行fnClearTable()方法时，实际调用了一次fnDraw方法，该方法会调用Ajax请求（原条件的请求），
	 * 然后在initTable()时，会再一次调用Ajax请求（新参数请求），
	 * 查看Datatable发现fnClearTable方法实际上还有一个布尔值参数来控制是否执行fnDraw方法，
	 * resultDataTable.fnClearTable(false);表示执行fnClearTable方法时不调用fnDraw方法
	 */
	   $table.dataTable().fnClearTable(false);
	   initTable();
}

function initTable(){
	var username = $('#username').val();
	$table.DataTable({
    	searching: false,
    	iDisplayLength: 5,//pagesize
    	aLengthMenu: [5, 10, 15, 20],
    	bLengthChange: true,//是否允许选择分页
    	bProcessing: true,
    	bServerSide: true,
    	destroy: true,
    	bPaginate: true,
    	sDom: "<'row'<'col-md-6'l><'col-md-6'f>r>t<'row'<'col-md-12'i><'col-md-12 center-block'p>>",
        sPaginationType: "bootstrap",
        oLanguage: {
        	"sProcessing":"正在加载中......",
        	"sLengthMenu":"每页显示 _MENU_ 条记录",
            "sZeroRecords":"对不起，查询不到相关数据！",
            "sSearch":"搜索",
            "oPaginate" : {
                "sFirst" : "首页",
                "sPrevious" : "上一页",
                "sNext" : "下一页",
                "sLast" : "末页"
            }
        },
    	sAjaxSource: ctx+'/User/username/list?username='+username, //'GET'to server url
        //"ajax": { "url": ctx+'/User/username/list?username='+username, "type": "POST" },
   	aoColumns:[
    		{mData:'id'},
    		{mData:'username'},
    		{mData:'password'},
    		{mData:'mail'},
    		{mData:'telphone'},
    		{mData:'permission'},
    		{mData:'date'},
    		{sDefaultContent: ''}
    	],
    	fnRowCallback: function(nRow, aData, iDisplayIndex) {
    		$('td:eq(7)', nRow).html('<a class="btn btn-info" href="#" onclick="edit(\''+ aData.id + '\')";>'
	    			+'<i class="glyphicon glyphicon-edit icon-white"></i>Edit</a>&nbsp;'
	    			+'<a class="btn btn-danger" href="#" onclick="del(\''+ aData.id + '\')";>'
	    			+'<i class="glyphicon glyphicon-trash icon-white"></i>Delete</a>');
    	},

/*    	fnRowCallback: function(nRow, aData, iDisplayIndex) {
    		var tableSetings = this.fnSettings(); 
    		//var paging_length = tableSetings._iDisplayLength;  //pagesize
    		var page_start = tableSetings._iDisplayStart;
    		$('td:eq(0)', nRow).html(page_start+iDisplayIndex+1);
    		$('td:eq(1)', nRow).html(aData.firstName+' '+aData.lastName);
    		if(aData.gender){
    			$('td:eq(3)', nRow).html('<span class="label-success label label-default">Male</span>');
    		}else{
    			$('td:eq(3)', nRow).html('<span class="label-warning label label-default">Female</span>');
    		}
    		if(aData.type=='add'){
    			$('td:eq(4)', nRow).html('<a class="btn btn-info" href="#" onclick=ajaxContent(\"/Resource/toEditAdd\","resourceId='+ aData.id +'");>'
    	    			+'<i class="glyphicon glyphicon-edit icon-white"></i>Edit</a>&nbsp;'
    	    			+'<a class="btn btn-danger" href="#" onclick=ajaxContent(\"/Resource/toDeleteAdd\","resourceId='+ aData.id +'");>'
    	    			+'<i class="glyphicon glyphicon-trash icon-white"></i>Delete</a>');
    		}else if(aData.type=='import'){
    			$('td:eq(4)', nRow).html('<a class="btn btn-info" href="#" onclick=ajaxContent(\"/Resource/toEditImport\","resourceId='+ aData.id +'");>'
    	    			+'<i class="glyphicon glyphicon-edit icon-white"></i>Edit</a>&nbsp;'
    	    			+'<a class="btn btn-danger" href="#" onclick=ajaxContent(\"/Resource/toDeleteImport\","resourceId='+ aData.id +'");>'
    	    			+'<i class="glyphicon glyphicon-trash icon-white"></i>Delete</a>');
    		}
    		
    		return nRow;
    	},*/
    	fnInitComplete: function(oSettings, json) { 
            //
        }
    });
}
function edit(id){
	ajaxContent('/User/toEdit/' + id);
}
function del(id){
	ajaxContent('/User/delete/' + id);
}