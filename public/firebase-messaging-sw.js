importScripts('https://www.gstatic.com/firebasejs/5.8.2/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/5.8.2/firebase-messaging.js'); 
firebase.initializeApp({
    messagingSenderId: "BGm4TLssK12bwIAD5pQsz35PfUgtAXyb5vVu7wjpA3Zu6OPzRRdKPHjh2EyZqqS26Qj7rZUszYP_Pko_KB-Tgps"
});
const messaging = firebase.messaging();
