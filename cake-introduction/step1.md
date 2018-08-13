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
