.class public Lorg/apache/tools/ant/taskdefs/compilers/Javac13;
.super Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;
.source "Javac13.java"


# static fields
.field private static final MODERN_COMPILER_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Javac13;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v1, "Using modern compiler"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 50
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Javac13;->setupModernJavacCommand()Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    :try_start_0
    const-string v1, "com.sun.tools.javac.Main"

    .line 54
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "compile"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    .line 56
    const-class v7, [Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v5, [Ljava/lang/Object;

    .line 58
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getArguments()[Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 57
    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    move v2, v5

    :cond_0
    return v2

    :catch_0
    move-exception v0

    .line 61
    instance-of v1, v0, Lorg/apache/tools/ant/BuildException;

    if-eqz v1, :cond_1

    .line 62
    check-cast v0, Lorg/apache/tools/ant/BuildException;

    throw v0

    .line 64
    :cond_1
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Error starting modern compiler"

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/Javac13;->location:Lorg/apache/tools/ant/Location;

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method
