let app = new Vue({
	el: '#pi',
	data() {
		return {

			chartData: {
				pp: 2,
				columns: ['dataUsage', 'percent'],
				rows: [{
					dataUsage: 'Media',
					percent: 0.6
				}]
			}
		}
	}
})

/* 메세지 스크롤 */
$(document).ready(function() {


	$('#fileTrasfer').click(function() {
		$('#upload').trigger('click');
	})

	$('#upload').change(function() {
		var fileObj = $(this).value;
		pathHeader = fileObj.lastIndexOf("\\");
		pathMiddle = fileObj.lastIndexOf(".");
		ileName = fileObj.substring(pathHeader + 1, pathMiddle);
		alert();

	});
	$("#sendDatabtn").click(function() {
		alert($(".message-content").prop("scrollHeight"));
		$(".messages-content ").scrollTop(320);
	});
});