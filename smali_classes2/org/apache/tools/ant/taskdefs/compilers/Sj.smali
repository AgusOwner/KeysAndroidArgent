.class public Lorg/apache/tools/ant/taskdefs/compilers/Sj;
.super Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;
.source "Sj.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
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

    .line 40
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Sj;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v1, "Using symantec java compiler"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 42
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Sj;->setupJavacCommand()Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Sj;->getJavac()Lorg/apache/tools/ant/taskdefs/Javac;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javac;->getExecutable()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "sj"

    .line 44
    :cond_0
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Sj;->compileList:[Ljava/io/File;

    array-length v2, v2

    sub-int/2addr v1, v2

    .line 49
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/Sj;->executeExternalCompile([Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getNoDebugArgument()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
