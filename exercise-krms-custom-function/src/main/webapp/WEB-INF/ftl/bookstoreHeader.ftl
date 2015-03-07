<#macro bookstore_header element>

<#assign homeLink = "landing">
<#assign oldPortalLink = "/trnapp/portal.do">

<header>
    <div class="header-container">
        <div>
          <div class="header-logo"><#-- image placeholder --></div>
          <div class="header-title">Bookstore!</div>
        </div>
        <nav>
            <ul>
                <li><a id="home-link" href="${homeLink}">Home</a></li>
                <li><a id="old-portal-link" href="${oldPortalLink}">Old Portal</a></li>
            </ul>
        </nav>
    </div>
</header>

</#macro>