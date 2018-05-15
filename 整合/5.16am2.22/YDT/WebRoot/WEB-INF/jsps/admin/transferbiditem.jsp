<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="../common/top.jsp" %>

			
				<div class="con_r">
					<div class="friend">
						<span class="t">公告管理</span>
					</div>
					<div class="jilu">

						<ul class="hd_bd tab_t blue ul_h">
							<a id="noticelist">
								<li class="cur" style="width:780px">完善贷款申请项目资料</li>
							</a>

							<script type="text/javascript">
							</script>
						</ul>
						<div class="bd" id="bd1">
							<div class="tab_c">
								<div class="sel_type">
									<form action="${pageContext.request.contextPath}/manager/transferbiditem" method="post" id="info">
										<li><span>贷款项目编号：</span><input type="text" name="itemCommonId" id="itemCommonId" class="ipt1" value="${itemCommonId}" maxlength="50" readonly="readonly" /></li>

										<li><span>信用等级：</span><input type="text" name="creditLevel" id="creditLevel" class="ipt1" value="${indus.enterpriseName }" maxlength="50" /></li>
										<li><span>借款用途：</span><input type="text" name="loanUse" id="loanUse" class="ipt1" value="${indus.chainType }" maxlength="50"  /></li>
										<li><span>还款来源：</span><input type="text" name="repaymentResource" id="repaymentResource" class="ipt1" value="${indus.planRate }" maxlength="50"  /></li>
										<li><span>抵押物情况：</span><input type="text" name="pawnInfo" id="pawnInfo" class="ipt1" value="${indus.deadline }" maxlength="50" /></li>
										<li><span>企业背景：</span><input type="text" name="factoryBackground" id="factoryBackground" class="ipt1" value="${indus.minInvesMoney }" maxlength="50"  /></li>
										<li><span>风控措施：</span><input type="text" name="riskControlMethod" id="riskControlMethod" class="ipt1" value="${indus.returnType }" maxlength="50"  /></li>
										<input type="button" style="width:100px;text-align: center ; margin-left: 400px" value="返回上一页" onclick="history.go(-1)" />

										<input type="submit" style="width:100px;text-align: center;margin-left: 10px" />
									</form>
								</div>

								</form>
							</div>

							<script type="text/javascript">
								/*实现分页  */
								var stime = null;
								var etime = null;
								var itemStatus = null;
								var title = null;
								var pageNo = null;
								var totalPageCount = null;

								$(document).ready(function() {
									stime = $("#stime").val();
									etime = $("#etime").val();
									itemStatus = $("#itemStatus option:selected").val();
									title = $("#title").val();
									pageNo = $("#currentPageNo").html();
									pageNo = parseInt(pageNo);
									totalPageCount = $("#totalPageCount").html();
									totalPageCount = parseInt(totalPageCount);

								})

								$("#previousPage").click(function() {

									$("#stime").val(stime);
									$("#etime").val(etime);
									$("#itemStatus option:selected").val(itemStatus);
									$("#title").val(title);
									if(pageNo > 1) {
										$("#pageNo").val(pageNo - 1);
									}
									$("#form_submit").submit();
								});
								$("#nextPage").click(function() {
									$("#stime").val(stime);
									$("#etime").val(etime);
									$("#itemStatus option:selected").val(itemStatus);
									$("#title").val(title);
									if(pageNo < totalPageCount) {
										$("#pageNo").val(pageNo + 1);
										$("#form_submit").submit();
									}
								});
							</script>
						</div>
					</div>
					<input type="hidden" id="path" path=${pageContext.request.contextPath} />
					<!--使用ajax请求实现管理员对贷款项目的审核的操作-->
					<script type="text/javascript">
						/*将项目状态改成进入审核，之后用户无法撤销项目申请*/
						$(".intoCheck").click(function() {
							var obj = $(this);
							var path = $("#path").attr("path");
							var a = obj.attr("index");

							if($("[iteStatusName='iteStatusName'][index=" + a + "]").html() == "项目未审核") {
								$.ajax({
									type: "get",
									url: path + "/manager/updateIteStatus",
									async: true,
									data: {
										itemCommonId: obj.attr("itemCommonId"),
										iteStatus: "0"
									},
									dataType: "json",
									success: function(data) {

										if(data.result == "success") {

											$("[iteStatusName='iteStatusName'][index=" + a + "]").html("审核中");

										} else {
											alert("项目加入审核失败");
										}
									},
									error: function() {
										alert("未能成功发送数据");
									}
								});

							} else {
								alert("只能添加未审核状态的项目");
							}

						});

						/*给出审核结果，审核通过的可以进行后续的资料完善进而转化成招标项目  */
						$(".checkResult").click(function() {

							var obj = $(this);
							var path = $("#path").attr("path");
							var a = obj.attr("index");
							if($("[iteStatusName='iteStatusName'][index=" + a + "]").html() == "审核中") {
								if(confirm("确认提交审核结果？")) {
									if(confirm("确认审核通过？")) {
										$.ajax({
											type: "get",
											url: path + "/manager/updateIteStatus",
											async: true,
											data: {
												itemCommonId: obj.attr("itemCommonId"),
												iteStatus: "1"
											},
											dataType: "json",
											success: function(data) {

												if(data.result == "success") {

													$("[iteStatusName='iteStatusName'][index=" + a + "]").html("审核通过");
													alert("审核通过了");
												} else {
													alert("项目审核失败");
												}
											},
											error: function() {
												alert("未能成功发送数据");
											}
										})
									} else {
										$.ajax({
											type: "get",
											url: path + "/manager/updateIteStatus",
											async: true,
											data: {
												itemCommonId: obj.attr("itemCommonId"),
												iteStatus: "2"
											},
											dataType: "json",
											success: function(data) {
												if(data.result == "success") {

													$("[iteStatusName='iteStatusName'][index=" + a + "]").html("审核未通过");
													alert("项目审核未通过");
												} else {
													alert("项目审核失败");
												}
											},
											error: function() {
												alert("未能成功发送数据");
											}
										})
									}

								}
							} else {
								alert("只能审核状态为审核中的项目");
							}
						});

						/*进行完善资料，进入到完善资料页面，完成申请抵押贷款项目到招标项目的转变 */
						$(".addInfo").click(function() {
							if($("[iteStatusName='iteStatusName'][index=" + a + "]").html() == "审核通过") {
								var obj = $(this);
								var path = $("#path").attr("path");
								var a = obj.attr("index");
								window.location.href = path + "/manager/transferapplyloantobiditem?itemCommonId=" + obj.attr("itemCommonId");
							} else {
								alert("只能为审核通过的项目进行资料完善")
							}

						})
					</script>
					<div class="bd" style="display:none" id="bd2">
						<div class="tab_c">
							<div class="sel_type">
								<form id="form_submit" action="${pageContext.request.contextPath }/manager/addnotice" method="post">
									<table class="tb_jk tb1">
										<thead>
											<tr class="tr0">
												<th>公告标题：</th>
												<td class="t2"><input type="text" name="noticeTitle"></td>
											</tr>
											<tr class="tr0">
												<th>来源：</th>
												<td class="t2"><input type="text" name="noticeFrom"></td>
											</tr>
											<tr>
												<th>公告内容：</th>
												<td class="t2"><input type="text" name="noticeContent"></td>
											</tr>
											<tr>
												<th>所属板块：</th>
												<td class="t2">
													<select name="noticeTypeId">
														<option value="-10" selected="selected">未选择</option>
														<c:forEach items="${dataDirectories}" var="dataDirectory">
															<option value="${dataDirectory.valueId }">${dataDirectory.valueName }</option>
														</c:forEach>
													</select>
												</td>
											</tr>

										</thead>

									</table>
									<input type="button" style="width:100px;text-align: center ; margin-left: 400px" value="返回上一页" onclick="history.go(-1)" />

									<input type="submit" style="width:100px;text-align: center;margin-left: 10px" />
								</form>
							</div>
							<script>
							</script>

						</div>
					</div>

				</div>
			
			<%@ include file="../common/foot.jsp" %>