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
								<li class="cur" style="width:390px">添加抵押物</li>
							</a>
						
							<script type="text/javascript">
							</script>
						</ul>
						<div class="bd"  id="bd2">
							<div class="tab_c">
								<div class="sel_type">
									<form id="form_submit" action="${pageContext.request.contextPath }/manager/saveaddpawn" method="post">
										<table class="tb_jk tb1">
											<thead>
												<tr class="tr0">
													<th>抵押物名称：</th>
													<td class="t2"><input type="text" name="titleName"></td>
												</tr>
												<tr class="tr1">
													<th>图片1：</th>
													<td class="t2"><input type="file" name="picture1"></td>
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