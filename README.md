
[comment]: # (README.md)

# Code Challenge: Dynamic Directory Index - 3/25/2018
_In this code challenge, you'll be given a list of requirements. The goal is to create a Sinatra application that satisfies these requirements using what we've covered so far in this course._

Sinatra will, by default, serve any file placed in a `public` directory that lives in the same directory as the Sinatra application. You can try this out by putting an image or any other file in that directory and then attempting to access it through your application.

Requirements
1. When a user visits the root path, `/`, they should be presented with a listing of all of the files in the `public` directory. The listing for a file should only display the file's name and not the names of any directories.
2. When a user clicks one of the filenames in the list, they should be taken directly to that file. Take advantage of Sinatra's built-in serving of the `public` directory.
3. Create at least 5 files in the `public` directory to test the listing page.
4. Add a parameter that controls the sort order of the files on the page. They should be sorted in an ascending (A-Z) order by default, or descending (Z-A) if the parameter has a certain value.
5. Display a link to reverse the order. The text of the link should reflect the order that will be displayed if it is clicked: "Sort ascending" or "Sort descending".

Hint for getting a list of files in a directory:
There are a few ways to get the list of files within a given directory in Ruby. One of the most common (and convenient) is to use `Dir.glob`. Open up an `irb` session and try it out by passing in a pattern to match against file names and paths:
```
>> Dir.glob("*")
=> ["Applications", "code", "Desktop", "Documents", "Downloads", "Dropbox", "Library", "Movies", "Music", "Pictures", "Public", "src"]
>> Dir.glob("Applications/*")
=> []
>> Dir.glob("Documents/*")
=> ["Documents/Homework", "Documents/Bills", "Documents/letter.docx"]
>> Dir.glob("Documents/*.docx")
=> ["Documents/letter.docx"]
```
Note that the path passed to `Dir.glob` is relative to the _current working directory_, which is usually going to be the location of the Ruby program that is currently executing. (It's a little different in IRB since there isn't a file being executed.) It is possible to go up a level by including `..` in a path passed to `Dir.glob`:
```
>> Dir.glob("../*")
=> ["../instructor", "../admin", "../Shared"]
```
You should also read through [the official documentation for Dir.glob](http://ruby-doc.org/core-2.3.0/Dir.html#method-c-glob). It's OK to not understand or remember all of it, but reading the docs routinely can help build broader awareness and understanding of the Ruby standard library.

If you need to manipulate paths and files, there are a lot of useful methods provided by the [File class](http://ruby-doc.org/core-2.3.0/File.html). In particular, there is one that will return just the file portion of a path.
