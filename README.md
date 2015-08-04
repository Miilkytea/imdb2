##TEST CHANGES.. ABEL###

### Fix IMDB...as a team!

In the independent practice sections, throughout the rest of the lesson and the following lab, you'll work with the student next to you to create a working IMDB application by adding code to an existing project and using Git/GitHub to collaborate.  You have been given most of the app, including the views, in the starter code.

Your first job is to make the following commands work, without error:

```
bundle
rake db:setup # rake db:create && rake db:migrate && rake db:seed
```

Once `rake db:seed` works, start your application with:

```
rails s
```

... and visit the home page. You will need to work your way through the controllers and models to make sure you get rid of the errors.

**The team that wins will be able to click through every page of the application until all error messages are resolved. Your application will look like this (except now there are more links... :):**

<p align="center">
<img src="http://i.imgur.com/Fqun13q.png"
</p>

---

To start:

- The team lead should fork and clone the IMDB2 repo to their GitHub
- The team members should fork and clone the team lead's repo, so they have a local copy and can start working

An example way to work would be for team members to split the work into different features, like:

```
visit_home_page
```

or 

```
seed_db
```

Each student should work in their own branch and submit their work to the leader, who will merge it.

Note:

- The actor model should have an `age` method that returns the actors age by subtracting the actors `year_of_birth` from the `Time.now.year`
- The user model should have a `full_name` method that returns an interpolated string with the user's `first_name` and `last_name`