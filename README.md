# GitHub Actions for GCP
Often times you will need to implement CI/CD for existing apps. Sometimes these apps have a great deal of complexity. This means that in addition to troubleshooting issues with networks, firewalls, authentication, security policies not just with your specific target resource but also with other resources that your app might depend on.... you may also experience issues related to what's going on inside the app itself. 

I've found that being able to prove that your DevOps work runs on a simple hello world app can make it easier to have a conversation with the app developers on what the problem might be. Conversely, if your work fails to build and run a hello world app, you can be confident that there is a problem on your end.

This repo is for testing out GitHub Actions for GCP using simple hello world apps. 