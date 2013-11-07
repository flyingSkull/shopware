;(function($, undefined) {
    "use strict";

    var progressConfig = [{
        countUrl: 'applyMigrationsCount',
        requestUrl: 'applyMigrations',
        counterText: shopwareTranslations.counterTextMigrations
    }, {
        countUrl: 'rebuildAllAssignmentsCount',
        requestUrl: 'rebuildAllAssignments',
        counterText: shopwareTranslations.counterTextAssignments
    }, {
        countUrl: 'getArticleCount',
        requestUrl: 'initAlsoBought',
        counterText: shopwareTranslations.counterTextAlsoBought
    }, {
        countUrl: 'getArticleCount',
        requestUrl: 'initSimilarShown',
        counterText: shopwareTranslations.counterTextSimilarShown
    }, {
        countUrl: 'getArticleCount',
        requestUrl: 'initTopSeller',
        counterText: shopwareTranslations.counterTextTopSellers,
        finalFcnt: function() {
            $('.primary').removeClass('invisible');
            $('.progress').removeClass('progress-info').addClass('progress-success').removeClass('active');
            $('#start-ajax').hide();

            $(window).unbind('beforeunload');

            refreshCounterText(5, shopwareTranslations.updateSuccess, false);
        }
    }], counter = 1, configLen = progressConfig.length;

    var format = function(str) {
        for (var i = 1; i < arguments.length; i++) {
            str = str.replace('%' + (i - 1), arguments[i]);
        }
        return str;
    };

    var refreshCounterText = function(step, stepText, showSuffix) {
        var len = configLen, suffix,
            container = $('.counter-text');

        showSuffix = (showSuffix !== undefined) ? showSuffix : true;
        suffix = (showSuffix) ? '...' : '';

        container.find('.counter-numbers').html(format('%0 / %1', step, len));
        container.find('.counter-content').html(stepText + suffix);

        return true;
    };

    var startProgress = function(config) {
        var currentConfig = config.shift(),
            progressBar = $('.progress .bar');

        $('.progress').addClass('active');
        refreshCounterText(counter, currentConfig.counterText || '');
        counter++;

        $.ajax({
            url: currentConfig.countUrl,
            timeout:180000
        }).done(function(data) {
            var maxCount = data.count;
            var batchSize = data.batchSize;
            progressBar.width(0);

            currentConfig.maxCount = maxCount;

            if (maxCount > 0) {
                doRequest(0, batchSize, currentConfig, config);
            } else {
                progressBar.width('100%');
                if (config.length > 0) {
                    progressBar.width('0%');
                    startProgress(config);
                } else {
                    currentConfig.finalFcnt();
                }
            }
        });
    };

    var doRequest = function(offset, limit, currentConfig, config) {
        var maxCount = currentConfig.maxCount,
            progressBar = $('.progress .bar');

        $.ajax({
            url: currentConfig.requestUrl,
            data: { offset: offset, limit: limit }
        }).done(function(data) {
            if (!data.success) {
                $('.alert-error').show().html('<h2>Error</h2> Received the following error message:<br/>' + data + "<br><br>Please try to fix this error and restart the update.");
                return;
            }

            var progress = (offset + limit) / maxCount * 100;

            progress = progress + "%";
            progressBar.width(progress);

            if (offset < maxCount - 1) {
                doRequest(offset + limit, limit, currentConfig, config);
            } else {
                if (config.length > 0) {
                    startProgress(config);
                } else {
                    currentConfig.finalFcnt();
                }
            }
        });
    };

    $(document).ajaxError(function(event, jqxhr, settings, exception) {
        $('.alert-error').show().html('<h2>Error</h2> Received an error message.<br><strong>URL:</strong> ' + settings.url + '<br><strong>Message:</strong> ' + exception + "<br><br>Please try to fix this error and restart the update.");
        return;
    });


    $(document).ready(function() {
        // Set js class on the html tag
        $('html').removeClass('no-js').addClass('js');

        $('.language-selection').bind('change', function() {
            var $this = $(this),
                form = $this.parents('form'),
                action = form.find('.hidden-action').val();

            form.attr('action', action).trigger('submit');
        });


        $('#start-ajax').click(function() {
            startProgress(progressConfig);
            $('#start-ajax').hide();
            $('.secondary').hide();
            $('.counter-text').removeClass('hidden').next('.progress-text').addClass('hidden');

            $(window).bind('beforeunload', function() {
                return 'A system update is running.';
            });
        });

        $('.primary').bind('click', function(event) {
            var $this = $(this),
                form = $this.parents('form');

            if(!$.checkForm(form)) {
                event.preventDefault();
                return false;
            }
        });

        $('.secondary').bind('click', function() {
            var active = $('.navi-tabs li.active'),
                prev = active.prev('li');

            prev.addClass('active');
        });

        $('input').bind('keyup', function() {
            var required = $(this).attr('required');
            if(required) {
                var $this = $(this);

                if(!$this.val().length) {
                    $this.removeClass('inline-success').addClass('inline-error');
                } else {
                    $this.removeClass('inline-error').addClass('inline-success');
                }
            }

            var active = $('.navi-tabs li.active'),
                next = active.next('li');

            next.removeClass('disabled');
        });
        $('select').bind('change', function() {
            if(!$.checkForm($(this).parents('form'))) {
                return false;
            }
            var active = $('.navi-tabs li.active'),
                next = active.next('li');

            next.removeClass('disabled');
        });

    });

    $.checkForm = function(form) {
        var inputs = form.find('input'),
            selects = form.find('select'),
            success = true;

        $.each(inputs, function(i, input) {
            var $input = $(input);

            if(!success) { return false; }

            if($input.hasClass('allowBlank')) {
                return success;
            }

            if($input.val().length === 0) {
                success = false;
            }
        });

        $.each(selects, function(i, select) {
            var $select = $(select);

            if(!success) { return false; }

            if($select.hasClass('allowBlank')) {
                return false;
            }

            if($select.val().length === 0) {
                success = false;
            }
        });

        return success;
    };
})(jQuery);
