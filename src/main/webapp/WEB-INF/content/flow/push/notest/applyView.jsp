<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
	<head>
		<title>请假流程</title>
		<%@ include file="/common/meta.jsp"%>
		<link rel="stylesheet" href="${ctx}/styles/css/style.css" type="text/css" media="all" />
		<script src="${ctx}/styles/js/jquery-1.8.3.min.js" type="text/javascript"></script>
		<script src="${ctx}/styles/js/snaker/snaker.util.js" type="text/javascript"></script>
	</head>

	<body>
		<form id="inputForm" action="" method="post" target="mainFrame">
			<input type="hidden" name="processId" value="${processId }" />
			<input type="hidden" name="orderId" value="${orderId }" />
			<input type="hidden" name="taskId" value="${taskId }" />
			<c:forEach items="${vars}" var="item">
			<table class="table_all" align="center" border="0" cellpadding="0"
			cellspacing="0" style="margin-top: 0px">
				<tr>
					<td class="td_table_1"><span>免测push申请人：</span></td>
					<td class="td_table_2" colspan="3">
						&nbsp;${item['push_notest_apply.operator']}
					</td>
				</tr>
				<tr>
					<td class="td_table_1"><span>push理由：</span></td>
					<td class="td_table_2" colspan="3">
						&nbsp;${item['reason'] }
					</td>
				</tr>
				<tr>
					<td class="td_table_1"><span>push文件：</span></td>
					<td class="td_table_2" colspan="3">
						&nbsp;${item['file'] }
					</td>
				</tr>
				<tr>
					<td class="td_table_1"><span>Boss审批：</span></td>
					<td class="td_table_2">
						&nbsp;${item['push_notest_approve.operator']}
					</td>
					<td class="td_table_1"><span>Diff确认：</span></td>
					<td class="td_table_2">
						&nbsp;${item['push_notest_diff_approve.operator']}
					</td>
				</tr>
			</table>
			</c:forEach>
		</form>
	</body>
</html>
