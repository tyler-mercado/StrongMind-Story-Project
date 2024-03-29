# README

This Rails application provides a simple interface for creating and managing pizzas and pizza toppings. I designed the pizzas and toppings to be displayed as tables because of how easy it is visually distinguish one object from another. The navbar at the top makes it easier for users to switch between managing pizzas and toppings. The buttons on each page are also more visually appealing than links, and easier to click on as well. When creating or editing a pizza/topping, there is a select menu for the user to choose from certain options. I was originally going to do a dropdown bar, but that caused some complicated issues when I wanted to save selected dropdown option as well as when I wanted the dropdown bar to display the selected option. I did get the dropdown bar working as I wanted to, but there was an issue in which every time the page would load it would not let the user click on it until they manually refreshed the page. I spent a long time trying to resolve this issue before deciding on trying a select menu, which worked far better and was a lot simpler to implement. When editing a pizza or topping, the dropdown bar would also never display the option that was previously selected and always defaulted back to the label. 

<h2>Pizza Features</h2>
  <li>Create new and unique pizza creations</li>
  <li>Choose from four different crust options</li>
  <li>Add as many toppings as you want</li>
  <li>Edit/Update an existing pizza's name, crust, and/or toppings</li>
  <li>Delete pizzas you no longer want</li>

<h2>Topping Features</h2>
  <li>Create new and unique toppings</li>
  <li>Specify and update the current inventory stock for a topping</li>
  <li>Delete toppings you no longer want</li>

<h2>Built With</h2>
  <li>Ruby</li>
  <li>Rails</li>
  <li>SQLite3 (Development)</li>
  <li>PostgreSQL (Production)</li>
  <li>Bootstrap</li>
  <li>Custom CSS</li>

<h2>Installation</h2>
<ol>
  <li>Make sure you have installed the following (in the order shown if not already on your computer):</li>
    <ol type="a">
      <li>Git Bash: https://git-scm.com/download</li>
      <li>Rails: https://hotframeworks.com/railsinstaller-org/</li>
      <p>(Even though this is not the most recent version of Rails, this will install all the other necessary dependencies we need such as SQLite3. No need to worry about uninstalling the old version either.)</p>
      <li>Ruby (now installing the most recent version of Ruby): https://rubyinstaller.org/</li>
      <li>Open the Git Bash terminal and run it as Administrator. Run the command 'ruby -v' to verify you are using the most recent version of Ruby, and if you are, run the command 'gem install rails' to get the latest version of rails.</li>
    </ol>
  <li>Clone the repository in Git Bash</li>
    <ol type="a">
      <li>git clone https://github.com/tyler-mercado/StrongMind-Story-Project.git</li>
      <li>cd StrongMind-Story-Project</li>
    </ol>
  <li>Install the required gems</li>
    <ol type="a">
      <li>bundle install</li>
    </ol>
  <li>Setup the database</li>
    <ol type="a">
      <li>rails db:create db:migrate db:seed</li>
    </ol>
  <li>Start the Rails server</li>
    <ol type="a">
      <li>'rails server' or 'rails s'</li>
    </ol>
  <li>Visit "http://localhost:3000" to view the application</li>
</ol>

<h2>Testing</h2>
Before tests can be run, make sure all pending database migrations are resolved for the test environment:
<li>rails db:migrate RAILS_ENV=test</li>
Tests can then be run with the following command: 
<li>rails test</li>
</br>
If there are any issues encountered with the gem file, run the following commands to ensure everything is properly updated:
<li>gem update --system</li>
<li>gem update</li>
