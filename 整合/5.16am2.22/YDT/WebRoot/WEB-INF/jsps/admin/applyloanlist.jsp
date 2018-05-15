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
								<li class="cur" style="width:390px">公告列表</li>
							</a>
							<a id="addnotice">
								<li style="width:390px" id="addnotice">添加公告</li>

							</a>
							<script type="text/javascript">
							</script>
						</ul>
						<div class="bd" id="bd1">
							<div class="tab_c">
								<div class="sel_type">
									<form id="form_submit" action="${pageContext.request.contextPath }/manager/toapplyloanlist" method="post">
										<ul class="ul_v">
											<li>
												<p>选择日期：</p>
												<input type="date" id="stime" name="stime" value="${stime}" class="Wdate" />
												<span>-</span>
												<input type="date" id="etime" name="etime" value="${etime}" class="Wdate" />
												<div class="tool ab_r">
													<a class="on" id="all">全部</a>
													<a id="threemonth">最近3个月</a>
													<a id="halfyear">半年</a>
													<a id="oneyear">1年</a>
													<input type="hidden" id="dateType" name="dateType" value="0">

											</li>
											<li>
												<div class="error_date" style="color:red;"></div>
												</div>

												<script type="text/javascript">
													/*格式化时间，从而对input type为date的value赋值*/
													function timeformat(now) {
														//格式化日，如果小于9，前面补0  
														var day = ("0" + now.getDate()).slice(-2);
														//格式化月，如果小于9，前面补0  
														var month = ("0" + (now.getMonth() + 1)).slice(-2);
														//拼装完整日期格式  
														var today = now.getFullYear() + "-" + (month) + "-" + (day);

														//完成赋值  
														return today;
													};

													/*提交按钮对应的方法*/
													function searchclick() {
														var stime = $("#stime").val();
														var etime = $("#etime").val();
														if(stime != null && etime != null) {
															if(stime > etime) {
																$("#form_submit  .error_date").html("第一个日期要小于第二个日期");
															}
														}
														$("#form_submit").submit();
													};
													/*时间快捷按钮对应的方法*/
													$("#all").click(function() {
														var etime = new Date();
														var stime = new Date("1993-01-01");
														stime = timeformat(stime);
														etime = timeformat(etime);
														$("#stime").val(stime);
														$("#etime").val(etime);

													});
													$("#threemonth").click(function() {
														var etime = new Date();
														var stime = new Date();
														stime.setMonth(stime.getMonth() - 3);
														stime = timeformat(stime);
														etime = timeformat(etime);
														$("#stime").val(stime);
														$("#etime").val(etime);

													});
													$("#halfyear").click(function() {
														var etime = new Date();
														var stime = new Date();
														stime.setMonth(stime.getMonth() - 6)
														stime = timeformat(stime);
														etime = timeformat(etime);
														$("#stime").val(stime);
														$("#etime").val(etime);

													});
													$("#oneyear").click(function() {
														var etime = new Date();
														var stime = new Date();
														stime.setYear(stime.getFullYear() - 1);
														stime = timeformat(stime);
														etime = timeformat(etime);
														$("#stime").val(stime);
														$("#etime").val(etime);

													});
												</script>

											</li>
											<li class="li2">
												板块种类:
												<select name="iteStatus">
													<option value="-10" >未选择</option>
													<c:forEach items="${dataDirectories}" var="dataDirectory">
														<option value="${dataDirectory.valueId}"  
														<c:if test="${dataDirectory.valueId == iteStatus }" >selected="selected"</c:if>
														>${dataDirectory.valueName }</option>
													</c:forEach>
												</select>
												<p>关键字：</p>
												
												<div class="sch">
													<i class="opa"></i>
													<input type="text" name="title" value="" class="i_text" />
													<input type="button" id="searchButton" class="btn s_btn" onclick="javascript:searchclick()" />

												</div>
											</li>
										</ul>
										<input type="text" id="pageNo"  />
									</form>
								</div>
								<table class="tb_jk tb1">
									<thead>
										<tr class="tr0">
											<td>项目标题</td>
											<td class="t2">借款人id</td>
											<td class="t4">申请日期</td>
											<td class="t5">借款金额</td>
												<td class="t6">预期投资回报率</td>
												<td class="t7">期限</td>
												<td class="t8">项目状态</td>
												<td class="t9">进行审核</td>
												<td class="t9">审核结果</td>
												<td class="t9">完善资料</td>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${itemCommons}" var="itemCommon" varStatus="index">
											<tr>
												<td index=${index.count}>${itemCommon.iteTitle }</td>
												<td index=${index.count}>${itemCommon.loanerId }</td>
												<td id="timeformat" index=${index.count}>
													<fmt:formatDate value="${itemCommon.applyDate }" pattern="yyyy-MM-dd"></fmt:formatDate>
												</td>
												<td index=${index.count}>${itemCommon.iteLimitYuan }</td>
												<td index=${index.count}>${itemCommon.iteYearRate }</td>
												<td index=${index.count}>${itemCommon.iteRepayCount}</td>
												<td index=${index.count} iteStatusName="iteStatusName" >${itemCommon.iteStatusName}</td>
												<td  >
													<a class="intoCheck" index=${index.count} href="javascript:;" itemCommonId=${itemCommon.itemCommonId }><img src="${pageContext.request.contextPath }/statics/admin/noticelist/images/localimages/read.png" alt="查看" title="查看" /></a>
												</td>
												<td  index=${index.count}>
													<a class="checkResult" index=${index.count} href="javascript:;" itemCommonId=${itemCommon.itemCommonId }><img src="${pageContext.request.contextPath }/statics/admin/noticelist/images/localimages/read.png" alt="修改" title="修改" /></a>
												</td>
												<td  index=${index.count}>
													<a class="addInfo" index=${index.count} href="javascript:;" itemCommonId=${itemCommon.itemCommonId }><img src="${pageContext.request.contextPath }/statics/admin/noticelist/images/localimages/read.png" alt="删除" title="删除" /></a>
												</td>
											</tr>
										</c:forEach>
										
									</tbody>
								</table>
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
							var obj = $(this);
							var path = $("#path").attr("path");
							var a = obj.attr("index");
							if($("[iteStatusName='iteStatusName'][index=" + a + "]").html() == "审核通过") {
								var obj = $(this);
								var path = $("#path").attr("path");
								var a = obj.attr("index");
								window.location.href = path + "/manager/totransferapplyloantobiditem?itemCommonId=" + obj.attr("itemCommonId");
							} else {
								alert("只能为审核通过的项目进行资料完善")
							}

						})
					</script>
									</form>
																			<span id="currentPageNo" style="margin-left: 200px">${page.currentPageNo}</span>/<span id="totalPageCount">${page.totalPageCount} </span>页
																			<button id="previousPage">上一页</button><button id="nextPage">下一页</button>
																			<script type="text/javascript">
																			/*翻页功能  */
																			var currentPageNo = $("#currentPageNo").html();
																			var totalPageCount = $("#totalPageCount").html();
																			currentPageNo = parseInt(currentPageNo);
																			totalPageCount = parseInt(totalPageCount);
																			$("#previousPage").click(function(){
																				if(currentPageNo > 1){
																					$("#pageNo").html(currentPageNo-1);
																					
																				}
																			});
																			$("#nextPage").click(function(){
																				if(currentPageNo < totalPageCount){
																					$("#pageNo").html(currentPageNo+1);
																					
																				}
																			});
																			</script>
								
							</div>
							<script>
							</script>

						</div>
					</div>

				</div>
			
			
			<%@ include file="../common/foot.jsp" %>