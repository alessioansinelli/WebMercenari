﻿/* Cookie Policy */
$(document).ready(function () {
    $.cookieBar({
        message: "Questo sito utilizza i cookie per raccogliere dati anonimi sulle visite.",
        acceptButton: true,
        acceptText: "Accetto",
        declineButton: true,
        declineText: "Disabilita i cookie"
    });
});



/* Google Analytics */
(function (i, s, o, g, r, a, m) {
    i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
        (i[r].q = i[r].q || []).push(arguments)
    }, i[r].l = 1 * new Date(); a = s.createElement(o),
  m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
})(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');


if (jQuery.cookieBar('cookies')) {
    ga('create', 'UA-21345901-2', 'auto');
    ga('send', 'pageview');
}

$(document).ready(function ($) {
    $('#full-width-gallery-slider').royalSlider({
        fullscreen: {
            enabled: true,
            nativeFS: true
        },
        controlNavigation: 'thumbnails',
        autoScaleSlider: true,
        autoScaleSliderWidth: 960,
        autoScaleSliderHeight: 600,
        loop: true,
        imageScaleMode: 'fit-if-smaller',
        navigateByClick: true,
        numImagesToPreload: 2,
        arrowsNav: true,
        arrowsNavAutoHide: true,
        arrowsNavHideOnTouch: true,
        keyboardNavEnabled: true,
        fadeinLoadedSlide: true,
        globalCaption: true,
        globalCaptionInside: false,
        thumbs: {
            appendSpan: true,
            firstMargin: true,
            paddingBottom: 4
        }
    });
});