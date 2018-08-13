When analysing a build script, Cake looks at all the Tasks that have been defined, and creates a Directed Acyclic Graph, to ensure that all Tasks are executed in order, and also executed only once.

## Task

Let's modify the build.cake slightly to create a dependency between the SecondTask and the FirstTask.  This is done using the `IsDependentOn` method, and takes as it's input the name of the dependent Task.

Copy the following into the build.cake file, and then execute the commands below.

<pre class="file" data-filename="build.cake" data-target="replace">var target = Argument("target", "FirstTask");

Task("FirstTask")
    .Does(()=>
    {
        Information("Hello World from FirstTask!");
    });

Task("SecondTask")
    .IsDependentOn("FirstTask")
    .Does(()=>
    {
        Information("Hello World from SecondTask!");
    });

RunTarget(target);
</pre>

Let's execute the FirstTask:

`cake --target=FirstTask`{{execute}}

Cake should still only show the output from the First Task.

And then let's execute the SecondTask:

`cake --target=SecondTask`{{execute}}

Cake will run execute both tasks, due to the dependency that was created between the SecondTask and the FirstTask.
