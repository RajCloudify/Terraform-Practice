State-file-local-issues

case-1--> created resources and that state file is present locally itself(indivisual state file)---> local developer 

Result --> resources are created by the local developer with the given code, but if they're multiple developers working on the same project they will clone it and everytime they clone, it will create new resources as there is no statefile present with other developers.

Solution --> To have a common statefile present in a remote platform, so whenever anyone accesses, they're accesing the updated statefile (create a backend.tf block to save the statefile)---> Task done in Day-4.1...

Challenges when working individually :-
-->Cannot have the updated files and will create multiple resources 
--->Developers overwtriting each other work if they're working in seperate state file 
--->Merge COnflicts 

 
