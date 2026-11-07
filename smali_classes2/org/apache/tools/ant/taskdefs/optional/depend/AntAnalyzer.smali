.class public Lorg/apache/tools/ant/taskdefs/optional/depend/AntAnalyzer;
.super Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;
.source "AntAnalyzer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;-><init>()V

    return-void
.end method

.method static synthetic lambda$determineDependencies$0(Ljava/util/Set;Ljava/lang/String;)Z
    .locals 0

    .line 88
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method protected determineDependencies(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v1, ".class"

    .line 53
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 54
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 55
    new-instance v4, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/AntAnalyzer;->getRootClasses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 56
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 59
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/AntAnalyzer;->isClosureRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    move v6, v0

    const/4 v7, 0x0

    move v0, v7

    .line 60
    :goto_1
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    add-int/lit8 v8, v0, 0x1

    if-ge v0, v6, :cond_5

    .line 61
    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 62
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :catch_0
    :cond_1
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v10, p0

    .line 66
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/AntAnalyzer;->getClassContainer(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    :catch_1
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_1

    .line 71
    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 74
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-array v11, v7, [Ljava/lang/String;

    invoke-static {v0, v11}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v11, v7, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v11}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    :goto_4
    move-object v11, v0

    goto :goto_5

    .line 75
    :cond_2
    new-instance v12, Lorg/apache/tools/zip/ZipFile;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    const-string v13, "UTF-8"

    invoke-direct {v12, v11, v13}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v13, 0x2e

    const/16 v14, 0x2f

    .line 76
    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v12, v0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getZipEntryStream(Lorg/apache/tools/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 77
    :goto_5
    :try_start_2
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;-><init>()V

    .line 78
    invoke-virtual {v0, v11}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;->read(Ljava/io/InputStream;)V

    .line 79
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;->getClassRefs()Ljava/util/Vector;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_1

    .line 80
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v12, v0

    if-eqz v11, :cond_3

    .line 73
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v11, v0

    :try_start_5
    invoke-virtual {v12, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw v12
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_4
    move-object v10, p0

    .line 86
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 88
    invoke-interface {v5}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v9, Lorg/apache/tools/ant/taskdefs/optional/depend/AntAnalyzer$$ExternalSyntheticLambda0;

    invoke-direct {v9, v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/AntAnalyzer$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 89
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy$$ExternalSyntheticLambda1;

    invoke-direct {v9, v4}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy$$ExternalSyntheticLambda1;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v9}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    move v0, v8

    goto/16 :goto_1

    :cond_5
    move-object v10, p0

    .line 93
    invoke-interface {v2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 95
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->removeAllElements()V

    move-object/from16 v1, p1

    .line 96
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 97
    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->removeAllElements()V

    move-object/from16 v1, p2

    .line 98
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected supportsFileDependencies()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
