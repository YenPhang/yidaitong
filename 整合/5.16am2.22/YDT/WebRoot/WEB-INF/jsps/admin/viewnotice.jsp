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
									
									
										
													<div>
													<span>公告标题：</span>
													<span class="t2">${notice.noticeTitle }</span>
													</div>
											<div>
													<span>公告发布时间：</span>
													<span class="t2"><fmt:formatDate value="${notice.noticeTime }" pattern="yyyy-MM-dd"></fmt:formatDate></span>
												</div>
												<div>
													<span>来源：</th>
													<span class="t2">${notice.noticeFrom }</span>
											</div>
												<div>
													<span>公告内容：</span>
													<span class="t2">${notice.noticeContent}</span>
													</div>
												<div>
													<span>所属板块：</span>
													<span class="t2">
													${notice.noticeTypeName }
													</span>
													</div>
										

										

										
										<input type="button" style="width:100px;text-align: center ; margin-left: 400px" value="返回上一页" onclick="history.go(-1)" />

									
									</form>
								</div>
								<script>
								</script>

							</div>
						</div>

					</div>
				</div>
			
			
			<%@ include file="../common/foot.jsp" %>