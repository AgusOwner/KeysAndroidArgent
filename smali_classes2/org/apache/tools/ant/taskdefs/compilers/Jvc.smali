.class public Lorg/apache/tools/ant/taskdefs/compilers/Jvc;
.super Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;
.source "Jvc.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v1, "Using jvc compiler"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 44
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->project:Lorg/apache/tools/ant/Project;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 48
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->getBootClassPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 53
    :cond_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->includeJavaRuntime:Z

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->extdirs:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->addExtdirs(Lorg/apache/tools/ant/types/Path;)V

    .line 59
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->getCompileClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 63
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_2

    .line 64
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_0

    .line 66
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->src:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 69
    :goto_0
    new-instance v1, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 70
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->getJavac()Lorg/apache/tools/ant/taskdefs/Javac;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Javac;->getExecutable()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "jvc"

    .line 71
    :cond_3
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->destDir:Ljava/io/File;

    if-eqz v2, :cond_4

    .line 74
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "/d"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->destDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    .line 79
    :cond_4
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "/cp:p"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v2, "build.compiler.jvc.extensions"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 85
    invoke-static {v0}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    if-eqz v0, :cond_6

    .line 90
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v3, "/x-"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v3, "/nomessage"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 96
    :cond_6
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v3, "/nologo"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 98
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->debug:Z

    if-eqz v0, :cond_7

    .line 99
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v3, "/g"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 101
    :cond_7
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->optimize:Z

    if-eqz v0, :cond_8

    .line 102
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v3, "/O"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 104
    :cond_8
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->verbose:Z

    if-eqz v0, :cond_9

    .line 105
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v3, "/verbose"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 108
    :cond_9
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->addCurrentCompilerArgs(Lorg/apache/tools/ant/types/Commandline;)V

    .line 110
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->size()I

    move-result v0

    .line 111
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->logAndAddFilesToCompile(Lorg/apache/tools/ant/types/Commandline;)V

    .line 114
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3}, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->executeExternalCompile([Ljava/lang/String;IZ)I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    move v2, v3

    :goto_2
    return v2
.end method
