It is possible to target different entry points into a Cake script.  For example, you might want to have a Cake script start at a specific task when running locally on your own machine, and at a different Task when running on say the AppVeyor Continuous Integration service.  These entry points are controlled using the `target` argument which was set up in the previous step.

## Task

Let's extend the build.cake file with another Task.  This task is no yet "connected" to the first task, but it will show how to can use different entry points into a Cake script.

Copy the following into the build.cake file, and then execute the commands below.

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

Cake should output `Hello World from FirstTask!`.

And then let's execute the SecondTask:

`cake --target=SecondTask`{{execute}}

Cake should output `Hello World from SecondTask!`
