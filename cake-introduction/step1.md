In order to get started with Cake, you are going to need a build script.  This is typically called `build.cake` (and this is what Cake looks for by default when no script name is provided), but you can call it whatever you want.  You should find a `build.cake` file already to go.

## Task

Let's create a typical build.cake file.  Copy the below into the `build.cake` file, and click the `cake` button.

<pre class="file" data-filename="build.cake" data-target="replace">var target = Argument("target", "Hello");

Task("Hello")
    .Does(()=>
    {
        Information("Hello World!");
    });

RunTarget(target);
</pre>

`cake`{{execute}}

## What is this doing?

On the first line we are using a built in `alias` to grab a command line argument passed into Cake.  When there is no argument passed, a default value of `Hello` is used.

We then define a `Task` to actually do some work.  This task is named `Hello` and simply uses the `Information` alias to write out "Hello from Cake" to the command line.

The `RunTarget method is then called to execute the defined target, which by default, will be the Hello task.

The output from Cake will then show which Tasks were executed, how long they took, and whether the build was successful or not.
