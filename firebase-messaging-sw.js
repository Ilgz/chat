importScripts("https://www.gstatic.com/firebasejs/7.15.5/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/7.15.5/firebase-messaging.js");

//Using singleton breaks instantiating messaging()
// App firebase = FirebaseWeb.instance.app;

firebase.initializeApp({
apiKey: 'AIzaSyCU1aDl4g3pXn0syq1C0KBpdy5kK7NqCv8',
    appId: '1:82807448949:web:30b157176ae0ce87805f3c',
    messagingSenderId: '82807448949',
    projectId: 'taskmanager-39e18',
    authDomain: 'taskmanager-39e18.firebaseapp.com',
    storageBucket: 'taskmanager-39e18.appspot.com'
});

const messaging = firebase.messaging();
messaging.setBackgroundMessageHandler(function (payload) {
    const promiseChain = clients
        .matchAll({
            type: "window",
            includeUncontrolled: true
        })
        .then(windowClients => {
            for (let i = 0; i < windowClients.length; i++) {
                const windowClient = windowClients[i];
                windowClient.postMessage(payload);
            }
        })
        .then(() => {
            return registration.showNotification("New Message");
        });
    return promiseChain;
});
self.addEventListener('notificationclick', function (event) {
    console.log('notification received: ', event)
});