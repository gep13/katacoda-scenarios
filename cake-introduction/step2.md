This is your first step.

## Task

Add Cake tasks

```csharp
var target = Argument("target", "Hello");

Task("Hello")
  .Does(()=>
{
    
});

RunTarget(target);
```

`cake`{{execute}}
