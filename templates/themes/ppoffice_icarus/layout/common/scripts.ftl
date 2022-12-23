<script src="${theme_base!}/source/lib/jquery/jquery.min.js"></script>

<#include "../plugin/gallery.ftl">
<#include "../plugin/outdated-browser.ftl">
<#include "../plugin/back-to-top.ftl">


<script src="${theme_base!}/source/js/bundle.js"></script>

<script>
    var url = location.href;
    var urlstatus = false;
    $(".navbar-start a").each(function () {
        if ((url + '/').indexOf($(this).attr('href')) > -1 && $(this).attr('href') != '/') {
            $(this).addClass('is-active');
            urlstatus = true;
        } else {
            $(this).removeClass('is-active');
        }
    });
    if (!urlstatus) {
        $(".navbar-start a").eq(0).addClass('is-active');
    }
</script>