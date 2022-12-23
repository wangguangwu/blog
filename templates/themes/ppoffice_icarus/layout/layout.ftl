<#macro layout title,canonical>
<#include "common/navbar.ftl">
<#include "common/widget.ftl">
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <title>${title!}</title>

    <meta name="keywords" content="${meta_keywords!}"/>
    <meta name="description" content="${meta_description!}">
    <meta property="og:type" content="website">
    <meta property="og:title" content="${title!}">
    <meta property="og:url" content="${canonical}">
    <meta property="og:site_name" content="${title!}">
    <meta property="og:description" content="${meta_description!}">
    <meta property="og:locale" content="zh">
    <meta property="og:image" content="${user.avatar!}">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="${title!}">
    <meta name="twitter:description" content="${meta_description!}">
    <meta name="twitter:image" content="${user.avatar!}">

    <link rel="canonical" href="${canonical!}" />

    <link rel="alternative" href="${atom_url!}" title="${blog_title!}" type="application/atom+xml">

    <@global.head />

    <link rel="stylesheet" href="${theme_base!}/dist/style.css">

    <link rel="stylesheet" href="//unpkg.com/@fortawesome/fontawesome-free@5.4.1/css/all.min.css">
    <link rel="stylesheet" href="//fonts.loli.net/css?family=Ubuntu:400,600|Source+Code+Pro">

    <#if (is_post?? || is_sheet??) && settings.katex_enable!false>
        <link rel="stylesheet" href="https://unpkg.com/katex@0.12.0/dist/katex.min.css" />
    </#if>

    <style>
        body>.footer,
        body>.navbar,
        body>.section {
            opacity: 0
        }
    </style>

    <#if is_post?? || is_sheet??>
        <style>
            .content code .number{
                background-color: transparent;
                border-radius: 0;
                display: unset;
                font-size: .85em;
                margin-right: 0;
                padding:0;
                vertical-align: unset;
            }
        </style>
    </#if>

    <#if is_post?? || is_sheet??>
        <link rel="stylesheet" href="${theme_base!}/source/lib/lightgallery/css/lightgallery.min.css">
        <link rel="stylesheet" href="${theme_base!}/source/lib/justifiedGallery/css/justifiedGallery.min.css">
    </#if>
    <link rel="stylesheet" href="${theme_base!}/source/lib/outdatedbrowser/outdatedbrowser.min.css">

    <script src="${theme_base!}/source/lib/pace/pace.min.js"></script>

    <#if is_post?? || is_sheet??>
        <link rel="stylesheet" type="text/css" href="${theme_base!}/source/lib/prism/css/prism-${settings.code_pretty!'Default'}.css" />
        <script type="text/javascript" src="${theme_base!}/source/lib/prism/js/prism.js"></script>
    </#if>
</head>
<body class="is-3-column">
    <@navbar 'page' />
    <section class="section">
        <div class="container">
            <div class="columns">
                <div class="column is-8-tablet is-8-desktop is-6-widescreen has-order-2 column-main">
                    <#nested />
                </div>
                <@widget 'left' />
                <@widget 'right' />
            </div>
        </div>
    </section>
    <#include "common/footer.ftl">
    <#include "common/scripts.ftl">

    <#include "search/local.ftl">
</body>
</html>
</#macro>