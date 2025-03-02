# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.find_by(email_address: "admin@test.com", role: :admin)

if !user
  User.create(email_address: "admin@test.com", password: "admin123", role: :admin)
end

post1 = Post.find_by(title: "Leveraging Hotwire with Ruby on Rails: A Modern Approach to Real-Time Web Applications")

if !post1
  post1 = Post.create(title: "Leveraging Hotwire with Ruby on Rails: A Modern Approach to Real-Time Web Applications",
  body: "In the ever-evolving landscape of web development, Ruby on Rails (Rails) has maintained its reputation as a powerful, developer-friendly framework. However, as user expectations rise for more dynamic and real-time features, developers often face the challenge of keeping their applications interactive without over-complicating the architecture.

  Enter **Hotwire**—a revolutionary approach to handling real-time, interactive elements in web applications, seamlessly integrated into the Rails ecosystem. In this post, we’ll explore how Hotwire enhances Ruby on Rails, simplifying the process of building modern web apps that respond in real-time without heavy reliance on JavaScript or complex front-end frameworks.

  ### What is Hotwire?

  Hotwire is a set of technologies created by the makers of Ruby on Rails to enable faster, more dynamic web experiences. It is an acronym for **HTML Over The Wire**, and it leverages three key components:

  1. **Turbo** – Turbo speeds up navigation and page updates by replacing traditional JavaScript-based methods of handling page changes. It provides tools like **Turbo Drive**, which replaces full page reloads with partial page updates, and **Turbo Frames**, which allow you to update parts of the page without a full reload.

  2. **Stimulus** – Stimulus is a modest JavaScript framework that works well with Turbo to enhance the interactivity of a page. Unlike heavy front-end frameworks, Stimulus is designed to sprinkle small, targeted pieces of JavaScript on the page, allowing for interactivity without overwhelming complexity.

  3. **Strada (experimental)** – An upcoming tool that extends Hotwire's capabilities into native mobile apps.

  Together, these tools help build highly interactive and real-time applications with minimal JavaScript, relying mostly on server-rendered HTML, a hallmark of the Ruby on Rails philosophy.

  ### Why Hotwire for Rails?

  **1. Simplified Development Workflow**

  Rails developers are accustomed to convention over configuration, which is part of what makes the framework so approachable. Hotwire follows this same philosophy by minimizing the need for front-end frameworks like React or Vue.js. With Hotwire, you can implement dynamic content updates, push notifications, and user interactions with less code and complexity.

  The real magic happens when Turbo and Stimulus work together. Turbo allows the server to handle page rendering and updates, while Stimulus provides the hooks needed for client-side interactions. Developers no longer need to worry about heavy JavaScript logic for managing UI states—Hotwire handles that for you.

  **2. Real-Time Updates Without Overloading the Front-End**

  When building applications that need to deliver real-time updates, such as chat apps or live dashboards, developers often turn to technologies like WebSockets. While WebSockets are powerful, they can require complex setups and large amounts of custom JavaScript to manage connections and updates.

  Hotwire brings the power of real-time updates to Rails with **Turbo Streams**, which makes it easy to broadcast updates from the server to the client. Using Turbo Streams, your application can broadcast changes to specific parts of the page, like adding new records to a list or updating a form field, without the need for writing custom WebSocket code.

  **3. Improved Performance**

  Because Hotwire minimizes the need for client-side JavaScript and only updates HTML over the wire, it reduces the size of JavaScript bundles and enhances performance. This is particularly beneficial for users with slower internet connections or low-powered devices. By updating the HTML and sending only the necessary changes, Hotwire optimizes your web app’s performance, making it faster and more efficient.

  ### Real-World Use Cases for Hotwire

  - **Live Chats**: Implementing a real-time chat feature is easy with Hotwire, as messages can be pushed to the client instantly without reloading the entire page or relying on complex front-end frameworks.
    
  - **Live Notifications**: Hotwire enables notifications, such as updates to user profiles, comments, or system statuses, to appear in real-time, enhancing the user experience.
    
  - **Collaborative Features**: If you are building applications like document collaboration or task management tools, Hotwire’s Turbo Streams allow multiple users to see live changes instantly.

  - **Interactive Dashboards**: Real-time dashboards that update data dynamically, such as displaying user statistics or financial metrics, can be easily implemented with Hotwire.

  ### How to Get Started with Hotwire in Ruby on Rails

  Getting started with Hotwire in a Rails application is simple. Since Hotwire is officially supported by Rails, you can integrate it with just a few steps.

  1. **Install Hotwire Gems**: 
    You can add Hotwire to your Rails project by adding the following to your Gemfile:
    ```ruby
    gem 'hotwire-rails'
  ")

  post1.banner_image.attach(io: File.open(Rails.root.join("public/train.jpg")), filename: "train.jpg")
end

post2 = Post.find_by(title: "Why Ruby on Rails is Better than ReactJS for Web Development")

if !post2
  post2 = Post.create(title: "Why Ruby on Rails is Better than ReactJS for Web Development",
  body: 'When building modern web applications, two names often come up in the discussion: Ruby on Rails (Rails) and React. While both are highly popular in the web development world, they serve different purposes and offer distinct advantages. For certain projects, Ruby on Rails can be the better choice, especially when you need a full-stack solution. In this post, we’ll explore why Ruby on Rails can be considered a better option than React, particularly for comprehensive web application development.

#### 1. **All-in-One Solution**

Ruby on Rails is a full-stack framework, which means it provides everything you need to build both the back-end and front-end of your web application. From routing and database management to views and controllers, Rails has everything built-in to get your project off the ground quickly. 

On the other hand, React is a JavaScript library specifically focused on building user interfaces. To create a full-stack web application with React, you typically need to integrate it with other technologies like Express or Node.js, which can increase complexity.

#### 2. **Speed of Development**

Ruby on Rails is built with developer productivity in mind. It’s designed to help developers build web applications quickly and efficiently. With features like scaffolding, migrations, and a vast array of gems, Rails allows you to rapidly prototype and deploy applications with less boilerplate code.

While React is great for creating dynamic user interfaces, when it comes to full-stack development, you need to set up additional tooling and configuration. The speed of development in Rails often outweighs the flexibility of React, especially for traditional web applications.

#### 3. **Built-in Security Features**

Rails comes with a robust set of built-in security features that help safeguard your application. By default, it protects against common vulnerabilities like Cross-Site Scripting (XSS) and SQL Injection, which are critical for maintaining the safety of your web application. 

React doesn’t provide these kinds of built-in security features, as it is focused primarily on the front-end. While you can implement security features in a React application, it requires more effort and vigilance on the developer’s part.

#### 4. **Simplicity and Scalability**

Ruby on Rails is known for its simplicity, thanks to its adherence to the "convention over configuration" philosophy. This means that Rails makes decisions for you, which reduces the amount of configuration and setup needed to get your application running.

Scalability is another area where Ruby on Rails excels. Rails applications follow well-established patterns like Model-View-Controller (MVC), making it easy to manage complex applications as they grow. As your application becomes more complex, Rails scales seamlessly without requiring significant architectural changes.

React, by comparison, can become complex as your application grows. Managing state and data flow across components often requires the use of additional libraries like Redux, adding to the development overhead.

#### 5. **Rich Ecosystem and Community Support**

Rails has been around for more than a decade, and during that time, it has developed a rich ecosystem of libraries and tools that you can integrate directly into your project. The Rails community is large, supportive, and full of resources, including tutorials, gems, and plugins that make solving common problems much easier.

React, while it has a similarly large and active community, is largely focused on the front-end. Rails’ comprehensive ecosystem includes everything you need for back-end development, which is invaluable when you’re building full-stack applications.

#### 6. **Convention Over Configuration**

Rails follows the "convention over configuration" principle, meaning that it provides sensible defaults and requires minimal configuration to get started. This leads to faster development times and reduces the chances of errors. It’s a great option for developers who want to focus on solving business problems instead of dealing with complex setup and configuration.

React does not impose as many conventions, giving developers more flexibility but also more responsibility in terms of deciding how to structure their application. This can be an advantage for experienced developers, but for teams or those new to development, Rails’ conventions can be a big help in keeping things organized.

#### 7. **Integrated Testing Tools**

Ruby on Rails includes built-in tools for automated testing, making it easy to test your models, controllers, and views. It’s designed to make test-driven development (TDD) a seamless part of your workflow.

React requires additional setup for testing, often requiring third-party libraries like Jest or Mocha for unit and component tests. While React’s testing ecosystem is powerful, Rails offers a more integrated solution, which is helpful for developers who prefer an all-in-one approach.

#### 8. **Ideal for Full-Stack Applications**

Ruby on Rails shines when you need a full-stack framework. With Rails, you can easily handle both the server-side logic and front-end views without needing to integrate multiple different tools. It provides a unified development experience, from the database layer to the user interface.

React, on the other hand, is mainly focused on building user interfaces and often requires additional technologies like Express, Django, or Flask for the back-end. This leads to more complexity and integration work that Rails takes care of for you.

#### Conclusion

Ruby on Rails is an excellent choice for developers who need to build full-stack applications quickly, securely, and with minimal configuration. While React is a powerful library for building dynamic user interfaces, Ruby on Rails provides a more complete and integrated solution for full-stack web development. By offering a rich ecosystem, built-in security, speed of development, and a focus on convention over configuration, Rails remains one of the best frameworks for rapidly building web applications.')

  post2.banner_image.attach(io: File.open(Rails.root.join("public/railsvsreact.png")), filename: "railsvsreact.png")
end

post3 = Post.find_by(title: "How to Create a Hotwire Native App Using Ruby on Rails")

if !post3
  post3 = Post.create(title: "How to Create a Hotwire Native App Using Ruby on Rails",
  body: "In recent years, web development has seen a surge in modern technologies that aim to improve both developer productivity and user experience. Hotwire, a new framework introduced by Basecamp, is one of the most exciting technologies that seamlessly blends server-side rendering with dynamic updates on the client-side. When combined with Ruby on Rails, Hotwire enables you to build fast, real-time applications without relying heavily on JavaScript frameworks like React or Vue.

In this post, we'll guide you through the process of building a Hotwire-native app using Ruby on Rails. By the end, you'll understand the core concepts of Hotwire and how to leverage them to create a fast, real-time web application.

### What is Hotwire?

Hotwire (HTML Over The Wire) is an umbrella for several technologies that aim to reduce the need for complex JavaScript frameworks while still delivering rich, interactive applications. Hotwire consists of three main components:

1. **Turbo** – Handles page navigation and partial page updates.
2. **Stimulus** – A modest JavaScript framework that enhances HTML with simple behavior.
3. **Strada** (in preview) – Adds support for building native mobile apps using the same principles as Hotwire for web applications.

For now, we’ll focus on Turbo and Stimulus, which together allow you to build reactive, fast web apps with minimal JavaScript.

### Setting Up Your Rails Project with Hotwire

#### 1. **Create a New Rails Application**

The first step is to create a new Rails application if you don’t have one set up already. Open your terminal and run the following command:

```bash
rails new hotwire_app --skip-javascript")

  post3.banner_image.attach(io: File.open(Rails.root.join("public/ios.jpg")), filename: "ios.jpg")
end