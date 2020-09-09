    require("@rails/ujs").start();
    require("turbolinks").start();
    require("@rails/activestorage").start();
    require("channels")
    require('css/application.scss');
    require('typeface-inter');

    require('@yaireo/tagify/src/tagify.scss');

    import Tagify from '@yaireo/tagify';
    window.Tagify = Tagify
    require.context('../images', true);
