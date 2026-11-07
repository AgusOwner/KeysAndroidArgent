.class public Lorg/apache/tools/ant/util/ScriptFixBSFPath;
.super Ljava/lang/Object;
.source "ScriptFixBSFPath.java"


# static fields
.field private static final BSF_LANGUAGES:[Ljava/lang/String;

.field private static final BSF_LANGUAGE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final BSF_MANAGER:Ljava/lang/String; = "org.apache.bsf.BSFManager"

.field private static final BSF_PACKAGE:Ljava/lang/String; = "org.apache.bsf"

.field private static final BSF_SCRIPT_RUNNER:Ljava/lang/String; = "org.apache.tools.ant.util.optional.ScriptRunner"

.field private static final UTIL_OPTIONAL_PACKAGE:Ljava/lang/String; = "org.apache.tools.ant.util.optional"


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "js"

    const-string v1, "org.mozilla.javascript.Scriptable"

    const-string v2, "javascript"

    const-string v3, "org.mozilla.javascript.Scriptable"

    const-string v4, "jacl"

    const-string v5, "tcl.lang.Interp"

    const-string v6, "netrexx"

    const-string v7, "netrexx.lang.Rexx"

    const-string v8, "nrx"

    const-string v9, "netrexx.lang.Rexx"

    const-string v10, "jython"

    const-string v11, "org.python.core.Py"

    const-string v12, "py"

    const-string v13, "org.python.core.Py"

    const-string v14, "xslt"

    const-string v15, "org.apache.xpath.objects.XObject"

    .line 48
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/ScriptFixBSFPath;->BSF_LANGUAGES:[Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/util/ScriptFixBSFPath;->BSF_LANGUAGE_MAP:Ljava/util/Map;

    const/4 v0, 0x0

    .line 62
    :goto_0
    sget-object v1, Lorg/apache/tools/ant/util/ScriptFixBSFPath;->BSF_LANGUAGES:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 63
    sget-object v2, Lorg/apache/tools/ant/util/ScriptFixBSFPath;->BSF_LANGUAGE_MAP:Ljava/util/Map;

    aget-object v3, v1, v0

    add-int/lit8 v4, v0, 0x1

    aget-object v1, v1, v4

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getClassSource(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 70
    invoke-static {p2}, Lorg/apache/tools/ant/util/LoaderUtils;->classNameToResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 68
    invoke-static {p1, p2}, Lorg/apache/tools/ant/util/LoaderUtils;->getResourceSource(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private getClassSource(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/util/ScriptFixBSFPath;->getClassSource(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public fixClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 8

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eq p1, v0, :cond_9

    instance-of v0, p1, Lorg/apache/tools/ant/AntClassLoader;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 102
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 103
    move-object v1, p1

    check-cast v1, Lorg/apache/tools/ant/AntClassLoader;

    const-string v2, "org.apache.bsf.BSFManager"

    .line 106
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/util/ScriptFixBSFPath;->getClassSource(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v5

    .line 113
    :goto_0
    sget-object v7, Lorg/apache/tools/ant/util/ScriptFixBSFPath;->BSF_LANGUAGE_MAP:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    .line 119
    invoke-static {v0, p2}, Lorg/apache/tools/ant/util/LoaderUtils;->classExists(Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 120
    invoke-static {p1, p2}, Lorg/apache/tools/ant/util/LoaderUtils;->classExists(Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p2, v4

    goto :goto_1

    :cond_2
    move p2, v5

    :goto_1
    if-nez v6, :cond_4

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 127
    invoke-direct {p0, p1, v2}, Lorg/apache/tools/ant/util/ScriptFixBSFPath;->getClassSource(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    :cond_5
    if-eqz v3, :cond_8

    if-eqz p2, :cond_6

    .line 136
    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/AntClassLoader;->addPathComponent(Ljava/io/File;)V

    const-string p1, "org.apache.bsf"

    .line 137
    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/AntClassLoader;->addLoaderPackageRoot(Ljava/lang/String;)V

    :cond_6
    if-eqz v4, :cond_7

    const-string p1, "org.apache.tools.ant.util.optional.ScriptRunner"

    .line 144
    invoke-static {p1}, Lorg/apache/tools/ant/util/LoaderUtils;->classNameToResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-static {v1, p1}, Lorg/apache/tools/ant/util/LoaderUtils;->getResourceSource(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 141
    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/AntClassLoader;->addPathComponent(Ljava/io/File;)V

    const-string p1, "org.apache.tools.ant.util.optional"

    .line 145
    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/AntClassLoader;->addLoaderPackageRoot(Ljava/lang/String;)V

    :cond_7
    return-void

    .line 131
    :cond_8
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "Unable to find BSF classes for scripting"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_3
    return-void
.end method
