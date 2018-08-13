## Task

Let's create a typical build.cake file.  Copy the below into the `build.cake` file, and click the `cake` button.

<pre class="file" data-filename="build.cake" data-target="replace">var target = Argument("target", "FirstTask");

Task("FirstTask")
    .Does(()=>
    {
        Information("Hello World from FirstTask!");
    });

Task("SecondTask")
    .Does(()=>
    {
        Information("Hello World from SecondTask!");
    });

RunTarget(target);
</pre>

Let's execute the FirstTask:

`cake --target=FirstTask`{{execute}}

And then let's execute the SecondTask:

`cake --target=SecondTask`{{execute}}
