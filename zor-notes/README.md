Task 1: Scaffolding

Scaffolding in Rails generates a controller for the model with standard RESTful actions, allowing CRUD operations.

Implementation

The controller handling CRUD operations can be found in:
./app/controllers/notes_controller.rb

Working

Start the Rails server.

Follow the localhost link.

Append "/model_name" to the URL (in this case, /notes).


Task 2: Turbo

Turbo is a tool in Rails that speeds up web applications by reducing the need for full-page reloads. It achieves this by handling page updates via WebSockets.

Implementation

Turbo Streams dynamically update the page when creating, updating, or deleting notes.

Located in: app/views/notes/ (e.g., create.turbo_stream.erb, update.turbo_stream.erb, destroy.turbo_stream.erb)

Working

Creating a Note: Instantly appears at the bottom without refreshing the page.

Updating a Note: Replaces the note dynamically.

Deleting a Note: Instantly removes the note from the page.

Task 3: Filters in Rails

Filters in Rails are used to execute code before, after, or around controller actions. They help in authentication, logging, validation, and other functionalities without cluttering the controller methods.

Implementation

Used a before_action filter called set_note. This is a Rails controller hook that runs before specific actions (show, edit, update, destroy). It ensures that the @note instance variable is set before executing those actions.

Working

Filters execute before or after the controller actions based on their type.

They enhance security, logging, and validation.

Reduce redundant code by handling common logic in a single place.