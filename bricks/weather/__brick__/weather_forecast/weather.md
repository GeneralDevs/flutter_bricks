Hello, {{name}}!

the weather for {{city}} is currently {{condition}}, there are {{temperature}}
degrees, but it feels like {{feels_like}}

<!-- this is actually a boolean variable -->

{{#alerts_issued}}
There are some alerts you might want to take a look at:
{{/alerts_issued}}
<!-- if the boolean value is false -->
{{^alerts_issued}}
There are no alerts!
{{/alerts_issued}}


<!-- This is a actually a list -->
{{#alerts}}
{{alert}}
{{/alerts}}

<!-- if the list empty -->
{{^alerts}}
You are lucky today!
{{/alerts}}




