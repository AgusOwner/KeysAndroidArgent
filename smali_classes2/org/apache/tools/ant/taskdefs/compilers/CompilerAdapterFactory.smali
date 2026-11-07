.class public final Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;
.super Ljava/lang/Object;
.source "CompilerAdapterFactory.java"


# static fields
.field private static final CLASSIC_JDK_COMPILERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMPILER_CLASSIC:Ljava/lang/String; = "classic"

.field public static final COMPILER_EXTJAVAC:Ljava/lang/String; = "extJavac"

.field public static final COMPILER_EXTJAVAC_CLASSNAME:Ljava/lang/String;

.field public static final COMPILER_GCJ:Ljava/lang/String; = "gcj"

.field public static final COMPILER_JAVAC_10_PLUS:Ljava/lang/String; = "javac10+"

.field public static final COMPILER_JAVAC_1_1:Ljava/lang/String; = "javac1.1"

.field public static final COMPILER_JAVAC_1_2:Ljava/lang/String; = "javac1.2"

.field public static final COMPILER_JAVAC_1_3:Ljava/lang/String; = "javac1.3"

.field public static final COMPILER_JAVAC_1_4:Ljava/lang/String; = "javac1.4"

.field public static final COMPILER_JAVAC_1_5:Ljava/lang/String; = "javac1.5"

.field public static final COMPILER_JAVAC_1_6:Ljava/lang/String; = "javac1.6"

.field public static final COMPILER_JAVAC_1_7:Ljava/lang/String; = "javac1.7"

.field public static final COMPILER_JAVAC_1_8:Ljava/lang/String; = "javac1.8"

.field public static final COMPILER_JAVAC_9:Ljava/lang/String; = "javac9"

.field public static final COMPILER_JAVAC_9_ALIAS:Ljava/lang/String; = "javac1.9"

.field public static final COMPILER_JIKES:Ljava/lang/String; = "jikes"

.field public static final COMPILER_JVC:Ljava/lang/String; = "jvc"

.field public static final COMPILER_JVC_ALIAS:Ljava/lang/String; = "microsoft"

.field public static final COMPILER_KJC:Ljava/lang/String; = "kjc"

.field public static final COMPILER_MODERN:Ljava/lang/String; = "modern"

.field public static final COMPILER_MODERN_CLASSNAME:Ljava/lang/String;

.field public static final COMPILER_SYMANTEC:Ljava/lang/String; = "symantec"

.field public static final COMPILER_SYMANTEC_ALIAS:Ljava/lang/String; = "sj"

.field private static final FORKED_JDK_COMPILERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JDK_COMPILERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JDK_COMPILER_NICKNAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MODERN_COMPILER:Ljava/lang/String; = "com.sun.tools.javac.Main"

.field private static final MODERN_JDK_COMPILERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$oZW16v9rTa6UcKX8WG8T_p1OKII(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 18

    .line 63
    const-class v0, Lorg/apache/tools/ant/taskdefs/compilers/Javac13;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->COMPILER_MODERN_CLASSNAME:Ljava/lang/String;

    .line 64
    const-class v1, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->COMPILER_EXTJAVAC_CLASSNAME:Ljava/lang/String;

    const-string v1, "javac1.1"

    const-string v2, "javac1.2"

    const-string v3, "javac1.3"

    const-string v4, "javac1.4"

    const-string v5, "javac1.5"

    const-string v6, "javac1.6"

    const-string v7, "javac1.7"

    const-string v8, "javac1.8"

    const-string v9, "javac1.9"

    const-string v10, "javac9"

    const-string v11, "javac10+"

    const-string v12, "classic"

    const-string v13, "modern"

    const-string v14, "extJavac"

    move-object/from16 v17, v15

    move-object v15, v0

    move-object/from16 v16, v17

    .line 66
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->JDK_COMPILERS:Ljava/util/List;

    const-string v1, "extJavac"

    move-object/from16 v2, v17

    .line 85
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->FORKED_JDK_COMPILERS:Ljava/util/List;

    const-string v3, "classic"

    const-string v4, "modern"

    .line 90
    filled-new-array {v3, v4, v1, v0, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->JDK_COMPILER_NICKNAMES:Ljava/util/List;

    const-string v1, "javac1.1"

    const-string v2, "javac1.2"

    .line 98
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->CLASSIC_JDK_COMPILERS:Ljava/util/List;

    const-string v1, "javac1.3"

    const-string v2, "javac1.4"

    const-string v3, "javac1.5"

    const-string v4, "javac1.6"

    const-string v5, "javac1.7"

    const-string v6, "javac1.8"

    const-string v7, "javac1.9"

    const-string v8, "javac9"

    const-string v9, "javac10+"

    move-object v10, v0

    .line 103
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->MODERN_JDK_COMPILERS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static containsIgnoreCase(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 314
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static doesModernCompilerExist()Z
    .locals 3

    const-string v0, "com.sun.tools.javac.Main"

    const/4 v1, 0x1

    .line 229
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 233
    :catch_0
    :try_start_1
    const-class v2, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 235
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getCompiler(Ljava/lang/String;Lorg/apache/tools/ant/Task;)Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 147
    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->getCompiler(Ljava/lang/String;Lorg/apache/tools/ant/Task;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static getCompiler(Ljava/lang/String;Lorg/apache/tools/ant/Task;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "jikes"

    .line 180
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    new-instance p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;-><init>()V

    return-object p0

    .line 183
    :cond_0
    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->isForkedJavac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    new-instance p0, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;-><init>()V

    return-object p0

    :cond_1
    const-string v0, "classic"

    .line 186
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "modern"

    if-nez v0, :cond_2

    .line 187
    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->isClassicJdkCompiler(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string p0, "This version of java does not support the classic compiler; upgrading to modern"

    const/4 v0, 0x1

    .line 188
    invoke-virtual {p1, p0, v0}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    move-object p0, v1

    .line 193
    :cond_3
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 194
    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->isModernJdkCompiler(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "jvc"

    .line 204
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "microsoft"

    .line 205
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const-string v0, "kjc"

    .line 208
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 209
    new-instance p0, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;-><init>()V

    return-object p0

    :cond_6
    const-string v0, "gcj"

    .line 211
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 212
    new-instance p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;-><init>()V

    return-object p0

    :cond_7
    const-string v0, "sj"

    .line 214
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "symantec"

    .line 215
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    .line 220
    :cond_8
    invoke-virtual {p1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object p1

    .line 218
    invoke-static {p0, p1}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->resolveClassName(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;

    move-result-object p0

    return-object p0

    .line 216
    :cond_9
    :goto_0
    new-instance p0, Lorg/apache/tools/ant/taskdefs/compilers/Sj;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Sj;-><init>()V

    return-object p0

    .line 206
    :cond_a
    :goto_1
    new-instance p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;-><init>()V

    return-object p0

    .line 196
    :cond_b
    :goto_2
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->doesModernCompilerExist()Z

    move-result p0

    if-eqz p0, :cond_c

    .line 197
    new-instance p0, Lorg/apache/tools/ant/taskdefs/compilers/Javac13;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Javac13;-><init>()V

    return-object p0

    .line 199
    :cond_c
    new-instance p0, Lorg/apache/tools/ant/BuildException;

    const-string p1, "com.sun.tools.javac.Main"

    .line 201
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJavaHome()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Unable to find a javac compiler;\n%s is not on the classpath.\nPerhaps JAVA_HOME does not point to the JDK.\nIt is currently set to \"%s\""

    invoke-direct {p0, p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static isClassicJdkCompiler(Ljava/lang/String;)Z
    .locals 1

    .line 300
    sget-object v0, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->CLASSIC_JDK_COMPILERS:Ljava/util/List;

    invoke-static {v0, p0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->containsIgnoreCase(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isForkedJavac(Ljava/lang/String;)Z
    .locals 1

    .line 270
    sget-object v0, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->FORKED_JDK_COMPILERS:Ljava/util/List;

    invoke-static {v0, p0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->containsIgnoreCase(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isJdkCompiler(Ljava/lang/String;)Z
    .locals 1

    .line 280
    sget-object v0, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->JDK_COMPILERS:Ljava/util/List;

    invoke-static {v0, p0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->containsIgnoreCase(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isJdkCompilerNickname(Ljava/lang/String;)Z
    .locals 1

    .line 290
    sget-object v0, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->JDK_COMPILER_NICKNAMES:Ljava/util/List;

    invoke-static {v0, p0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->containsIgnoreCase(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isModernJdkCompiler(Ljava/lang/String;)Z
    .locals 1

    .line 310
    sget-object v0, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->MODERN_JDK_COMPILERS:Ljava/util/List;

    invoke-static {v0, p0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->containsIgnoreCase(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static resolveClassName(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    const-class p1, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :goto_0
    const-class v0, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;

    .line 257
    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;

    return-object p0
.end method
