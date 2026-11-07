.class Lorg/apache/tools/ant/util/ScriptRunnerCreator$ScriptRunnerFactory;
.super Ljava/lang/Object;
.source "ScriptRunnerCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/util/ScriptRunnerCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScriptRunnerFactory"
.end annotation


# instance fields
.field final managerClass:Ljava/lang/String;

.field final runnerClass:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator$ScriptRunnerFactory;->managerClass:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator$ScriptRunnerFactory;->runnerClass:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getRunner(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/tools/ant/util/ScriptRunnerBase;
    .locals 3

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/ant/util/ScriptRunnerCreator$ScriptRunnerFactory;->validateManager(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 61
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator$ScriptRunnerFactory;->runnerClass:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1, p3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/util/ScriptRunnerBase;

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/util/ScriptRunnerBase;

    .line 64
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->setProject(Lorg/apache/tools/ant/Project;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->setLanguage(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p3}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->setScriptClassLoader(Ljava/lang/ClassLoader;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 66
    invoke-static {p1}, Lorg/apache/tools/ant/util/ReflectUtil;->toBuildException(Ljava/lang/Exception;)Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method validateManager(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/ClassLoader;)Z
    .locals 0

    .line 48
    :try_start_0
    iget-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator$ScriptRunnerFactory;->managerClass:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-static {p1, p2, p3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
