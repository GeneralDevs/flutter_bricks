Hello, {{name}}!

The weather for {{city}} is currently {{condition}},
there are {{temperature}}
degrees, but it feels like {
{feels_like}}.

<!-- This is actually a boolean variable -->
{{#alerts_issued}}
There are some alerts you
might want to take a look at:
{{/alerts_issued}}

<!-- If the boolean value is false -->
{{^alerts_issued}}
There are no alerts!
{{/alerts_issued}}

<!-- This is actually a list -->
{{#alerts}}
{{alerts}}
{{/alerts}}
