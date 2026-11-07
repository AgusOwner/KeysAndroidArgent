.class public Lorg/apache/tools/ant/taskdefs/compilers/Gcj;
.super Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;
.source "Gcj.java"


# static fields
.field private static final CONFLICT_WITH_DASH_C:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "-fjni"

    const-string v1, "-L"

    const-string v2, "-o"

    const-string v3, "--main="

    const-string v4, "-D"

    .line 34
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->CONFLICT_WITH_DASH_C:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
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
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v1, "Using gcj compiler"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 44
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->setupGCJCommand()Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->size()I

    move-result v1

    .line 47
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->logAndAddFilesToCompile(Lorg/apache/tools/ant/types/Commandline;)V

    .line 50
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->executeExternalCompile([Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNativeBuild()Z
    .locals 7

    .line 142
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->getJavac()Lorg/apache/tools/ant/taskdefs/Javac;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCurrentCompilerArgs()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-nez v2, :cond_1

    .line 144
    array-length v4, v0

    if-ge v3, v4, :cond_1

    move v4, v1

    :goto_1
    if-nez v2, :cond_0

    .line 146
    sget-object v5, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->CONFLICT_WITH_DASH_C:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_0

    .line 147
    aget-object v2, v0, v3

    aget-object v5, v5, v4

    .line 148
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method protected setupGCJCommand()Lorg/apache/tools/ant/types/Commandline;
    .locals 5

    .line 58
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 59
    new-instance v1, Lorg/apache/tools/ant/types/Path;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->project:Lorg/apache/tools/ant/Project;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 63
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->getBootClassPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 70
    :cond_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->extdirs:Lorg/apache/tools/ant/types/Path;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->includeJavaRuntime:Z

    if-eqz v2, :cond_2

    .line 71
    :cond_1
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->extdirs:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Path;->addExtdirs(Lorg/apache/tools/ant/types/Path;)V

    .line 74
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->getCompileClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 78
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    if-eqz v2, :cond_3

    .line 79
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_0

    .line 81
    :cond_3
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->src:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 84
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->getJavac()Lorg/apache/tools/ant/taskdefs/Javac;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Javac;->getExecutable()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, "gcj"

    .line 85
    :cond_4
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->destDir:Ljava/io/File;

    if-eqz v2, :cond_6

    .line 88
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-d"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->destDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    .line 91
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->destDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->destDir:Ljava/io/File;

    .line 92
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->destDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 93
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Can\'t make output directories. Maybe permission is wrong."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_6
    :goto_1
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-classpath"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 101
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 102
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--encoding="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 104
    :cond_7
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->debug:Z

    if-eqz v1, :cond_8

    .line 105
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-g1"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 107
    :cond_8
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->optimize:Z

    if-eqz v1, :cond_9

    .line 108
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-O"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 115
    :cond_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->isNativeBuild()Z

    move-result v1

    if-nez v1, :cond_a

    .line 116
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-C"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 119
    :cond_a
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javac;->getSource()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 120
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javac;->getSource()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-fsource="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 124
    :cond_b
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javac;->getTarget()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 125
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javac;->getTarget()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-ftarget="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 129
    :cond_c
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->addCurrentCompilerArgs(Lorg/apache/tools/ant/types/Commandline;)V

    return-object v0
.end method
