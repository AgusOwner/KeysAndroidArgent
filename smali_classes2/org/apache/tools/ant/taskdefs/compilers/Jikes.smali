.class public Lorg/apache/tools/ant/taskdefs/compilers/Jikes;
.super Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;
.source "Jikes.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;-><init>()V

    return-void
.end method

.method private addPropertyParams(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 5

    .line 178
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->project:Lorg/apache/tools/ant/Project;

    const-string v1, "build.compiler.emacs"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-static {v0}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "+E"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->project:Lorg/apache/tools/ant/Project;

    const-string v1, "build.compiler.warnings"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-nowarn"

    if-eqz v0, :cond_1

    .line 191
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v3, "!! the build.compiler.warnings property is deprecated. !!"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 193
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v3, "!! Use the nowarn attribute instead. !!"

    invoke-virtual {v2, v3, v4}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 194
    invoke-static {v0}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 198
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getNowarn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 205
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->project:Lorg/apache/tools/ant/Project;

    const-string v1, "build.compiler.pedantic"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 206
    invoke-static {v0}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "+P"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 215
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->project:Lorg/apache/tools/ant/Project;

    const-string v1, "build.compiler.fulldepend"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 217
    invoke-static {v0}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    const-string v0, "+F"

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v1, "Using jikes compiler"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 50
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 55
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 58
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->src:Lorg/apache/tools/ant/types/Path;

    .line 62
    :goto_0
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-sourcepath"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 67
    :cond_1
    new-instance v1, Lorg/apache/tools/ant/types/Path;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->project:Lorg/apache/tools/ant/Project;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 69
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    :cond_2
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->includeJavaRuntime:Z

    .line 78
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->getCompileClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    const-string v2, "jikes.class.path"

    .line 81
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 83
    new-instance v4, Lorg/apache/tools/ant/types/Path;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->project:Lorg/apache/tools/ant/Project;

    invoke-direct {v4, v5, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 86
    :cond_4
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->extdirs:Lorg/apache/tools/ant/types/Path;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->extdirs:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 87
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v4, "-extdirs"

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->extdirs:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 91
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->getJavac()Lorg/apache/tools/ant/taskdefs/Javac;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Javac;->getExecutable()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v2, "jikes"

    .line 92
    :cond_6
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 94
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->deprecation:Z

    if-eqz v2, :cond_7

    .line 95
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v4, "-deprecation"

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 98
    :cond_7
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->destDir:Ljava/io/File;

    if-eqz v2, :cond_8

    .line 99
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v4, "-d"

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->destDir:Ljava/io/File;

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    .line 103
    :cond_8
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v4, "-classpath"

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 106
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 107
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-encoding"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 110
    :cond_9
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->debug:Z

    if-eqz v1, :cond_b

    .line 111
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javac;->getDebugLevel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 113
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "-g:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_a
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-g"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 118
    :cond_b
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-g:none"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 120
    :goto_1
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->optimize:Z

    if-eqz v1, :cond_c

    .line 121
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-O"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 123
    :cond_c
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->verbose:Z

    if-eqz v1, :cond_d

    .line 124
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-verbose"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 126
    :cond_d
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->depend:Z

    if-eqz v1, :cond_e

    .line 127
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-depend"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 130
    :cond_e
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->target:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 131
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-target"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->target:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 135
    :cond_f
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->addPropertyParams(Lorg/apache/tools/ant/types/Commandline;)V

    .line 137
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javac;->getSource()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 138
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-source"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javac;->getSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1.1"

    .line 140
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "1.2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_2

    .line 147
    :cond_10
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 143
    :cond_11
    :goto_2
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Jikes doesn\'t support \'-source "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\', will use \'-source 1.3\' instead"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "1.3"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 150
    :cond_12
    :goto_3
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->addCurrentCompilerArgs(Lorg/apache/tools/ant/types/Commandline;)V

    .line 152
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->size()I

    move-result v1

    .line 154
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->getBootClassPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v2

    .line 155
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    .line 156
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v4

    const-string v5, "-bootclasspath"

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 159
    :cond_13
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->logAndAddFilesToCompile(Lorg/apache/tools/ant/types/Commandline;)V

    .line 161
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->executeExternalCompile([Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_14

    goto :goto_4

    :cond_14
    const/4 v3, 0x0

    :goto_4
    return v3
.end method
