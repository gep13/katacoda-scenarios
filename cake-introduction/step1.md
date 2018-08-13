In order to get started with Cake, you are going to need a build script.  This is typically called `build.cake` (and this is what Cake looks for by default when no script name is provided), but you can call it whatever you want.  You should find a `build.cake` file already to go.

## Task

Create default build.cake file

<pre class="file" data-filename="app.js" data-target="replace">var target = Argument("target", "Hello");

Task("Hello")
.Does(()=>
{

});

RunTarget(target);
</pre>

`cake`{{execute}}
