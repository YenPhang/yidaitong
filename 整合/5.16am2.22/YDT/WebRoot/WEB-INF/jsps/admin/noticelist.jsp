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
									<form id="form_submit" action="${pageContext.request.contextPath }/manager/tonoticelist" method="post">
										<ul class="ul_v">
											<li>
												<p>选择日期：</p>
												<input type="date" id="stime" name="stime" value="" class="Wdate" />
												<span>-</span>
												<input type="date" id="etime" name="etime" value="" class="Wdate" />
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
												<select name="noticeTypeId">
													<option value="-10" selected="selected">未选择</option>
													<c:forEach items="${dataDirectories}" var="dataDirectory">
														<option value="${dataDirectory.valueId }">${dataDirectory.valueName }</option>
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
									</form>
								</div>
								<table class="tb_jk tb1">
									<thead>
										<tr class="tr0">
											<th>公告标题</th>
											<td class="t2">公告发布时间</td>
											<td class="t4">公告来源</td>
											<td class="t5">公告内容/td>
												<td class="t6">公告所属板块</td>
												<td class="t7">查看</td>
												<td class="t8">修改</td>
												<td class="t9">删除</td>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${notices}" var="notice">
											<tr>
												<td>${notice.noticeTitle }</td>

												<td id="timeformat">
													<fmt:formatDate value="${notice.noticeTime }" pattern="yyyy-MM-dd"></fmt:formatDate>
												</td>
												<td>${notice.noticeFrom }</td>
												<td>
													${fn:substring(notice.noticeContent,0,20)}</td>
												<td>${notice.noticeTypeName}</td>
												<td>
													<a class="viewNotice" href="javascript:;" noticeId=${notice.noticeId }><img src="${pageContext.request.contextPath }/statics/admin/noticelist/images/localimages/read.png" alt="查看" title="查看" /></a>
												</td>
												<td>
													<a class="modifyNotice" href="javascript:;" noticeId=${notice.noticeId }><img src="${pageContext.request.contextPath }/statics/admin/noticelist/images/localimages/read.png" alt="修改" title="修改" /></a>
												</td>
												<td>
													<a class="deleteNotice" href="javascript:;" noticeId=${notice.noticeId }><img src="${pageContext.request.contextPath }/statics/admin/noticelist/images/localimages/read.png" alt="删除" title="删除" /></a>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<input type="hidden" id="path" path=${pageContext.request.contextPath} />
						<!--使用ajax请求实现管理员对公告的操作-->
						<script type="text/javascript">
							/*查看内容详情*/
							$("#view").click(function() {
								window.location.href = ""

							})
							$(function() {
								/*获取jsp中的path*/
								var path = $("#path").attr("path");
								//通过jquery的class选择器（数组）
								//对每个class为viewUser的元素进行动作绑定（click）
								/**
								 * bind、live、delegate
								 * on
								 */
								$(".viewNotice").on("click", function() {
									//将被绑定的元素（a）转换成jquery对象，可以使用jquery方法
									var obj = $(this);
									window.location.href = path + "/manager/toviewnotice?noticeId=" + obj.attr("noticeId");
								});

								$(".modifyNotice").on("click", function() {
									var obj = $(this);
									window.location.href = path + "/manager/tomodifynotice?noticeId=" + obj.attr("noticeId");
								});

								
								$(".deleteNotice").on("click", function() {
									var obj = $(this);
									if(confirm("你确定要删除用户【" + obj.attr("noticeId") + "】吗？")){
										window.location.href = path + "/manager/deletenotice?noticeId=" + obj.attr("noticeId");

									}
									
								});

							
							});
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