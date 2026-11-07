.class public Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;
.super Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;
.source "WLRmic.java"


# static fields
.field public static final COMPILER_NAME:Ljava/lang/String; = "weblogic"

.field public static final ERROR_NO_WLRMIC_ON_CLASSPATH:Ljava/lang/String; = "Cannot use WebLogic rmic, as it is not available. Add it to Ant\'s classpath with the -lib option"

.field public static final ERROR_WLRMIC_FAILED:Ljava/lang/String; = "Error starting WebLogic rmic: "

.field public static final UNSUPPORTED_STUB_OPTION:Ljava/lang/String; = "Unsupported stub option: "

.field public static final WLRMIC_CLASSNAME:Ljava/lang/String; = "weblogic.rmic"

.field public static final WL_RMI_SKEL_SUFFIX:Ljava/lang/String; = "_WLSkel"

.field public static final WL_RMI_STUB_SUFFIX:Ljava/lang/String; = "_WLStub"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected addStubVersionOptions()Ljava/lang/String;
    .locals 4

    .line 141
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getStubVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported stub option: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected areIiopAndIdlSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public execute()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v0

    const-string v1, "Using WebLogic rmic"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    const-string v0, "-noexit"

    .line 72
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;->setupRmicCommand([Ljava/lang/String;)Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    const/4 v1, 0x0

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v3, "weblogic.rmic"

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 79
    :try_start_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v3, v1

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Rmic;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 83
    :try_start_2
    invoke-static {v3, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    :goto_0
    :try_start_3
    const-string v5, "main"

    new-array v6, v4, [Ljava/lang/Class;

    .line 85
    const-class v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    .line 86
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getArguments()[Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    .line 99
    invoke-virtual {v3}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    :cond_1
    return v4

    :catchall_0
    move-exception v0

    move-object v1, v3

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_1

    :catch_1
    move-object v1, v3

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_3
    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    .line 91
    :goto_1
    :try_start_4
    instance-of v2, v0, Lorg/apache/tools/ant/BuildException;

    if-eqz v2, :cond_2

    .line 92
    check-cast v0, Lorg/apache/tools/ant/BuildException;

    throw v0

    .line 94
    :cond_2
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    const-string v3, "Error starting WebLogic rmic: "

    .line 95
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/Rmic;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 89
    :catch_5
    :goto_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Cannot use WebLogic rmic, as it is not available. Add it to Ant\'s classpath with the -lib option"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Rmic;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_3
    if-eqz v1, :cond_3

    .line 99
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 101
    :cond_3
    throw v0
.end method

.method public getSkelClassSuffix()Ljava/lang/String;
    .locals 1

    const-string v0, "_WLSkel"

    return-object v0
.end method

.method public getStubClassSuffix()Ljava/lang/String;
    .locals 1

    const-string v0, "_WLStub"

    return-object v0
.end method

.method protected preprocessCompilerArgs([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;->filterJvmCompilerArgs([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
