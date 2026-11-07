.class public Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapterFactory;
.super Ljava/lang/Object;
.source "JavahAdapterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdapter(Ljava/lang/String;Lorg/apache/tools/ant/ProjectComponent;)Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 65
    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapterFactory;->getAdapter(Ljava/lang/String;Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static getAdapter(Ljava/lang/String;Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 85
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isKaffe()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    const-string v0, "kaffeh"

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    :cond_1
    new-instance p0, Lorg/apache/tools/ant/taskdefs/optional/javah/Kaffeh;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/javah/Kaffeh;-><init>()V

    return-object p0

    .line 89
    :cond_2
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isGij()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_4

    :cond_3
    const-string v0, "gcjh"

    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    :cond_4
    new-instance p0, Lorg/apache/tools/ant/taskdefs/optional/javah/Gcjh;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/javah/Gcjh;-><init>()V

    return-object p0

    :cond_5
    const-string v0, "10"

    .line 93
    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isAtLeastJavaVersion(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "forking"

    if-eqz v0, :cond_7

    if-eqz p0, :cond_6

    .line 94
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 95
    :cond_6
    new-instance p0, Lorg/apache/tools/ant/BuildException;

    const-string p1, "javah does not exist under Java 10 and higher, use the javac task with nativeHeaderDir instead"

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_7
    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 99
    new-instance p0, Lorg/apache/tools/ant/taskdefs/optional/javah/ForkingJavah;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/javah/ForkingJavah;-><init>()V

    return-object p0

    :cond_8
    const-string v0, "sun"

    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 102
    new-instance p0, Lorg/apache/tools/ant/taskdefs/optional/javah/SunJavah;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/javah/SunJavah;-><init>()V

    return-object p0

    :cond_9
    if-eqz p0, :cond_a

    .line 107
    invoke-virtual {p1}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    .line 108
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object p1

    .line 105
    invoke-static {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapterFactory;->resolveClassName(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;

    move-result-object p0

    return-object p0

    .line 110
    :cond_a
    new-instance p0, Lorg/apache/tools/ant/taskdefs/optional/javah/ForkingJavah;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/javah/ForkingJavah;-><init>()V

    return-object p0
.end method

.method public static getDefault()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isKaffe()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kaffeh"

    return-object v0

    .line 46
    :cond_0
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isGij()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "gcjh"

    return-object v0

    :cond_1
    const-string v0, "forking"

    return-object v0
.end method

.method private static resolveClassName(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    const-class p1, Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapterFactory;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :goto_0
    const-class v0, Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;

    .line 125
    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;

    return-object p0
.end method
