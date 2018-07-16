		<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
		<div class="content">
			<div class="sidebar">
				<tiles:insertAttribute name="sidebar" />
			</div>
			<div class="main">
				<tiles:insertAttribute name="main" />
			</div>		
		</div>