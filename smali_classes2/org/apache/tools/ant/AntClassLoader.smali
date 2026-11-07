.class public Lorg/apache/tools/ant/AntClassLoader;
.super Ljava/lang/ClassLoader;
.source "AntClassLoader.java"

# interfaces
.implements Lorg/apache/tools/ant/SubBuildListener;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final EOCD_SIG:Lorg/apache/tools/zip/ZipLong;

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final IS_ATLEAST_JAVA9:Z

.field private static final MR_JARFILE_CTOR_ARGS:[Ljava/lang/Class;

.field private static final MR_JARFILE_CTOR_RUNTIME_VERSION_VAL:Ljava/lang/Object;

.field private static final NUMBER_OF_STRINGS:I = 0x100

.field private static final SINGLE_SEGMENT_SPLIT_MARKER:Lorg/apache/tools/zip/ZipLong;

.field private static pathMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ignoreBase:Z

.field private isContextLoaderSaved:Z

.field private jarFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/io/File;",
            "Ljava/util/jar/JarFile;",
            ">;"
        }
    .end annotation
.end field

.field private final loaderPackages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parent:Ljava/lang/ClassLoader;

.field private parentFirst:Z

.field private final pathComponents:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private project:Lorg/apache/tools/ant/Project;

.field private savedContextLoader:Ljava/lang/ClassLoader;

.field private final systemPackages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$D2XBLYNXFQXFUWG8N006L5F_2Oc(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LXv42HBDJWRrhLOlLkvfiIf58Dk(Ljava/util/Collection;)Ljava/util/Enumeration;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zg0G0oEcFMkKKCozwrUwVwcgQbQ(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 79
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/AntClassLoader;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    const-string v0, "9"

    .line 81
    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isAtLeastJavaVersion(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/tools/ant/AntClassLoader;->IS_ATLEAST_JAVA9:Z

    .line 87
    invoke-static {}, Lorg/apache/tools/ant/AntClassLoader;->registerAsParallelCapable()Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "java.lang.Runtime$Version"

    .line 92
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    .line 93
    const-class v3, Ljava/io/File;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v0, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :try_start_1
    const-class v0, Ljava/lang/Runtime;

    const-string v3, "version"

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v2, v1

    .line 98
    :catch_1
    :goto_0
    sput-object v2, Lorg/apache/tools/ant/AntClassLoader;->MR_JARFILE_CTOR_ARGS:[Ljava/lang/Class;

    .line 99
    sput-object v1, Lorg/apache/tools/ant/AntClassLoader;->MR_JARFILE_CTOR_RUNTIME_VERSION_VAL:Ljava/lang/Object;

    goto :goto_1

    .line 101
    :cond_0
    sput-object v1, Lorg/apache/tools/ant/AntClassLoader;->MR_JARFILE_CTOR_ARGS:[Ljava/lang/Class;

    .line 102
    sput-object v1, Lorg/apache/tools/ant/AntClassLoader;->MR_JARFILE_CTOR_RUNTIME_VERSION_VAL:Ljava/lang/Object;

    .line 252
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 253
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/AntClassLoader;->pathMap:Ljava/util/Map;

    .line 1584
    new-instance v0, Lorg/apache/tools/zip/ZipLong;

    const-wide/32 v1, 0x6054b50

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/zip/ZipLong;-><init>(J)V

    sput-object v0, Lorg/apache/tools/ant/AntClassLoader;->EOCD_SIG:Lorg/apache/tools/zip/ZipLong;

    .line 1585
    new-instance v0, Lorg/apache/tools/zip/ZipLong;

    const-wide/32 v1, 0x30304b50

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/zip/ZipLong;-><init>(J)V

    sput-object v0, Lorg/apache/tools/ant/AntClassLoader;->SINGLE_SEGMENT_SPLIT_MARKER:Lorg/apache/tools/zip/ZipLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 284
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 206
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->parentFirst:Z

    .line 224
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->systemPackages:Ljava/util/Vector;

    .line 231
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->loaderPackages:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->ignoreBase:Z

    const/4 v1, 0x0

    .line 244
    iput-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->parent:Ljava/lang/ClassLoader;

    .line 249
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    .line 259
    iput-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->savedContextLoader:Ljava/lang/ClassLoader;

    .line 264
    iput-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->isContextLoaderSaved:Z

    .line 285
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/AntClassLoader;->setParent(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;)V
    .locals 3

    .line 275
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 206
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->parentFirst:Z

    .line 224
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->systemPackages:Ljava/util/Vector;

    .line 231
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->loaderPackages:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->ignoreBase:Z

    const/4 v1, 0x0

    .line 244
    iput-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->parent:Ljava/lang/ClassLoader;

    .line 249
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    .line 259
    iput-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->savedContextLoader:Ljava/lang/ClassLoader;

    .line 264
    iput-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->isContextLoaderSaved:Z

    .line 276
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->setParent(Ljava/lang/ClassLoader;)V

    .line 277
    invoke-virtual {p0, p3}, Lorg/apache/tools/ant/AntClassLoader;->setClassPath(Lorg/apache/tools/ant/types/Path;)V

    .line 278
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/AntClassLoader;->setProject(Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)V
    .locals 0

    .line 323
    invoke-direct {p0, p2, p3}, Lorg/apache/tools/ant/AntClassLoader;-><init>(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;)V

    if-eqz p1, :cond_0

    .line 325
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->setParent(Ljava/lang/ClassLoader;)V

    .line 327
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/tools/ant/AntClassLoader;->setParentFirst(Z)V

    .line 328
    invoke-virtual {p0}, Lorg/apache/tools/ant/AntClassLoader;->addJavaLibraries()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Z)V
    .locals 3

    .line 361
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 206
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->parentFirst:Z

    .line 224
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->systemPackages:Ljava/util/Vector;

    .line 231
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->loaderPackages:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->ignoreBase:Z

    const/4 v1, 0x0

    .line 244
    iput-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->parent:Ljava/lang/ClassLoader;

    .line 249
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    .line 259
    iput-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->savedContextLoader:Ljava/lang/ClassLoader;

    .line 264
    iput-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->isContextLoaderSaved:Z

    .line 362
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->setParent(Ljava/lang/ClassLoader;)V

    .line 363
    iput-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->project:Lorg/apache/tools/ant/Project;

    .line 364
    iput-boolean p2, p0, Lorg/apache/tools/ant/AntClassLoader;->parentFirst:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;)V
    .locals 3

    .line 299
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 206
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->parentFirst:Z

    .line 224
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->systemPackages:Ljava/util/Vector;

    .line 231
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->loaderPackages:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->ignoreBase:Z

    const/4 v1, 0x0

    .line 244
    iput-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->parent:Ljava/lang/ClassLoader;

    .line 249
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    .line 259
    iput-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->savedContextLoader:Ljava/lang/ClassLoader;

    .line 264
    iput-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->isContextLoaderSaved:Z

    .line 300
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/AntClassLoader;->setParent(Ljava/lang/ClassLoader;)V

    .line 301
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 302
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/AntClassLoader;->setClassPath(Lorg/apache/tools/ant/types/Path;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 345
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/tools/ant/AntClassLoader;-><init>(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/AntClassLoader;)Ljava/util/Vector;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    return-object p0
.end method

.method private static append(Ljava/util/Enumeration;Ljava/util/Enumeration;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;)",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 1012
    invoke-static {p0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1013
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Enumeration;

    return-object p0
.end method

.method private findBaseClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1421
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->parent:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->findSystemClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private findClassInComponents(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1386
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->getClassFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1387
    iget-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 1388
    :try_start_0
    invoke-direct {p0, v2, v0}, Lorg/apache/tools/ant/AntClassLoader;->getResourceStream(Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    .line 1390
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loaded from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    .line 1392
    invoke-direct {p0, v3, p1, v2}, Lorg/apache/tools/ant/AntClassLoader;->getClassFromStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Class;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 1394
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-object v4

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    .line 1388
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v4

    :cond_3
    if-eqz v3, :cond_0

    .line 1394
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1398
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception reading component "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (reason: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1399
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 1398
    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1395
    throw p1

    .line 1402
    :cond_4
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getCertificates(Ljava/io/File;Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 2

    .line 1238
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1241
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/jar/JarFile;

    if-nez p1, :cond_1

    return-object v1

    .line 1245
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 1246
    :cond_2
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private getClassFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getClassFromStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1332
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    .line 1336
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1337
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1339
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 1340
    invoke-virtual {p0, p3, p1, p2}, Lorg/apache/tools/ant/AntClassLoader;->defineClassFromData(Ljava/io/File;[BLjava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method private getJarManifest(Ljava/io/File;)Ljava/util/jar/Manifest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1218
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1221
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/jar/JarFile;

    if-nez p1, :cond_1

    return-object v1

    .line 1225
    :cond_1
    invoke-virtual {p1}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object p1

    return-object p1
.end method

.method private getResourceStream(Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4

    const/4 v0, 0x0

    .line 802
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarFile;

    if-nez v1, :cond_0

    .line 803
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 804
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 805
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 806
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez v1, :cond_2

    .line 810
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 811
    invoke-static {p1}, Lorg/apache/tools/ant/AntClassLoader;->newJarFile(Ljava/io/File;)Ljava/util/jar/JarFile;

    move-result-object v1

    .line 812
    iget-object v2, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    iget-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarFile;

    goto :goto_0

    :cond_1
    return-object v0

    .line 820
    :cond_2
    :goto_0
    invoke-virtual {v1, p2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 822
    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reading resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " from "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    :cond_3
    return-object v0
.end method

.method private getRootLoader()Ljava/lang/ClassLoader;
    .locals 2

    .line 862
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 864
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    .line 923
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 924
    invoke-virtual {p0, v1, p1}, Lorg/apache/tools/ant/AntClassLoader;->getResourceURL(Ljava/io/File;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Resource "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " loaded from ant loader"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    :cond_1
    return-object v1
.end method

.method public static initializeClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 608
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 611
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-eqz p0, :cond_0

    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    .line 614
    :try_start_0
    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private isParentFirst(Ljava/lang/String;)Z
    .locals 2

    .line 853
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->loaderPackages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->systemPackages:Ljava/util/Vector;

    .line 854
    invoke-virtual {v0}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/apache/tools/ant/AntClassLoader;->parentFirst:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static isZip(Ljava/io/File;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 1590
    invoke-static {p0, v0}, Lorg/apache/tools/ant/AntClassLoader;->readFully(Ljava/io/File;[B)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 1591
    new-instance p0, Lorg/apache/tools/zip/ZipLong;

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipLong;-><init>([B)V

    .line 1592
    sget-object v0, Lorg/apache/tools/zip/ZipLong;->LFH_SIG:Lorg/apache/tools/zip/ZipLong;

    invoke-virtual {v0, p0}, Lorg/apache/tools/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/tools/ant/AntClassLoader;->EOCD_SIG:Lorg/apache/tools/zip/ZipLong;

    .line 1593
    invoke-virtual {v0, p0}, Lorg/apache/tools/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/tools/zip/ZipLong;->DD_SIG:Lorg/apache/tools/zip/ZipLong;

    .line 1594
    invoke-virtual {v0, p0}, Lorg/apache/tools/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/tools/ant/AntClassLoader;->SINGLE_SEGMENT_SPLIT_MARKER:Lorg/apache/tools/zip/ZipLong;

    .line 1595
    invoke-virtual {v0, p0}, Lorg/apache/tools/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private loadBaseResource(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 785
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->parent:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private loadResource(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .line 770
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda3;-><init>(Lorg/apache/tools/ant/AntClassLoader;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda4;-><init>()V

    .line 771
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    return-object p1
.end method

.method public static newAntClassLoader(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)Lorg/apache/tools/ant/AntClassLoader;
    .locals 1

    .line 1581
    new-instance v0, Lorg/apache/tools/ant/AntClassLoader;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/tools/ant/AntClassLoader;-><init>(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)V

    return-object v0
.end method

.method private static newJarFile(Ljava/io/File;)Ljava/util/jar/JarFile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1624
    sget-boolean v0, Lorg/apache/tools/ant/AntClassLoader;->IS_ATLEAST_JAVA9:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/tools/ant/AntClassLoader;->MR_JARFILE_CTOR_ARGS:[Ljava/lang/Class;

    if-eqz v0, :cond_1

    sget-object v1, Lorg/apache/tools/ant/AntClassLoader;->MR_JARFILE_CTOR_RUNTIME_VERSION_VAL:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1627
    :cond_0
    const-class v2, Ljava/util/jar/JarFile;

    const/4 v3, 0x1

    .line 1628
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p0, v4, v3, v1}, [Ljava/lang/Object;

    move-result-object p0

    .line 1627
    invoke-static {v2, v0, p0}, Lorg/apache/tools/ant/util/ReflectUtil;->newInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/jar/JarFile;

    return-object p0

    .line 1625
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/jar/JarFile;

    invoke-direct {v0, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method private static readFully(Ljava/io/File;[B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1601
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    .line 1602
    :try_start_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-eq v2, v1, :cond_1

    sub-int v3, v1, v2

    .line 1605
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v2, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz p0, :cond_3

    .line 1612
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_3
    return v0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_4

    .line 1601
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1
.end method


# virtual methods
.method public addJavaLibraries()V
    .locals 2

    .line 1545
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJrePackages()Ljava/util/Vector;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/AntClassLoader;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public addLoaderPackageRoot(Ljava/lang/String;)V
    .locals 3

    .line 658
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->loaderPackages:Ljava/util/Vector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addPathComponent(Ljava/io/File;)V
    .locals 1

    .line 498
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addPathElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 484
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->addPathFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 486
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected addPathFile(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 518
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 522
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 523
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    sget-object v1, Lorg/apache/tools/ant/AntClassLoader;->pathMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_7

    .line 526
    invoke-static {p1}, Lorg/apache/tools/ant/AntClassLoader;->newJarFile(Ljava/io/File;)Ljava/util/jar/JarFile;

    move-result-object v1

    .line 527
    :try_start_0
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    .line 533
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    :cond_2
    return-void

    .line 531
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v2

    sget-object v3, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    .line 532
    invoke-virtual {v2, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 533
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    :cond_4
    if-nez v2, :cond_5

    const-string v1, ""

    goto :goto_0

    :cond_5
    move-object v1, v2

    .line 537
    :goto_0
    sget-object v2, Lorg/apache/tools/ant/AntClassLoader;->pathMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_6

    .line 526
    :try_start_2
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw p1

    .line 540
    :cond_7
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 541
    sget-object v0, Lorg/apache/tools/ant/AntClassLoader;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object p1

    .line 542
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 543
    :cond_8
    :goto_3
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 544
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 545
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 546
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skipping jar library "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " since only relative URLs are supported by this loader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    goto :goto_3

    .line 552
    :cond_9
    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/launch/Locator;->decodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 553
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/AntClassLoader;->isInPath(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 555
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/AntClassLoader;->addPathFile(Ljava/io/File;)V

    goto :goto_3

    :cond_a
    return-void
.end method

.method public addSystemPackageRoot(Ljava/lang/String;)V
    .locals 3

    .line 645
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->systemPackages:Ljava/util/Vector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public buildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    .line 1466
    invoke-virtual {p0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    return-void
.end method

.method public buildStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized cleanup()V
    .locals 2

    monitor-enter p0

    .line 1429
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarFile;

    .line 1430
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 1432
    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    .line 1433
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_1

    .line 1434
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/Project;->removeBuildListener(Lorg/apache/tools/ant/BuildListener;)V

    :cond_1
    const/4 v0, 0x0

    .line 1436
    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->project:Lorg/apache/tools/ant/Project;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1437
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 0

    .line 1565
    invoke-virtual {p0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    return-void
.end method

.method protected defineClassFromData(Ljava/io/File;[BLjava/lang/String;)Ljava/lang/Class;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[B",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1162
    invoke-virtual {p0, p1, p3}, Lorg/apache/tools/ant/AntClassLoader;->definePackage(Ljava/io/File;Ljava/lang/String;)V

    .line 1163
    const-class v0, Lorg/apache/tools/ant/Project;

    invoke-virtual {v0}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v0

    .line 1164
    invoke-direct {p0, p3}, Lorg/apache/tools/ant/AntClassLoader;->getClassFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1165
    new-instance v2, Ljava/security/CodeSource;

    sget-object v3, Lorg/apache/tools/ant/AntClassLoader;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v3, p1}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v3

    .line 1166
    invoke-direct {p0, p1, v1}, Lorg/apache/tools/ant/AntClassLoader;->getCertificates(Ljava/io/File;Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    .line 1168
    new-instance v9, Ljava/security/ProtectionDomain;

    .line 1169
    invoke-virtual {v0}, Ljava/security/ProtectionDomain;->getPermissions()Ljava/security/PermissionCollection;

    move-result-object p1

    .line 1171
    invoke-virtual {v0}, Ljava/security/ProtectionDomain;->getPrincipals()[Ljava/security/Principal;

    move-result-object v0

    invoke-direct {v9, v2, p1, p0, v0}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;Ljava/lang/ClassLoader;[Ljava/security/Principal;)V

    const/4 v7, 0x0

    .line 1172
    array-length v8, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p2

    invoke-virtual/range {v4 .. v9}, Lorg/apache/tools/ant/AntClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method protected definePackage(Ljava/io/File;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2e

    .line 1187
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1191
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1192
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/AntClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object p2

    if-eqz p2, :cond_1

    return-void

    .line 1197
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->getJarManifest(Ljava/io/File;)Ljava/util/jar/Manifest;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    .line 1200
    invoke-virtual/range {v2 .. v10}, Lorg/apache/tools/ant/AntClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    goto :goto_0

    .line 1202
    :cond_2
    invoke-virtual {p0, p1, v3, p2}, Lorg/apache/tools/ant/AntClassLoader;->definePackage(Ljava/io/File;Ljava/lang/String;Ljava/util/jar/Manifest;)V

    :goto_0
    return-void
.end method

.method protected definePackage(Ljava/io/File;Ljava/lang/String;Ljava/util/jar/Manifest;)V
    .locals 11

    .line 1258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1269
    invoke-virtual {p3, v0}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1271
    sget-object v2, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 1272
    sget-object v3, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 1273
    sget-object v4, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    .line 1274
    sget-object v5, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v5}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    .line 1275
    sget-object v6, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    .line 1276
    sget-object v7, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v7}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 1277
    sget-object v8, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    .line 1279
    :goto_0
    invoke-virtual {p3}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object p3

    if-eqz p3, :cond_7

    if-nez v2, :cond_1

    .line 1282
    sget-object v2, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {p3, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-nez v3, :cond_2

    .line 1285
    sget-object v3, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {p3, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-nez v4, :cond_3

    .line 1288
    sget-object v4, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {p3, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    if-nez v5, :cond_4

    .line 1291
    sget-object v5, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {p3, v5}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    if-nez v6, :cond_5

    .line 1294
    sget-object v6, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {p3, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    :cond_5
    if-nez v7, :cond_6

    .line 1297
    sget-object v7, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {p3, v7}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    :cond_6
    if-nez v0, :cond_7

    .line 1300
    sget-object v0, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {p3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    move-object v9, v6

    move-object v8, v7

    move-object v6, v3

    move-object v7, v5

    move-object v5, v4

    move-object v4, v2

    if-eqz v0, :cond_8

    const-string p3, "true"

    .line 1303
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 1305
    :try_start_0
    new-instance p3, Ljava/net/URL;

    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/FileUtils;->toURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, p3

    goto :goto_1

    :catch_0
    :cond_8
    move-object v10, v1

    :goto_1
    move-object v2, p0

    move-object v3, p2

    .line 1310
    invoke-virtual/range {v2 .. v10}, Lorg/apache/tools/ant/AntClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    return-void
.end method

.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1356
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finding class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    .line 1357
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->findClassInComponents(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 0

    .line 959
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method protected findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 973
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/AntClassLoader;->findResources(Ljava/lang/String;Z)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method protected findResources(Ljava/lang/String;Z)Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 991
    new-instance v0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;

    invoke-direct {v0, p0, p1}, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;-><init>(Lorg/apache/tools/ant/AntClassLoader;Ljava/lang/String;)V

    .line 993
    iget-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->parent:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 995
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p2

    goto :goto_0

    .line 997
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyEnumeration()Ljava/util/Enumeration;

    move-result-object p2

    .line 999
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->isParentFirst(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1001
    invoke-static {p2, v0}, Lorg/apache/tools/ant/AntClassLoader;->append(Ljava/util/Enumeration;Ljava/util/Enumeration;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1

    .line 1003
    :cond_1
    iget-boolean v1, p0, Lorg/apache/tools/ant/AntClassLoader;->ignoreBase:Z

    if-eqz v1, :cond_3

    .line 1004
    invoke-direct {p0}, Lorg/apache/tools/ant/AntClassLoader;->getRootLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    .line 1005
    :cond_2
    invoke-direct {p0}, Lorg/apache/tools/ant/AntClassLoader;->getRootLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/tools/ant/AntClassLoader;->append(Ljava/util/Enumeration;Ljava/util/Enumeration;)Ljava/util/Enumeration;

    move-result-object v0

    :goto_1
    return-object v0

    .line 1008
    :cond_3
    invoke-static {v0, p2}, Lorg/apache/tools/ant/AntClassLoader;->append(Ljava/util/Enumeration;Ljava/util/Enumeration;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public forceLoadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "force loading "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    .line 679
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 682
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public forceLoadSystemClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "force system loading "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    .line 706
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 709
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->findBaseClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getClasspath()Ljava/lang/String;
    .locals 4

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    iget-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 570
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 571
    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 575
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredParent()Ljava/lang/ClassLoader;
    .locals 1

    .line 1447
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->parent:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getNamedResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 947
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/AntClassLoader;->findResources(Ljava/lang/String;Z)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 6

    .line 886
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->isParentFirst(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 887
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->parent:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const-string v2, " loaded from parent loader"

    const-string v3, "Resource "

    const/4 v4, 0x4

    if-eqz v0, :cond_2

    .line 890
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 892
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_6

    .line 894
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->isParentFirst(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 896
    iget-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->ignoreBase:Z

    if-eqz v0, :cond_4

    .line 897
    invoke-direct {p0}, Lorg/apache/tools/ant/AntClassLoader;->getRootLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lorg/apache/tools/ant/AntClassLoader;->getRootLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    :goto_2
    move-object v0, v1

    goto :goto_3

    .line 899
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->parent:Ljava/lang/ClassLoader;

    if-nez v0, :cond_5

    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_6

    .line 902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    :cond_6
    if-nez v0, :cond_7

    .line 906
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t load Resource "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    :cond_7
    return-object v0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7

    .line 726
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->isParentFirst(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 727
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->loadBaseResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, " loaded from parent loader"

    const-string v3, "ResourceStream for "

    const/4 v4, 0x4

    if-eqz v0, :cond_1

    .line 730
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 733
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->loadResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 735
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " loaded from ant loader"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    :cond_2
    :goto_1
    if-nez v0, :cond_5

    .line 739
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->isParentFirst(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 740
    iget-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->ignoreBase:Z

    if-eqz v0, :cond_4

    .line 741
    invoke-direct {p0}, Lorg/apache/tools/ant/AntClassLoader;->getRootLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 743
    :cond_3
    invoke-direct {p0}, Lorg/apache/tools/ant/AntClassLoader;->getRootLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :goto_2
    move-object v0, v1

    goto :goto_3

    .line 745
    :cond_4
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->loadBaseResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_5

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    :cond_5
    if-nez v0, :cond_6

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t load ResourceStream for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    :cond_6
    return-object v0
.end method

.method protected getResourceURL(Ljava/io/File;Ljava/lang/String;)Ljava/net/URL;
    .locals 6

    const-string v0, "CLASSPATH element "

    const-string v1, "jar:"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1030
    :try_start_0
    iget-object v4, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/jar/JarFile;

    if-nez v4, :cond_0

    .line 1031
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1032
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1034
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p2, :cond_4

    .line 1036
    :try_start_1
    sget-object p2, Lorg/apache/tools/ant/AntClassLoader;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object p1
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-object p1

    :catch_0
    return-object v3

    :cond_0
    if-nez v4, :cond_3

    .line 1043
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1044
    invoke-static {p1}, Lorg/apache/tools/ant/AntClassLoader;->isZip(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1045
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is not a JAR."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1047
    invoke-virtual {p0, p2, v2}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    return-object v3

    .line 1050
    :cond_1
    invoke-static {p1}, Lorg/apache/tools/ant/AntClassLoader;->newJarFile(Ljava/io/File;)Ljava/util/jar/JarFile;

    move-result-object v0

    .line 1051
    iget-object v4, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    invoke-virtual {v4, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/jar/JarFile;

    goto :goto_0

    :cond_2
    return-object v3

    .line 1058
    :cond_3
    :goto_0
    invoke-virtual {v4, p2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p2, :cond_4

    .line 1061
    :try_start_3
    new-instance v0, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/apache/tools/ant/AntClassLoader;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "!/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object v0

    :catch_1
    return-object v3

    :catch_2
    move-exception p2

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to obtain resource from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    .line 1070
    invoke-static {p2}, Lorg/apache/tools/ant/util/StringUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    :cond_4
    return-object v3
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1560
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->getNamedResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method protected isInPath(Ljava/io/File;)Z
    .locals 1

    .line 1368
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$loadResource$0$org-apache-tools-ant-AntClassLoader(Ljava/lang/String;Ljava/io/File;)Ljava/io/InputStream;
    .locals 0

    .line 770
    invoke-direct {p0, p2, p1}, Lorg/apache/tools/ant/AntClassLoader;->getResourceStream(Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method protected declared-synchronized loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "Class "

    const-string v1, "Class "

    const-string v2, "Class "

    const-string v3, "Class "

    monitor-enter p0

    .line 1102
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 1104
    monitor-exit p0

    return-object v4

    .line 1106
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->isParentFirst(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x4

    if-eqz v4, :cond_1

    .line 1108
    :try_start_2
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->findBaseClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " loaded from parent loader (parentFirst)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1112
    :catch_0
    :try_start_3
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " loaded from ant loader (parentFirst)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1118
    :cond_1
    :try_start_4
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " loaded from ant loader"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 1121
    :try_start_5
    iget-boolean v2, p0, Lorg/apache/tools/ant/AntClassLoader;->ignoreBase:Z

    if-nez v2, :cond_3

    .line 1124
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->findBaseClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " loaded from parent loader"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    goto :goto_0

    :goto_1
    if-eqz p2, :cond_2

    .line 1129
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/AntClassLoader;->resolveClass(Ljava/lang/Class;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1131
    :cond_2
    monitor-exit p0

    return-object v0

    .line 1122
    :cond_3
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected log(Ljava/lang/String;I)V
    .locals 1

    .line 433
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    .line 436
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public messageLogged(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    return-void
.end method

.method public resetThreadContextLoader()V
    .locals 1

    .line 463
    invoke-static {}, Lorg/apache/tools/ant/util/LoaderUtils;->isContextLoaderAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->isContextLoaderSaved:Z

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->savedContextLoader:Ljava/lang/ClassLoader;

    invoke-static {v0}, Lorg/apache/tools/ant/util/LoaderUtils;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    const/4 v0, 0x0

    .line 465
    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->savedContextLoader:Ljava/lang/ClassLoader;

    const/4 v0, 0x0

    .line 466
    iput-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->isContextLoaderSaved:Z

    :cond_0
    return-void
.end method

.method public setClassPath(Lorg/apache/tools/ant/types/Path;)V
    .locals 6

    .line 387
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    if-eqz p1, :cond_0

    const-string v0, "ignore"

    .line 389
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 391
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/AntClassLoader;->addPathElement(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 395
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ignoring path element "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " from classpath due to exception "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized setIsolated(Z)V
    .locals 0

    monitor-enter p0

    .line 588
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/AntClassLoader;->ignoreBase:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setParent(Ljava/lang/ClassLoader;)V
    .locals 0

    if-nez p1, :cond_0

    .line 409
    const-class p1, Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/AntClassLoader;->parent:Ljava/lang/ClassLoader;

    return-void
.end method

.method public setParentFirst(Z)V
    .locals 0

    .line 421
    iput-boolean p1, p0, Lorg/apache/tools/ant/AntClassLoader;->parentFirst:Z

    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lorg/apache/tools/ant/AntClassLoader;->project:Lorg/apache/tools/ant/Project;

    if-eqz p1, :cond_0

    .line 375
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/Project;->addBuildListener(Lorg/apache/tools/ant/BuildListener;)V

    :cond_0
    return-void
.end method

.method public setThreadContextLoader()V
    .locals 2

    .line 445
    iget-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->isContextLoaderSaved:Z

    if-nez v0, :cond_2

    .line 448
    invoke-static {}, Lorg/apache/tools/ant/util/LoaderUtils;->isContextLoaderAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    invoke-static {}, Lorg/apache/tools/ant/util/LoaderUtils;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->savedContextLoader:Ljava/lang/ClassLoader;

    .line 451
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_0

    const-string v1, "build.sysclasspath"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "only"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 454
    :goto_0
    invoke-static {v0}, Lorg/apache/tools/ant/util/LoaderUtils;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    const/4 v0, 0x1

    .line 455
    iput-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->isContextLoaderSaved:Z

    :cond_1
    return-void

    .line 446
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Context loader has not been reset"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subBuildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 1

    .line 1479
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->project:Lorg/apache/tools/ant/Project;

    if-ne p1, v0, :cond_0

    .line 1480
    invoke-virtual {p0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    :cond_0
    return-void
.end method

.method public subBuildStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    return-void
.end method

.method public targetFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    return-void
.end method

.method public targetStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    return-void
.end method

.method public taskFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    return-void
.end method

.method public taskStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1554
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AntClassLoader["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/tools/ant/AntClassLoader;->getClasspath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
