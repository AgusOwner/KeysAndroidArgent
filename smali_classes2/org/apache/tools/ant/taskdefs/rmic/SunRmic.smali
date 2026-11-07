.class public Lorg/apache/tools/ant/taskdefs/rmic/SunRmic;
.super Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;
.source "SunRmic.java"


# static fields
.field public static final COMPILER_NAME:Ljava/lang/String; = "sun"

.field public static final ERROR_NO_RMIC_ON_CLASSPATH:Ljava/lang/String; = "Cannot use SUN rmic, as it is not available.  A common solution is to set the environment variable JAVA_HOME"

.field public static final ERROR_NO_RMIC_ON_CLASSPATH_JAVA_9:Ljava/lang/String; = "Cannot use SUN rmic, as it is not available.  The class we try to use is part of the jdk.rmic module which may not be. Please use the \'forking\' compiler for JDK 9+"

.field public static final ERROR_RMIC_FAILED:Ljava/lang/String; = "Error starting SUN rmic: "

.field public static final RMIC_CLASSNAME:Ljava/lang/String; = "sun.rmi.rmic.Main"

.field public static final RMIC_EXECUTABLE:Ljava/lang/String; = "rmic"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/SunRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v0

    const-string v1, "Using SUN rmic compiler"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    .line 69
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/SunRmic;->setupRmicCommand()Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    .line 73
    new-instance v1, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    .line 74
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/SunRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    :try_start_0
    const-string v2, "sun.rmi.rmic.Main"

    .line 78
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 79
    const-class v6, Ljava/io/OutputStream;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    .line 80
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    const-string v6, "rmic"

    aput-object v6, v4, v3

    .line 81
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "compile"

    new-array v6, v3, [Ljava/lang/Class;

    .line 83
    const-class v8, [Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 84
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-array v3, v3, [Ljava/lang/Object;

    .line 85
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getArguments()[Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 96
    :try_start_2
    instance-of v2, v0, Lorg/apache/tools/ant/BuildException;

    if-eqz v2, :cond_0

    .line 97
    check-cast v0, Lorg/apache/tools/ant/BuildException;

    throw v0

    .line 99
    :cond_0
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    const-string v3, "Error starting SUN rmic: "

    .line 100
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/SunRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/Rmic;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    :catch_2
    const-string v0, "9"

    .line 89
    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isAtLeastJavaVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Cannot use SUN rmic, as it is not available.  The class we try to use is part of the jdk.rmic module which may not be. Please use the \'forking\' compiler for JDK 9+"

    .line 91
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/SunRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Rmic;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 93
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Cannot use SUN rmic, as it is not available.  A common solution is to set the environment variable JAVA_HOME"

    .line 94
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/SunRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Rmic;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 111
    :catch_3
    throw v0
.end method

.method protected preprocessCompilerArgs([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/rmic/SunRmic;->filterJvmCompilerArgs([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
