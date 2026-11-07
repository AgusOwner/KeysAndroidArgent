.class public final Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapterFactory;
.super Ljava/lang/Object;
.source "RmicAdapterFactory.java"


# static fields
.field public static final DEFAULT_COMPILER:Ljava/lang/String; = "default"

.field public static final ERROR_NOT_RMIC_ADAPTER:Ljava/lang/String; = "Class of unexpected Type: "

.field public static final ERROR_UNKNOWN_COMPILER:Ljava/lang/String; = "Class not found: "


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRmic(Ljava/lang/String;Lorg/apache/tools/ant/Task;)Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 68
    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapterFactory;->getRmic(Ljava/lang/String;Lorg/apache/tools/ant/Task;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static getRmic(Ljava/lang/String;Lorg/apache/tools/ant/Task;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "default"

    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "forking"

    const-string v2, "sun"

    const-string v3, "kaffe"

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    :cond_0
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/rmic/KaffeRmic;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    move-object p0, v3

    goto :goto_0

    :cond_1
    const-string p0, "9"

    .line 101
    invoke-static {p0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isAtLeastJavaVersion(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    move-object p0, v1

    goto :goto_0

    :cond_2
    move-object p0, v2

    .line 107
    :cond_3
    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    new-instance p0, Lorg/apache/tools/ant/taskdefs/rmic/SunRmic;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/rmic/SunRmic;-><init>()V

    return-object p0

    .line 110
    :cond_4
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    new-instance p0, Lorg/apache/tools/ant/taskdefs/rmic/KaffeRmic;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/rmic/KaffeRmic;-><init>()V

    return-object p0

    :cond_5
    const-string v0, "weblogic"

    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 114
    new-instance p0, Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;-><init>()V

    return-object p0

    .line 116
    :cond_6
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 117
    new-instance p0, Lorg/apache/tools/ant/taskdefs/rmic/ForkingSunRmic;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/rmic/ForkingSunRmic;-><init>()V

    return-object p0

    :cond_7
    const-string v0, "xnew"

    .line 119
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 120
    new-instance p0, Lorg/apache/tools/ant/taskdefs/rmic/XNewRmic;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/rmic/XNewRmic;-><init>()V

    return-object p0

    .line 125
    :cond_8
    invoke-virtual {p1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object p1

    .line 123
    invoke-static {p0, p1}, Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapterFactory;->resolveClassName(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;

    move-result-object p0

    return-object p0
.end method

.method private static resolveClassName(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    const-class p1, Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapterFactory;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :goto_0
    const-class v0, Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;

    .line 140
    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;

    return-object p0
.end method
