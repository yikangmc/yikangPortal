<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<%@ include file="/common/head.jsp"%>
<title>商品详情</title>
</head>
<body>
	<div class="container_12">
		<div class="grid_10">
			<div class="box round first grid">
				<h2>商品详情</h2>
				<div class="block">
					<table class="data display datatable" id="example">
						<tbody>
							<tr class="odd gradeA">
								<th>商品名称</th>
								<td><a>${product.product_name}</a></td>
								<th>创建时间</th>
								<td><fmt:formatDate value="${product.created_at }"
										type="both" /></td>
							</tr>
							<tr class="odd gradeA">
								<th>商品进价</th>
								<td><a>${product.purchase_price}</a></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
