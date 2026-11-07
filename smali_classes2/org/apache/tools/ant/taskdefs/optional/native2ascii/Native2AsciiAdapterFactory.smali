.class public Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapterFactory;
.super Ljava/lang/Object;
.source "Native2AsciiAdapterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdapter(Ljava/lang/String;Lorg/apache/tools/ant/ProjectComponent;)Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 62
    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapterFactory;->getAdapter(Ljava/lang/String;Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static getAdapter(Ljava/lang/String;Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 82
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapterFactory;->shouldUseKaffe()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    const-string v0, "kaffe"

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    :cond_1
    new-instance p0, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/KaffeNative2Ascii;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/KaffeNative2Ascii;-><init>()V

    return-object p0

    :cond_2
    const-string v0, "sun"

    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    new-instance p0, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/SunNative2Ascii;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/SunNative2Ascii;-><init>()V

    return-object p0

    :cond_3
    const-string v0, "builtin"

    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    new-instance p0, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii;-><init>()V

    return-object p0

    :cond_4
    if-eqz p0, :cond_5

    .line 92
    invoke-virtual {p1}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    .line 93
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object p1

    .line 90
    invoke-static {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapterFactory;->resolveClassName(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;

    move-result-object p0

    return-object p0

    .line 96
    :cond_5
    new-instance p0, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii;-><init>()V

    return-object p0
.end method

.method public static getDefault()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapterFactory;->shouldUseKaffe()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kaffe"

    return-object v0

    :cond_0
    const-string v0, "builtin"

    return-object v0
.end method

.method private static resolveClassName(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    const-class p1, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapterFactory;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :goto_0
    const-class v0, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;

    .line 111
    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;

    return-object p0
.end method

.method private static final shouldUseKaffe()Z
    .locals 1

    .line 118
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isKaffe()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isClasspathBased()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
