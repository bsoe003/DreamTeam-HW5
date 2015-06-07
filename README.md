DreamTeam-HW
============================
### CSE134B Homework 5 | BullionTracker Application


####TODO:
* Fix CSS positioning for index.html when in mobile scale (Look into padding top of w1)
* Find better way to inform that user's email is invalid (if time permits)
* Consider merging change_password.html and change_email.html together? (if time permits)
* Email focus color change when error
* UI Bugs and Improvements

####TODO (Extra):
* analytic tracking for common user actions
* Phonegap (Pretty much impossible at this stage)

####BUG:
* cursor is not pointer (hand) when in mobile size (cursor still show up when it is on svg icon)
* error tracking may not work when AdBlock is on.

####ISSUE:
* Firebase seems to be really slow. This makes user think that certain featues are not working. Perhaps make a splash screen?

####NOTE:
* Users logged in with social media, cannot change email and password. So gear thing should only have links to change email and change password pages when logged with acutal email and password.

####DONE:
* Basic sign up and login feature 
* Minifying script for CSS and JS
```
sh minify.sh
```
* error tracking (TrackJS)
* change password page
* change email page