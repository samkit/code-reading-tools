#[Scala for the Impatient][]
> Author: Cay Horstmann

> Type: Ebook

##Chapter 1 - The Basics
######1.6. `apply == ()` call.

##Chapter 2 - Control Structures and Functions
######2.1. Use `:paste` on REPL to paste multiline code which interpreted can analyze and run.
######2.6. The generated collection is always compatible with first generator.
```scala
for (c <- "Hello"; i <- 0 to 1) yield (c + i).toChar
    // yields "HIeflmlmop"
for (i <- 0 to 1; c <- "Hello") yield (c + i).toChar
    // yields Vector('H', 'e', 'l', 'l', 'o', 'I', 'f', 'm', 'm', 'p')
```
######2.9. Use `_*` to tell the compiler that the preceding part is an argument sequence.
```scala
sum(1, 2, 3, 4)
```
is equivalent to
```scala
sum(1 to 4: _*)
```
Without this, '1 to 4' goes as a Range object.

######2.11. Lazy values,
```scala
lazy val words = scala.io.Source.fromFile("filename").mkString
```
> **Note**: Lazy variables are thread-safe and hence has a cost attached to it.

######2.12.
1. A throw expression has type "Nothing".
2. Type of if/else block when one of its branch is "Nothing", is the type of other branch.
```scala
try {
    // do something bad that throws
}
catch {
    // pattern match
    case _: SomeException => // do something
    case ex: IOException => // do something else
}
finally {
    // always called
    // Remember that variables defined inside try block is not visible here
}
```

##Chapter 3 - Working with arrays
######3.2. Mutable arrays like std::vector in C++
```scala
scala.collection.mutable.ArrayBuffer
```
######3.5.
1. Sorting Array in place, scala.util.Sorting.quickSort(array).
2. Array to string, Array.mkString(sep).

> ArrayOps / StringOps - useful implicit classes.

######3.7. Multidimensional arrays.
```scala
Array.ofDim(3, 4) // 3 rows, 4 columns
```
######3.8. Java interoparability
```scala
import scala.collection.JavaConversions.bufferAsJavaList // to convert scala buffer to java list
```


[Scala for the Impatient]: http://www.amazon.in/Scala-Impatient-Cay-S-Horstmann/dp/8131796051/ref=sr_1_1?ie=UTF8&qid=1376238658&sr=8-1&keywords=scala+for+the+impatient