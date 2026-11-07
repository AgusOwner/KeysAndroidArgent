.class public Lorg/apache/tools/ant/taskdefs/compilers/Kjc;
.super Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;
.source "Kjc.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v1, "Using kjc compiler"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 44
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;->setupKjcCommand()Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    const-string v1, "at.dms.kjc.Main"

    .line 45
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 46
    new-instance v1, Lorg/apache/tools/ant/taskdefs/ExecuteJava;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;-><init>()V

    .line 47
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->setJavaCommand(Lorg/apache/tools/ant/types/Commandline;)V

    .line 48
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;->getJavac()Lorg/apache/tools/ant/taskdefs/Javac;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->fork(Lorg/apache/tools/ant/ProjectComponent;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected setupKjcCommand()Lorg/apache/tools/ant/types/Commandline;
    .locals 5

    .line 56
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 59
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;->getCompileClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    .line 61
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;->deprecation:Z

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-deprecation"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 65
    :cond_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;->destDir:Ljava/io/File;

    if-eqz v2, :cond_1

    .line 66
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-d"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;->destDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    .line 71
    :cond_1
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-classpath"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 73
    new-instance v2, Lorg/apache/tools/ant/types/Path;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;->project:Lorg/apache/tools/ant/Project;

    invoke-direct {v2, v3}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 76
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;->getBootClassPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 78
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 81
    :cond_2
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;->extdirs:Lorg/apache/tools/ant/types/Path;

    if-eqz v3, :cond_3

    .line 82
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;->extdirs:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Path;->addExtdirs(Lorg/apache/tools/ant/types/Path;)V

    .line 85
    :cond_3
    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 86
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_4

    .line 87
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_0

    .line 89
    :cond_4
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;->src:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 92
    :goto_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 96
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 97
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-encoding"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 101
    :cond_5
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;->debug:Z

    if-eqz v1, :cond_6

    .line 102
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-g"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 105
    :cond_6
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;->optimize:Z

    if-eqz v1, :cond_7

    .line 106
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-O2"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 109
    :cond_7
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;->verbose:Z

    if-eqz v1, :cond_8

    .line 110
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-verbose"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 113
    :cond_8
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;->addCurrentCompilerArgs(Lorg/apache/tools/ant/types/Commandline;)V

    .line 115
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;->logAndAddFilesToCompile(Lorg/apache/tools/ant/types/Commandline;)V

    return-object v0
.end method
