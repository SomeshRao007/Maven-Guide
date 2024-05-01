# Maven-Guide
Everything related to maven from installation to project details. 

## POM.xml


1) POM stands for Project Object Model. It is fundamental unit of work in Maven. It is an XML file that resides in the base directory of the project as pom.xml.
2) The POM contains information about the project and various configuration detail used by Maven to build the project(s).
3) POM also contains the goals and plugins. While executing a task or goal, Maven looks for the POM in the current directory. It reads the POM, gets the needed configuration information, and then executes the goal.

>Note:
>>It should be noted that there should be a single POM file for each project.
>>All POM files require the project element and three mandatory fields: groupId, artifactId, version.
>>Projects notation in repository is groupId:artifactId:version.


## What is Build Lifecycle?


A Build Lifecycle is a well-defined sequence of phases, which define the order in which the goals are to be executed. 

Typical Maven Build Lifecycle consists of the following sequence of phases:

![image](https://github.com/SomeshRao007/Maven-Guide/assets/111784343/1011995c-95a1-48ee-b055-e0c2465e4f2d)

- There are always **pre and post phases to register goals**, which must run prior to, or after a particular phase.
- When Maven starts building a project, it steps through a defined sequence of phases and executes goals, which are registered with each phase.


A **goal** represents a specific task which contributes to the building and managing of a project. It may be bound to zero or more build phases. A goal not bound to any build phase could be executed outside of the build lifecycle by direct invocation.

The order of execution depends on the order in which the goal(s) and the build phase(s) are invoked. 

``` mvn clean dependency:copy-dependencies package ```


Here the clean phase will be executed first, followed by the dependency:copy-dependencies goal, and finally package phase will be executed.
>> The **clean** and **package** arguments are build phases while the _dependency:copy-dependencies_ is a _goal_.


clean:cleangoal deletes the output of a build by deleting the build directory. Thus, when mvn clean command executes, Maven deletes the build directory.


## What is a Maven Repository?


In Maven terminology, a repository is a directory where all the project jars, library jar, plugins or any other project specific artifacts are stored and can be used by Maven easily.


- Maven local repository is a folder location on your machine. It gets created when you run any maven command for the first time.


- Maven local repository keeps your project's all dependencies (library jars, plugin jars etc.). When you _run a Maven build, then Maven automatically downloads all the dependency jars into the local repository_. It helps to avoid references to dependencies stored on remote machine every time a project is build.


- Maven central repository is repository provided by Maven community. It contains a large number of commonly used libraries. When Maven does not find any dependency in local repository, it starts searching in central repository using following URL − https://repo1.maven.org/maven2/. It is not required to be configured. It requires internet access to be searched.


- Sometimes, _Maven does not find a mentioned dependency in central repository as well._ It then stops the build process and output error message to console. To prevent such situation, Maven provides concept of Remote Repository, which is developer's own custom repository containing required libraries or other project jars.


**Search Sequence**

1) Local repository
2) Central repository
3) Now, If a remote repository has not been mentioned, Maven simply stops the processing and throws error.
4) If mentioned, then remote repository, if found then it is downloaded to local repository for future reference. Otherwise, Maven stops processing and throws error.


## Plugins

Maven is actually a plugin execution framework where every task is actually done by plugins.
PLugins used for: 

<li>
create jar file
create war file
compile code files
unit testing of code
create project documentation
create project reports 
</li>




![image](https://github.com/SomeshRao007/Maven-Guide/assets/111784343/460fd546-611f-40d7-8915-17ec11319c6b)
























