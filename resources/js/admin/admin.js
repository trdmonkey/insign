import './bootstrap';

import 'vue-multiselect/dist/vue-multiselect.min.css';
import flatPickr from 'vue-flatpickr-component';
import VueQuillEditor from 'vue-quill-editor';
import Notifications from 'vue-notification';
import Multiselect from 'vue-multiselect';
import VeeValidate from 'vee-validate';
import 'flatpickr/dist/flatpickr.css';
import VueCookie from 'vue-cookie';
import { Admin } from 'craftable';
import VModal from 'vue-js-modal'
import Vue from 'vue';

import './app-components/bootstrap';
import './index';

import 'craftable/dist/ui';

Vue.component('multiselect', Multiselect);
Vue.use(VeeValidate, {strict: true});
Vue.component('datetime', flatPickr);
Vue.use(VModal, { dialog: true, dynamic: true, injectModalsContainer: true });
Vue.use(VueQuillEditor);
Vue.use(Notifications);
Vue.use(VueCookie);

new Vue({
    mixins: [Admin],
});

document.addEventListener('DOMContentLoaded', () => {
    const header = document.querySelector('header .navbar');
    if (!header) return;

    // evitar duplicados
    if (document.querySelector('.insign-header-logo')) return;

    const logo = document.createElement('div');
    logo.className = 'insign-header-logo';
    logo.innerHTML = `<img src="/images/insign-logo.svg" alt="InSign">`;

    header.prepend(logo);
});


const footer = document.querySelector('footer');
if (footer) {
    footer.innerHTML = 'InSign © 2025 – Plataforma educativa';
}
