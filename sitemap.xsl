<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html lang="en">
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>Sitemap | Fuehrer Painting LLC</title>
<meta name="robots" content="noindex"/>
<link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous"/>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&amp;display=swap" rel="stylesheet"/>
<style>
  *,*::before,*::after{box-sizing:border-box;margin:0;padding:0;}
  :root{--blue:#2B35AF;--blue-light:#4a90d9;--blue-bright:#60a5fa;--black:#050810;--black2:#0c1220;--black3:#111827;--border:#2B35AF44;--white:#ffffff;--muted:#94a3b8;}
  body{font-family:'Inter',sans-serif;background:var(--black);color:var(--white);line-height:1.6;padding:60px 20px;}
  .wrap{max-width:900px;margin:0 auto;}
  .brand{display:flex;align-items:center;gap:12px;margin-bottom:8px;}
  .brand img{height:34px;width:auto;}
  h1{font-size:clamp(24px,3.5vw,32px);font-weight:800;margin:24px 0 6px;}
  .sub{color:var(--muted);font-size:14px;margin-bottom:32px;}
  .count{display:inline-block;background:rgba(43,53,175,.18);border:1px solid var(--border);color:var(--blue-bright);font-size:12px;font-weight:700;letter-spacing:.06em;text-transform:uppercase;padding:5px 12px;border-radius:100px;margin-bottom:28px;}
  table{width:100%;border-collapse:collapse;background:var(--black2);border:1px solid var(--border);border-radius:12px;overflow:hidden;}
  thead th{text-align:left;font-size:11px;font-weight:700;letter-spacing:.08em;text-transform:uppercase;color:var(--muted);padding:14px 18px;border-bottom:1px solid var(--border);}
  tbody td{padding:13px 18px;font-size:14px;border-bottom:1px solid #1a2333;vertical-align:middle;}
  tbody tr:last-child td{border-bottom:none;}
  tbody tr:hover{background:rgba(43,53,175,.08);}
  a.pageurl{color:var(--blue-bright);text-decoration:none;font-weight:600;word-break:break-word;}
  a.pageurl:hover{text-decoration:underline;}
  .meta{color:var(--muted);font-size:13px;white-space:nowrap;}
  .priority-bar{display:inline-block;width:46px;height:6px;background:#1a2333;border-radius:100px;overflow:hidden;vertical-align:middle;margin-right:8px;}
  .priority-fill{display:block;height:100%;background:var(--blue-light);}
  footer{text-align:center;color:#4b5563;font-size:12px;margin-top:32px;}
  footer a{color:#6b7280;}
  @media(max-width:640px){.meta-col,.freq-col{display:none;}}
</style>
</head>
<body>
<div class="wrap">
  <div class="brand"><img src="/images/logo.png" alt="Fuehrer Painting LLC"/></div>
  <h1>XML Sitemap</h1>
  <p class="sub">Every indexable page on fuehrerpaintingllc.com — generated for search engines, readable by humans too.</p>
  <span class="count"><xsl:value-of select="count(sitemap:urlset/sitemap:url)"/> pages</span>
  <table>
    <thead>
      <tr>
        <th>Page</th>
        <th class="meta-col">Last Updated</th>
        <th class="freq-col">Priority</th>
      </tr>
    </thead>
    <tbody>
      <xsl:for-each select="sitemap:urlset/sitemap:url">
        <xsl:sort select="sitemap:priority" order="descending"/>
        <tr>
          <td><a class="pageurl" href="{sitemap:loc}"><xsl:value-of select="sitemap:loc"/></a></td>
          <td class="meta-col meta"><xsl:value-of select="sitemap:lastmod"/></td>
          <td class="freq-col meta">
            <span class="priority-bar"><span class="priority-fill"><xsl:attribute name="style">width:<xsl:value-of select="sitemap:priority * 100"/>%</xsl:attribute></span></span>
            <xsl:value-of select="sitemap:priority"/>
          </td>
        </tr>
      </xsl:for-each>
    </tbody>
  </table>
  <footer>
    <a href="/">fuehrerpaintingllc.com</a> &#8226; Contractor website by <a href="https://urbannicheco.com/">Urban Niche Co.</a>
  </footer>
</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
