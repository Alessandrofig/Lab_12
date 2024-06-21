[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/e4KYJ5SO)
# Lab 10

In this lab, you need to enable login, logout, and user registration for the web application.

## Instructions

In this lab, [Devise](https://github.com/heartcombo/devise) is used to enable login, logout, and user registration for the web application. The gem is already installed in the application. You need to add all necessary configurations to enable the following requirements:

1. The login page should be accessible to users who are not logged in.
2. The logout option should be accessible to users who are logged in.
3. The registration page should be accessible to users who are not logged in.
   1. The user should be able to register with the following fields:
      1. Name
      2. Email
      3. Password
      4. Password confirmation
4. After the user is registered, they should be redirected to the home page.
5. If the user is not logged in, they should only be able to view posts and comments, but not create, delete, or edit them.
6. If the user is logged in, they should be able to create, delete, or edit a post or comment.
   1. Posts or comments created by a logged-in user must be associated with that user by default and cannot be reassigned to another user.
   2. Users can only delete or edit their own posts or comments.
7. Create a user profile page that shows the user's name, email, and the posts and comments that the user has created.

## Extra Points

If you implement different user roles, such as an admin role with the ability to perform all actions, you will receive an additional 0.5 points.

