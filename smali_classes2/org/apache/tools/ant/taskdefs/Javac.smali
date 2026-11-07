.class public Lorg/apache/tools/ant/taskdefs/Javac;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "Javac.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Javac$ImplementationSpecificArgument;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final FAIL_MSG:Ljava/lang/String; = "Compile failed; see the compiler error output for details."

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final GROUP_END_MARK:C = '}'

.field private static final GROUP_SEP_MARK:C = ','

.field private static final GROUP_START_MARK:C = '{'

.field private static final MODULE_MARKER:Ljava/lang/String; = "*"

.field private static final PACKAGE_INFO_CLASS_FOOTER:[B

.field private static final PACKAGE_INFO_CLASS_HEADER:[B


# instance fields
.field private bootclasspath:Lorg/apache/tools/ant/types/Path;

.field private compileClasspath:Lorg/apache/tools/ant/types/Path;

.field protected compileList:[Ljava/io/File;

.field private compileSourcepath:Lorg/apache/tools/ant/types/Path;

.field private createMissingPackageInfoClass:Z

.field private debug:Z

.field private debugLevel:Ljava/lang/String;

.field private depend:Z

.field private deprecation:Z

.field private destDir:Ljava/io/File;

.field private encoding:Ljava/lang/String;

.field private errorProperty:Ljava/lang/String;

.field private extdirs:Lorg/apache/tools/ant/types/Path;

.field private facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

.field protected failOnError:Z

.field private fork:Z

.field private forkedExecutable:Ljava/lang/String;

.field private includeAntRuntime:Ljava/lang/Boolean;

.field private includeDestClasses:Z

.field private includeJavaRuntime:Z

.field protected listFiles:Z

.field private memoryInitialSize:Ljava/lang/String;

.field private memoryMaximumSize:Ljava/lang/String;

.field private moduleSourcepath:Lorg/apache/tools/ant/types/Path;

.field private modulepath:Lorg/apache/tools/ant/types/Path;

.field private nativeHeaderDir:Ljava/io/File;

.field private nestedAdapter:Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;

.field private nowarn:Z

.field private optimize:Z

.field private packageInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private release:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private src:Lorg/apache/tools/ant/types/Path;

.field private targetAttribute:Ljava/lang/String;

.field private taskSuccess:Z

.field private tmpDir:Ljava/io/File;

.field private updatedProperty:Ljava/lang/String;

.field private upgrademodulepath:Lorg/apache/tools/ant/types/Path;

.field private verbose:Z


# direct methods
.method public static synthetic $r8$lambda$4ShZy5DnCJZ9r0tNFnoaO7G970Q(Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 93
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Javac;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    const/16 v0, 0x32

    new-array v0, v0, [B

    .line 1648
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Javac;->PACKAGE_INFO_CLASS_HEADER:[B

    const/16 v0, 0x36

    new-array v0, v0, [B

    .line 1656
    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Javac;->PACKAGE_INFO_CLASS_FOOTER:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x36t
        -0x2t
        -0x46t
        -0x42t
        0x0t
        0x0t
        0x0t
        0x31t
        0x0t
        0x7t
        0x7t
        0x0t
        0x5t
        0x7t
        0x0t
        0x6t
        0x1t
        0x0t
        0xat
        0x53t
        0x6ft
        0x75t
        0x72t
        0x63t
        0x65t
        0x46t
        0x69t
        0x6ct
        0x65t
        0x1t
        0x0t
        0x11t
        0x70t
        0x61t
        0x63t
        0x6bt
        0x61t
        0x67t
        0x65t
        0x2dt
        0x69t
        0x6et
        0x66t
        0x6ft
        0x2et
        0x6at
        0x61t
        0x76t
        0x61t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2ft
        0x70t
        0x61t
        0x63t
        0x6bt
        0x61t
        0x67t
        0x65t
        0x2dt
        0x69t
        0x6et
        0x66t
        0x6ft
        0x1t
        0x0t
        0x10t
        0x6at
        0x61t
        0x76t
        0x61t
        0x2ft
        0x6ct
        0x61t
        0x6et
        0x67t
        0x2ft
        0x4ft
        0x62t
        0x6at
        0x65t
        0x63t
        0x74t
        0x2t
        0x0t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x4t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 143
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->debug:Z

    .line 105
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->optimize:Z

    .line 106
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->deprecation:Z

    .line 107
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->depend:Z

    .line 108
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->verbose:Z

    .line 114
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->includeJavaRuntime:Z

    .line 115
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->fork:Z

    const/4 v1, 0x0

    .line 116
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->forkedExecutable:Ljava/lang/String;

    .line 117
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->nowarn:Z

    .line 120
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    const/4 v2, 0x1

    .line 123
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Javac;->failOnError:Z

    .line 124
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->listFiles:Z

    new-array v0, v0, [Ljava/io/File;

    .line 125
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileList:[Ljava/io/File;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->packageInfos:Ljava/util/Map;

    .line 134
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Javac;->taskSuccess:Z

    .line 135
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Javac;->includeDestClasses:Z

    .line 136
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;

    .line 138
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Javac;->createMissingPackageInfoClass:Z

    .line 144
    new-instance v0, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->assumedJavaVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    return-void
.end method

.method private assumedJavaVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.8"

    .line 148
    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isJavaVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "javac1.8"

    return-object v0

    :cond_0
    const-string v0, "9"

    .line 151
    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isJavaVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "javac9"

    return-object v0

    :cond_1
    const-string v0, "10"

    .line 154
    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isAtLeastJavaVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "javac10+"

    return-object v0

    :cond_2
    const-string v0, "modern"

    return-object v0
.end method

.method private collectFileListFromModulePath()V
    .locals 12

    .line 1154
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    .line 1155
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->moduleSourcepath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 1158
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v6

    .line 1157
    invoke-static {v6, v5}, Lorg/apache/tools/ant/taskdefs/Javac;->resolveModuleSourcePathElement(Ljava/io/File;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 1158
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 1157
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v3

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1159
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1160
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    .line 1161
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1163
    invoke-virtual {p0, v10}, Lorg/apache/tools/ant/taskdefs/Javac;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v7

    .line 1164
    invoke-virtual {v7}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v7

    .line 1165
    iget-object v11, p0, Lorg/apache/tools/ant/taskdefs/Javac;->destDir:Ljava/io/File;

    invoke-virtual {v0, v11, v9}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {p0, v10, v11, v7}, Lorg/apache/tools/ant/taskdefs/Javac;->scanDir(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1170
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "modulesourcepath \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" does not exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1172
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    :cond_4
    return-void
.end method

.method private collectFileListFromSourcePath()V
    .locals 6

    .line 1139
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->src:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1140
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 1141
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1147
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/taskdefs/Javac;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v4

    .line 1149
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Javac;->destDir:Ljava/io/File;

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move-object v5, v3

    :goto_1
    invoke-virtual {v4}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v5, v4}, Lorg/apache/tools/ant/taskdefs/Javac;->scanDir(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1142
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "srcdir \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1143
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" does not exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1144
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    :cond_2
    return-void
.end method

.method private static expandGroups(Ljava/lang/CharSequence;)Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 1485
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 1486
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x7b

    const/4 v5, 0x1

    if-eq v3, v4, :cond_0

    .line 1516
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1489
    :cond_0
    invoke-static {p0, v2}, Lorg/apache/tools/ant/taskdefs/Javac;->getGroupEndIndex(Ljava/lang/CharSequence;I)I

    move-result v3

    if-ltz v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    .line 1496
    invoke-interface {p0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Javac;->resolveGroup(Ljava/lang/CharSequence;)Ljava/util/Collection;

    move-result-object v2

    .line 1497
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    if-eqz v4, :cond_4

    if-eq v4, v5, :cond_3

    .line 1505
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v7

    mul-int/2addr v6, v7

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1506
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 1507
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 1508
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1511
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    goto :goto_2

    .line 1501
    :cond_3
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    move v2, v3

    :goto_3
    add-int/2addr v2, v5

    goto/16 :goto_0

    .line 1491
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 1494
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Unclosed group %s, starting at: %d"

    .line 1491
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1519
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    .line 1520
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    return-object v0
.end method

.method private static findModules(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;>;)V"
        }
    .end annotation

    .line 1635
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1636
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1639
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/taskdefs/Javac$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lorg/apache/tools/ant/taskdefs/Javac$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    aget-object v1, p0, v0

    .line 1640
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_1

    goto :goto_1

    .line 1642
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v3

    .line 1643
    :goto_1
    new-instance v3, Lorg/apache/tools/ant/taskdefs/Javac$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lorg/apache/tools/ant/taskdefs/Javac$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p3, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 1644
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static findModules(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;>;)V"
        }
    .end annotation

    const/16 v0, 0x2f

    .line 1595
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 1596
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x5c

    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 1597
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const-string v0, "*"

    .line 1598
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 1600
    invoke-static {p0, p1, v2, p2}, Lorg/apache/tools/ant/taskdefs/Javac;->findModules(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    if-eqz v1, :cond_6

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, v1, -0x1

    .line 1607
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sget-char v6, Ljava/io/File;->separatorChar:C

    if-ne v5, v6, :cond_5

    .line 1610
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sget-char v6, Ljava/io/File;->separatorChar:C

    if-ne v5, v6, :cond_1

    goto :goto_0

    .line 1611
    :cond_1
    new-instance p0, Lorg/apache/tools/ant/BuildException;

    const-string p1, "The module mark must be followed by separator"

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1613
    :cond_2
    :goto_0
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_4

    const/4 v0, 0x0

    .line 1616
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1617
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v4, v1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 1618
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1619
    :goto_1
    invoke-static {p0, v0, v2, p2}, Lorg/apache/tools/ant/taskdefs/Javac;->findModules(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 1614
    :cond_4
    new-instance p0, Lorg/apache/tools/ant/BuildException;

    const-string p1, "The modulesourcepath entry must contain at most one module mark"

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1608
    :cond_5
    new-instance p0, Lorg/apache/tools/ant/BuildException;

    const-string p1, "The module mark must be preceded by separator"

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1604
    :cond_6
    new-instance p0, Lorg/apache/tools/ant/BuildException;

    const-string p1, "The modulesourcepath entry must be a folder."

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private findSupportedFileExtensions()[Ljava/lang/String;
    .locals 4

    .line 1178
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCompiler()Ljava/lang/String;

    move-result-object v0

    .line 1180
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1182
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->createCompilerClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    .line 1181
    invoke-static {v0, p0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->getCompiler(Ljava/lang/String;Lorg/apache/tools/ant/Task;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;

    move-result-object v1

    .line 1184
    :goto_0
    instance-of v0, v1, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterExtension;

    if-eqz v0, :cond_1

    .line 1185
    check-cast v1, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterExtension;

    .line 1186
    invoke-interface {v1}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterExtension;->getSupportedFileExtensions()[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    const-string v0, "java"

    .line 1190
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/4 v1, 0x0

    .line 1195
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 1196
    aget-object v2, v0, v1

    const-string v3, "*."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method private generateMissingPackageInfoClasses(Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1419
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->packageInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1420
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1421
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1422
    new-instance v3, Ljava/io/File;

    const/16 v4, 0x2f

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1423
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1424
    new-instance v4, Ljava/io/File;

    const-string v5, "package-info.class"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1425
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-ltz v1, :cond_1

    goto :goto_0

    .line 1428
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Creating empty "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;)V

    .line 1429
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1

    .line 1430
    :try_start_0
    sget-object v3, Lorg/apache/tools/ant/taskdefs/Javac;->PACKAGE_INFO_CLASS_HEADER:[B

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1431
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 1432
    array-length v3, v2

    add-int/lit8 v3, v3, 0xd

    int-to-byte v3, v3

    .line 1433
    div-int/lit16 v4, v3, 0x100

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 1434
    rem-int/lit16 v3, v3, 0x100

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 1435
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1436
    sget-object v2, Lorg/apache/tools/ant/taskdefs/Javac;->PACKAGE_INFO_CLASS_FOOTER:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1437
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_2

    .line 1429
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1

    :cond_3
    return-void
.end method

.method private getAltCompilerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 946
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->isModernJdkCompiler(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "modern"

    if-eqz v0, :cond_0

    return-object v1

    .line 949
    :cond_0
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->isClassicJdkCompiler(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "classic"

    if-eqz v0, :cond_1

    return-object v2

    .line 952
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 953
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->assumedJavaVersion()Ljava/lang/String;

    move-result-object v0

    .line 954
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->isModernJdkCompiler(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 958
    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 959
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->assumedJavaVersion()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 961
    :cond_3
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->isForkedJavac(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 962
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->assumedJavaVersion()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getGroupEndIndex(Ljava/lang/CharSequence;I)I
    .locals 3

    const/4 v0, 0x0

    .line 1567
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 1568
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_2

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private static hasPath(Lorg/apache/tools/ant/types/Path;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1448
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$findModules$0(Ljava/lang/String;)Ljava/util/Collection;
    .locals 0

    .line 1643
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private lookForPackageInfos(Ljava/io/File;[Ljava/io/File;)V
    .locals 8

    .line 1397
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    const-string v4, "package-info.java"

    .line 1398
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 1401
    :cond_0
    sget-object v4, Lorg/apache/tools/ant/taskdefs/Javac;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v4, p1, v3}, Lorg/apache/tools/ant/util/FileUtils;->removeLeadingPath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    const/16 v6, 0x2f

    .line 1402
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/package-info.java"

    .line 1404
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1405
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "anomalous package-info.java path: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 1408
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x12

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1409
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Javac;->packageInfos:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static resolveGroup(Ljava/lang/CharSequence;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1532
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 1535
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1536
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_2

    const/16 v5, 0x7b

    if-eq v4, v5, :cond_1

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    .line 1546
    invoke-interface {p0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Javac;->expandGroups(Ljava/lang/CharSequence;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v1, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1552
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->expandGroups(Ljava/lang/CharSequence;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private static resolveModuleSourcePathElement(Ljava/io/File;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .line 1462
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1463
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->expandGroups(Ljava/lang/CharSequence;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 1464
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/Javac;->findModules(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;)V
    .locals 1

    .line 1055
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;

    if-nez v0, :cond_0

    .line 1059
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;

    return-void

    .line 1056
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Can\'t have more than one compiler adapter"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected checkParameters()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1293
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->src:Lorg/apache/tools/ant/types/Path;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->hasPath(Lorg/apache/tools/ant/types/Path;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1294
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->moduleSourcepath:Lorg/apache/tools/ant/types/Path;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->hasPath(Lorg/apache/tools/ant/types/Path;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1295
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "modulesourcepath cannot be combined with srcdir attribute!"

    .line 1296
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1298
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->moduleSourcepath:Lorg/apache/tools/ant/types/Path;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->hasPath(Lorg/apache/tools/ant/types/Path;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1299
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->src:Lorg/apache/tools/ant/types/Path;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->hasPath(Lorg/apache/tools/ant/types/Path;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->hasPath(Lorg/apache/tools/ant/types/Path;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1303
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->destDir:Ljava/io/File;

    if-eqz v0, :cond_5

    .line 1312
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->destDir:Ljava/io/File;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1313
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "destination directory \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javac;->destDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" does not exist or is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1315
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1317
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->includeAntRuntime:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "build.sysclasspath"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "warning: \'includeantruntime\' was not set, defaulting to build.sysclasspath=last; set to false for repeatable builds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    :cond_4
    return-void

    .line 1304
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "modulesourcepath requires destdir attribute to be set!"

    .line 1305
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1300
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "modulesourcepath cannot be combined with srcdir or sourcepath !"

    .line 1301
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1308
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "either srcdir or modulesourcepath attribute must be set!"

    .line 1309
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method protected compile()V
    .locals 6

    .line 1330
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCompiler()Ljava/lang/String;

    move-result-object v0

    .line 1332
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileList:[Ljava/io/File;

    array-length v1, v1

    if-lez v1, :cond_8

    .line 1333
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Compiling "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileList:[Ljava/io/File;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " source file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1334
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileList:[Ljava/io/File;

    array-length v2, v2

    const-string v3, ""

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    const-string v2, "s"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1335
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javac;->destDir:Ljava/io/File;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Javac;->destDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1333
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;)V

    .line 1337
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->listFiles:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1338
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileList:[Ljava/io/File;

    array-length v3, v1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 1339
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1344
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;

    if-eqz v1, :cond_3

    goto :goto_2

    .line 1346
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->createCompilerClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    .line 1345
    invoke-static {v0, p0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->getCompiler(Ljava/lang/String;Lorg/apache/tools/ant/Task;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;

    move-result-object v1

    .line 1349
    :goto_2
    invoke-interface {v1, p0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;->setJavac(Lorg/apache/tools/ant/taskdefs/Javac;)V

    .line 1352
    invoke-interface {v1}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;->execute()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1354
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->createMissingPackageInfoClass:Z

    if-eqz v0, :cond_8

    .line 1356
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->destDir:Ljava/io/File;

    if-eqz v0, :cond_4

    goto :goto_3

    .line 1358
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->src:Lorg/apache/tools/ant/types/Path;

    .line 1359
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1356
    :goto_3
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Javac;->generateMissingPackageInfoClasses(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 1362
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 1367
    :cond_5
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Javac;->taskSuccess:Z

    .line 1368
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->errorProperty:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1369
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->errorProperty:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v0, v1, v3}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    :cond_6
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->failOnError:Z

    const-string v1, "Compile failed; see the compiler error output for details."

    if-nez v0, :cond_7

    .line 1375
    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    goto :goto_4

    .line 1373
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    :cond_8
    :goto_4
    return-void
.end method

.method public createBootclasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 528
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    .line 531
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 400
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    .line 403
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createCompilerArg()Lorg/apache/tools/ant/taskdefs/Javac$ImplementationSpecificArgument;
    .locals 2

    .line 912
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javac$ImplementationSpecificArgument;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Javac$ImplementationSpecificArgument;-><init>(Lorg/apache/tools/ant/taskdefs/Javac;)V

    .line 914
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->addImplementationArgument(Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;)V

    return-object v0
.end method

.method public createCompilerClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 1045
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getImplementationClasspath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createExtdirs()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 569
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->extdirs:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 570
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->extdirs:Lorg/apache/tools/ant/types/Path;

    .line 572
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->extdirs:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createModulepath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 442
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->modulepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 443
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->modulepath:Lorg/apache/tools/ant/types/Path;

    .line 445
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->modulepath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createModulesourcepath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 359
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->moduleSourcepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->moduleSourcepath:Lorg/apache/tools/ant/types/Path;

    .line 362
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->moduleSourcepath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createSourcepath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 317
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    .line 320
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createSrc()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 218
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->src:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->src:Lorg/apache/tools/ant/types/Path;

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->src:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createUpgrademodulepath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 485
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 486
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    .line 488
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1080
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->checkParameters()V

    .line 1081
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->resetFileLists()V

    .line 1085
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->src:Lorg/apache/tools/ant/types/Path;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->hasPath(Lorg/apache/tools/ant/types/Path;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->collectFileListFromSourcePath()V

    goto :goto_0

    .line 1089
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->collectFileListFromModulePath()V

    .line 1092
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->compile()V

    .line 1093
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->updatedProperty:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->taskSuccess:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileList:[Ljava/io/File;

    array-length v0, v0

    if-eqz v0, :cond_1

    .line 1096
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->updatedProperty:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getBootclasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 520
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 392
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getCompiler()Ljava/lang/String;
    .locals 3

    .line 1254
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCompilerVersion()Ljava/lang/String;

    move-result-object v0

    .line 1255
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->fork:Z

    if-eqz v1, :cond_1

    .line 1256
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Javac;->isJdkCompiler(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "extJavac"

    goto :goto_0

    :cond_0
    const-string v1, "Since compiler setting isn\'t classic or modern, ignoring fork setting."

    const/4 v2, 0x1

    .line 1259
    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getCompilerVersion()Ljava/lang/String;
    .locals 3

    .line 1281
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "build.compiler"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->setMagicValue(Ljava/lang/String;)V

    .line 1282
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getImplementation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCompilerArgs()[Ljava/lang/String;
    .locals 4

    .line 923
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getExplicitChoice()Ljava/lang/String;

    move-result-object v0

    .line 926
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCompiler()Ljava/lang/String;

    move-result-object v1

    .line 927
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->setImplementation(Ljava/lang/String;)V

    .line 929
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getArgs()[Ljava/lang/String;

    move-result-object v1

    .line 931
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v2}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getImplementation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/Javac;->getAltCompilerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 933
    array-length v3, v1

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 934
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->setImplementation(Ljava/lang/String;)V

    .line 935
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getArgs()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 941
    :cond_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->setImplementation(Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->setImplementation(Ljava/lang/String;)V

    .line 942
    throw v1
.end method

.method public getDebug()Z
    .locals 1

    .line 701
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->debug:Z

    return v0
.end method

.method public getDebugLevel()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->debugLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getDepend()Z
    .locals 1

    .line 734
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->depend:Z

    return v0
.end method

.method public getDeprecation()Z
    .locals 1

    .line 630
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->deprecation:Z

    return v0
.end method

.method public getDestdir()Ljava/io/File;
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->destDir:Ljava/io/File;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 684
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getExecutable()Ljava/lang/String;
    .locals 1

    .line 859
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->forkedExecutable:Ljava/lang/String;

    return-object v0
.end method

.method public getExtdirs()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 561
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->extdirs:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getFailonerror()Z
    .locals 1

    .line 613
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->failOnError:Z

    return v0
.end method

.method public getFileList()[Ljava/io/File;
    .locals 1

    .line 1208
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileList:[Ljava/io/File;

    return-object v0
.end method

.method public getIncludeantruntime()Z
    .locals 1

    .line 812
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->includeAntRuntime:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

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

.method public getIncludejavaruntime()Z
    .locals 1

    .line 829
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->includeJavaRuntime:Z

    return v0
.end method

.method public getJavacExecutable()Ljava/lang/String;
    .locals 1

    .line 883
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->forkedExecutable:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->isForkedJavac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getSystemJavac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->forkedExecutable:Ljava/lang/String;

    goto :goto_0

    .line 885
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->forkedExecutable:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->isForkedJavac()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 886
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->forkedExecutable:Ljava/lang/String;

    .line 888
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->forkedExecutable:Ljava/lang/String;

    return-object v0
.end method

.method public getListfiles()Z
    .locals 1

    .line 588
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->listFiles:Z

    return v0
.end method

.method public getMemoryInitialSize()Ljava/lang/String;
    .locals 1

    .line 649
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->memoryInitialSize:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoryMaximumSize()Ljava/lang/String;
    .locals 1

    .line 668
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->memoryMaximumSize:Ljava/lang/String;

    return-object v0
.end method

.method public getModulepath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 433
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->modulepath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getModulesourcepath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 350
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->moduleSourcepath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getNativeHeaderDir()Ljava/io/File;
    .locals 1

    .line 289
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->nativeHeaderDir:Ljava/io/File;

    return-object v0
.end method

.method public getNowarn()Z
    .locals 1

    .line 904
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->nowarn:Z

    return v0
.end method

.method public getOptimize()Z
    .locals 1

    .line 717
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->optimize:Z

    return v0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 1

    .line 796
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->release:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 2

    .line 190
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->source:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "ant.build.javac.source"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSourcepath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 309
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getSrcdir()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 251
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->src:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method protected getSystemJavac()Ljava/lang/String;
    .locals 1

    const-string v0, "javac"

    .line 1227
    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJdkExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 2

    .line 768
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->targetAttribute:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 770
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "ant.build.javac.target"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTaskSuccess()Z
    .locals 1

    .line 1034
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->taskSuccess:Z

    return v0
.end method

.method public getTempdir()Ljava/io/File;
    .locals 1

    .line 984
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->tmpDir:Ljava/io/File;

    return-object v0
.end method

.method public getUpgrademodulepath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 476
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getVerbose()Z
    .locals 1

    .line 750
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->verbose:Z

    return v0
.end method

.method public isForkedJavac()Z
    .locals 1

    .line 867
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->fork:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCompiler()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->isForkedJavac(Ljava/lang/String;)Z

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

.method public isIncludeDestClasses()Z
    .locals 1

    .line 1025
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->includeDestClasses:Z

    return v0
.end method

.method protected isJdkCompiler(Ljava/lang/String;)Z
    .locals 0

    .line 1220
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->isJdkCompiler(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected recreateSrc()Lorg/apache/tools/ant/types/Path;
    .locals 1

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->src:Lorg/apache/tools/ant/types/Path;

    .line 231
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->createSrc()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method protected resetFileLists()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    .line 1104
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileList:[Ljava/io/File;

    .line 1105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->packageInfos:Ljava/util/Map;

    return-void
.end method

.method protected scanDir(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)V
    .locals 9

    .line 1117
    new-instance v0, Lorg/apache/tools/ant/util/GlobPatternMapper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/GlobPatternMapper;-><init>()V

    .line 1119
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->findSupportedFileExtensions()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 1120
    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/util/GlobPatternMapper;->setFrom(Ljava/lang/String;)V

    const-string v5, "*.class"

    .line 1121
    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/util/GlobPatternMapper;->setTo(Ljava/lang/String;)V

    .line 1122
    new-instance v5, Lorg/apache/tools/ant/util/SourceFileScanner;

    invoke-direct {v5, p0}, Lorg/apache/tools/ant/util/SourceFileScanner;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 1123
    invoke-virtual {v5, p3, p1, p2, v0}, Lorg/apache/tools/ant/util/SourceFileScanner;->restrictAsFiles([Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;)[Ljava/io/File;

    move-result-object v5

    .line 1125
    array-length v6, v5

    if-lez v6, :cond_0

    .line 1126
    invoke-direct {p0, p1, v5}, Lorg/apache/tools/ant/taskdefs/Javac;->lookForPackageInfos(Ljava/io/File;[Ljava/io/File;)V

    .line 1127
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileList:[Ljava/io/File;

    array-length v7, v6

    array-length v8, v5

    add-int/2addr v7, v8

    new-array v7, v7, [Ljava/io/File;

    .line 1129
    array-length v8, v6

    invoke-static {v6, v3, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1131
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileList:[Ljava/io/File;

    array-length v6, v6

    array-length v8, v5

    invoke-static {v5, v3, v7, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1133
    iput-object v7, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileList:[Ljava/io/File;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setBootClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 539
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->createBootclasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setBootclasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 507
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 508
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 510
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 380
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 381
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 411
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setCompiler(Ljava/lang/String;)V
    .locals 1

    .line 1236
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->setImplementation(Ljava/lang/String;)V

    return-void
.end method

.method public setCreateMissingPackageInfoClass(Z)V
    .locals 0

    .line 1071
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->createMissingPackageInfoClass:Z

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 693
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->debug:Z

    return-void
.end method

.method public setDebugLevel(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->debugLevel:Ljava/lang/String;

    return-void
.end method

.method public setDepend(Z)V
    .locals 0

    .line 726
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->depend:Z

    return-void
.end method

.method public setDeprecation(Z)V
    .locals 0

    .line 622
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->deprecation:Z

    return-void
.end method

.method public setDestdir(Ljava/io/File;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->destDir:Ljava/io/File;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setErrorProperty(Ljava/lang/String;)V
    .locals 0

    .line 1006
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->errorProperty:Ljava/lang/String;

    return-void
.end method

.method public setExecutable(Ljava/lang/String;)V
    .locals 0

    .line 849
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->forkedExecutable:Ljava/lang/String;

    return-void
.end method

.method public setExtdirs(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 548
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->extdirs:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 549
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->extdirs:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 551
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setFailonerror(Z)V
    .locals 0

    .line 597
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->failOnError:Z

    return-void
.end method

.method public setFork(Z)V
    .locals 0

    .line 838
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->fork:Z

    return-void
.end method

.method public setIncludeDestClasses(Z)V
    .locals 0

    .line 1017
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->includeDestClasses:Z

    return-void
.end method

.method public setIncludeantruntime(Z)V
    .locals 0

    .line 804
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->includeAntRuntime:Ljava/lang/Boolean;

    return-void
.end method

.method public setIncludejavaruntime(Z)V
    .locals 0

    .line 820
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->includeJavaRuntime:Z

    return-void
.end method

.method public setListfiles(Z)V
    .locals 0

    .line 580
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->listFiles:Z

    return-void
.end method

.method public setMemoryInitialSize(Ljava/lang/String;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->memoryInitialSize:Ljava/lang/String;

    return-void
.end method

.method public setMemoryMaximumSize(Ljava/lang/String;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->memoryMaximumSize:Ljava/lang/String;

    return-void
.end method

.method public setModulepath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 420
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->modulepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 421
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->modulepath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 423
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setModulepathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 454
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->createModulepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setModulesourcepath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 337
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->moduleSourcepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 338
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->moduleSourcepath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setModulesourcepathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 371
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->createModulesourcepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setNativeHeaderDir(Ljava/io/File;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->nativeHeaderDir:Ljava/io/File;

    return-void
.end method

.method public setNowarn(Z)V
    .locals 0

    .line 896
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->nowarn:Z

    return-void
.end method

.method public setOptimize(Z)V
    .locals 0

    .line 709
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->optimize:Z

    return-void
.end method

.method public setProceed(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 605
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->failOnError:Z

    return-void
.end method

.method public setRelease(Ljava/lang/String;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->release:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->source:Ljava/lang/String;

    return-void
.end method

.method public setSourcepath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 298
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setSourcepathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 328
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->createSourcepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setSrcdir(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->src:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 240
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->src:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->targetAttribute:Ljava/lang/String;

    return-void
.end method

.method public setTempdir(Ljava/io/File;)V
    .locals 0

    .line 974
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->tmpDir:Ljava/io/File;

    return-void
.end method

.method public setUpdatedProperty(Ljava/lang/String;)V
    .locals 0

    .line 995
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->updatedProperty:Ljava/lang/String;

    return-void
.end method

.method public setUpgrademodulepath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 463
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 464
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 466
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setUpgrademodulepathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 497
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->createUpgrademodulepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setVerbose(Z)V
    .locals 0

    .line 742
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->verbose:Z

    return-void
.end method
