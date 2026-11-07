.class public Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;
.super Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;
.source "JavacExternal.java"


# static fields
.field private static ARGS_FOLLOWED_BY_PATH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "-cp"

    const-string v1, "-classpath"

    const-string v2, "--class-path"

    const-string v3, "-endorseddirs"

    const-string v4, "-extdirs"

    const-string v5, "--module-path"

    const-string v6, "-p"

    const-string v7, "--module-source-path"

    const-string v8, "--processor-module-path"

    const-string v9, "--processor-path"

    const-string v10, "-processorpath"

    const-string v11, "-sourcepath"

    const-string v12, "--source-path"

    const-string v13, "-bootclasspath"

    const-string v14, "--boot-class-path"

    const-string v15, "--upgrade-module-path"

    .line 138
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->ARGS_FOLLOWED_BY_PATH:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;-><init>()V

    return-void
.end method

.method private static containsWildcards(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "*"

    .line 129
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private execOnVMS(Lorg/apache/tools/ant/types/Commandline;I)Z
    .locals 5

    const/4 v0, 0x0

    .line 164
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->getArguments()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/util/JavaEnvUtils;->createVmsJavaOptionFile([Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "-V"

    const/4 v3, 0x1

    aput-object p1, v1, v3

    .line 167
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x2

    aput-object p1, v1, v4

    .line 168
    invoke-virtual {p0, v1, p2, v3}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->executeExternalCompile([Ljava/lang/String;IZ)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    move v2, v3

    .line 176
    :cond_0
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->delete(Ljava/io/File;)V

    return v2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 173
    :catch_0
    :try_start_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "Failed to create a temporary file for \"-V\" switch"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :goto_0
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->delete(Ljava/io/File;)V

    .line 177
    throw p1
.end method

.method private static isArgFileEligible(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "-J"

    .line 133
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-Xbootclasspath/"

    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->containsWildcards(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isArgFollowedByPath(Ljava/lang/String;)Z
    .locals 1

    .line 152
    sget-object v0, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->ARGS_FOLLOWED_BY_PATH:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private moveArgFileEligibleOptionsToEnd([Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x1

    move v1, v0

    .line 91
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 92
    invoke-static {p1, v1}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->numberOfArgsNotEligibleForFile([Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 100
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 101
    invoke-static {p1, v2}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->numberOfArgsNotEligibleForFile([Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_2

    add-int v4, v2, v3

    .line 103
    invoke-static {p1, v2, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    sub-int v5, v2, v1

    if-ltz v5, :cond_1

    add-int v6, v1, v3

    .line 105
    invoke-static {p1, v1, p1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    const/4 v5, 0x0

    .line 107
    invoke-static {v4, v5, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v3

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    :cond_2
    add-int/2addr v2, v0

    goto :goto_1

    :cond_3
    return v1
.end method

.method private static numberOfArgsNotEligibleForFile([Ljava/lang/String;I)I
    .locals 3

    .line 117
    aget-object v0, p0, p1

    .line 118
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->isArgFileEligible(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    add-int/2addr p1, v2

    .line 121
    array-length v1, p0

    if-ge p1, v1, :cond_1

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->isArgFollowedByPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-object p0, p0, p1

    .line 122
    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->containsWildcards(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public execute()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v1, "Using external javac compiler"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 49
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 50
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->getJavac()Lorg/apache/tools/ant/taskdefs/Javac;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javac;->getJavacExecutable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->assumeJava1_3Plus()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->setupModernJavacCommandlineSwitches(Lorg/apache/tools/ant/types/Commandline;)Lorg/apache/tools/ant/types/Commandline;

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->setupJavacCommandlineSwitches(Lorg/apache/tools/ant/types/Commandline;Z)Lorg/apache/tools/ant/types/Commandline;

    .line 57
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->assumeJava1_2Plus()Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->size()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v3

    .line 59
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->logAndAddFilesToCompile(Lorg/apache/tools/ant/types/Commandline;)V

    const-string v4, "openvms"

    .line 63
    invoke-static {v4}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->execOnVMS(Lorg/apache/tools/ant/types/Commandline;I)Z

    move-result v0

    return v0

    .line 67
    :cond_2
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->assumeJava1_2Plus()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->moveArgFileEligibleOptionsToEnd([Ljava/lang/String;)I

    move-result v3

    .line 76
    :cond_3
    invoke-virtual {p0, v0, v3, v2}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->executeExternalCompile([Ljava/lang/String;IZ)I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    return v2
.end method
