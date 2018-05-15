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
								<li class="cur" style="width:780px">公告详情</li>
							</a>
						</ul>

						<div class="bd"  id="bd2">
							<div class="tab_c">
								<div class="sel_type">
									<form id="form_submit" action="${pageContext.request.contextPath }/manager/modifynotice" method="post">
										<table class="tb_jk tb1">
											<thead>
												<tr class="tr0">
													<th>公告标题：</th>
													
													<td class="t2">
													<input type="hidden" name="noticeId" value="${notice.noticeId }"></input>
													<input type="text" name="noticeTitle" value="${notice.noticeTitle}"></td>
												</tr>
												<tr class="tr0">
													<th>发布时间：</th>
													<td class="t2"><input type="text" name="noticeTime" value="<fmt:formatDate value="${notice.noticeTime }" pattern="yyyy-MM-dd"></fmt:formatDate>"></td>
												</tr>
												<tr class="tr0">
													<th>来源：</th>
													<td class="t2"><input type="text" name="noticeFrom" value="${notice.noticeFrom}"></td>
												</tr>
												<tr>
													<th>公告内容：</th>
													<td class="t2"><input type="text" name="noticeContent" value="${notice.noticeContent}"></td>
												</tr>
												<tr>
													<th>所属板块：</th>
													<td class="t2">
														<select name="noticeTypeId">
															<option value="-10">未选择</option>
															<c:forEach items="${dataDirectories}" var="dataDirectory">
																<option value="${dataDirectory.valueId }"
																	<c:if test="${dataDirectory.valueId == notice.noticeTypeId }">selected = "selected"</c:if>
																
																>${dataDirectory.valueName }</option>
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
				</div>
			
			<%@ include file="../common/foot.jsp" %>