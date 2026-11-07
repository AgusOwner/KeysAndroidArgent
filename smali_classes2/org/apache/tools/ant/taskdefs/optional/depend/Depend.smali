.class public Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "Depend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;
    }
.end annotation


# static fields
.field private static final CACHE_FILE_NAME:Ljava/lang/String; = "dependencies.txt"

.field private static final CLASSNAME_PREPEND:Ljava/lang/String; = "||:"

.field private static final ONE_SECOND:I = 0x3e8


# instance fields
.field private affectedClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private cache:Ljava/io/File;

.field private classFileInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private classpathDependencies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field private closure:Z

.field private dependClasspath:Lorg/apache/tools/ant/types/Path;

.field private destPath:Lorg/apache/tools/ant/types/Path;

.field private dump:Z

.field private outOfDateClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private srcPath:Lorg/apache/tools/ant/types/Path;

.field private warnOnRmiStubs:Z


# direct methods
.method public static synthetic $r8$lambda$6KInwb2njN8ZbuO3yJ-dbUIbg0M(Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jD2K7IXAmC7HxhMqiKf7JqJKi14(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jPHVNM93A8yJxI0M6WKJ_dGDEF0(Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->closure:Z

    const/4 v1, 0x1

    .line 116
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->warnOnRmiStubs:Z

    .line 122
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->dump:Z

    return-void
.end method

.method private addClassFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 751
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 757
    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 759
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, p2, v3

    .line 760
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".class"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 761
    new-instance v6, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;

    invoke-direct {v6, v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;-><init>(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$1;)V

    .line 762
    invoke-static {v6, v5}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$102(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;Ljava/io/File;)Ljava/io/File;

    .line 764
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v0, 0x1

    .line 765
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x6

    .line 764
    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 768
    invoke-static {v5}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileUtils;->convertSlashName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 767
    invoke-static {v6, v7}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$002(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 770
    invoke-direct {p0, v5, v4}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->findSourceFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 769
    invoke-static {v6, v4}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$202(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;Ljava/io/File;)Ljava/io/File;

    .line 771
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 773
    :cond_1
    invoke-direct {p0, p1, v5, p3}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->addClassFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private deleteAffectedFiles(Ljava/lang/String;)I
    .locals 8

    .line 453
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->affectedClassMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 457
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 458
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 459
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;

    .line 461
    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 465
    :cond_2
    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$200(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_3

    .line 466
    invoke-direct {p0, v3, v4, p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->warnOutOfDateButNotDeleted(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Deleting file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " since "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " out of date"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    invoke-virtual {p0, v5, v7}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 473
    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    .line 475
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->closure:Z

    if-eqz v3, :cond_4

    .line 476
    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->deleteAffectedFiles(Ljava/lang/String;)I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    goto :goto_0

    :cond_4
    const-string v3, "$"

    .line 481
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    .line 485
    :cond_5
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 486
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Top level class = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v7}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 488
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->classFileInfoMap:Ljava/util/Map;

    .line 489
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;

    if-eqz v4, :cond_1

    .line 491
    invoke-static {v4}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 492
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    invoke-static {v4}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " since one of its inner classes was removed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 492
    invoke-virtual {p0, v5, v7}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 496
    invoke-static {v4}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    .line 498
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->closure:Z

    if-eqz v4, :cond_1

    .line 499
    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->deleteAffectedFiles(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_6
    return v2
.end method

.method private deleteAllAffectedFiles()I
    .locals 5

    .line 428
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->outOfDateClasses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 429
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->deleteAffectedFiles(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 430
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->classFileInfoMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;

    if-eqz v3, :cond_0

    .line 431
    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 432
    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$200(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_1

    .line 433
    invoke-direct {p0, v3, v2, v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->warnOutOfDateButNotDeleted(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_1
    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private determineDependencies()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->affectedClassMap:Ljava/util/Map;

    .line 285
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->classFileInfoMap:Ljava/util/Map;

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 294
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->cache:Ljava/io/File;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 295
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->cache:Ljava/io/File;

    const-string v4, "dependencies.txt"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    .line 297
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    if-eqz v3, :cond_1

    .line 299
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->readCachedDependencies(Ljava/io/File;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-wide v4, 0x7fffffffffffffffL

    move v3, v2

    .line 302
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->getClassFiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    move v7, v6

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x4

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;

    .line 303
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Adding class info for "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$000(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11, v10}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 304
    iget-object v11, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->classFileInfoMap:Ljava/util/Map;

    invoke-static {v8}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$000(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v11, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->cache:Ljava/io/File;

    if-eqz v11, :cond_3

    if-eqz v3, :cond_3

    .line 312
    invoke-static {v8}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    cmp-long v11, v4, v11

    if-lez v11, :cond_3

    .line 315
    invoke-static {v8}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$000(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    :cond_3
    if-nez v9, :cond_4

    .line 321
    new-instance v7, Lorg/apache/tools/ant/taskdefs/optional/depend/AntAnalyzer;

    invoke-direct {v7}, Lorg/apache/tools/ant/taskdefs/optional/depend/AntAnalyzer;-><init>()V

    .line 322
    invoke-static {v8}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$000(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;->addRootClass(Ljava/lang/String;)V

    .line 323
    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->destPath:Lorg/apache/tools/ant/types/Path;

    invoke-interface {v7, v9}, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;->addClassPath(Lorg/apache/tools/ant/types/Path;)V

    .line 324
    invoke-interface {v7, v6}, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;->setClosure(Z)V

    .line 325
    invoke-interface {v7}, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;->getClassDependencies()Ljava/util/Enumeration;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v9

    .line 326
    new-instance v7, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0, v8}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)V

    invoke-interface {v9, v7}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 329
    invoke-static {v8}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$000(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v7, v2

    .line 334
    :cond_4
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 335
    iget-object v12, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->affectedClassMap:Ljava/util/Map;

    new-instance v13, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda3;

    invoke-direct {v13}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda3;-><init>()V

    .line 336
    invoke-interface {v12, v11, v13}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 337
    invoke-static {v8}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$000(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " affects "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v8}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$000(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11, v10}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 343
    :cond_5
    iput-object v9, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->classpathDependencies:Ljava/util/Map;

    .line 344
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->getCheckClassPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 347
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->classpathDependencies:Ljava/util/Map;

    .line 348
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v1

    .line 350
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 351
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 352
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 353
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 354
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Determining classpath dependencies for "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v10}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 356
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 357
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 358
    iget-object v11, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->classpathDependencies:Ljava/util/Map;

    invoke-interface {v11, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 360
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Looking for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12, v10}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 362
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_d

    const-string v12, "java."

    .line 366
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_c

    const-string v12, "javax."

    .line 367
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 368
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v13, 0x2e

    const/16 v14, 0x2f

    .line 369
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".class"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lorg/apache/tools/ant/AntClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v12

    .line 370
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "URL is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13, v10}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    if-eqz v12, :cond_b

    const-string v13, "jar"

    .line 372
    invoke-virtual {v12}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 373
    invoke-virtual {v12}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x21

    .line 374
    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 375
    invoke-virtual {v12, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v13, "file:"

    .line 376
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 377
    new-instance v13, Ljava/io/File;

    .line 378
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v14

    .line 379
    invoke-virtual {v14, v12}, Lorg/apache/tools/ant/util/FileUtils;->fromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 381
    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bizarre nested path in jar: protocol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string v13, "file"

    .line 385
    invoke-virtual {v12}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 386
    new-instance v13, Ljava/io/File;

    .line 387
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v14

    .line 388
    invoke-virtual {v12}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v12

    .line 387
    invoke-virtual {v14, v12}, Lorg/apache/tools/ant/util/FileUtils;->fromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    move-object v13, v3

    .line 390
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Class "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " depends on "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " due to "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12, v10}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    goto :goto_4

    :cond_b
    move-object v13, v3

    :goto_4
    move-object v12, v13

    goto :goto_5

    .line 395
    :cond_c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignoring base classlib dependency "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12, v10}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    move-object v12, v3

    .line 398
    :goto_5
    invoke-interface {v2, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    if-eq v12, v3, :cond_7

    .line 402
    check-cast v12, Ljava/io/File;

    .line 403
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Adding a classpath dependency on "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11, v10}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 405
    invoke-interface {v9, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :cond_e
    if-eqz v1, :cond_11

    .line 409
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->close()V

    goto :goto_7

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_f

    .line 348
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_6
    throw v0

    :cond_10
    const-string v1, "No classpath to check"

    .line 411
    invoke-virtual {p0, v1, v10}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 415
    :cond_11
    :goto_7
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->cache:Ljava/io/File;

    if-eqz v1, :cond_12

    if-eqz v7, :cond_12

    .line 416
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->writeCachedDependencies(Ljava/util/Map;)V

    :cond_12
    return-void
.end method

.method private determineOutOfDateClasses()V
    .locals 9

    .line 580
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->outOfDateClasses:Ljava/util/Map;

    .line 581
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->srcPath:Lorg/apache/tools/ant/types/Path;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->directories(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda9;-><init>(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 587
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->classpathDependencies:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 591
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 592
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 593
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->outOfDateClasses:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 596
    :cond_2
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->classFileInfoMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;

    if-eqz v3, :cond_1

    .line 601
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 602
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v7

    .line 603
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Class "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is out of date with respect to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 607
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->outOfDateClasses:Ljava/util/Map;

    invoke-interface {v1, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-void
.end method

.method private directories(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 828
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda12;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda13;-><init>()V

    .line 829
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda14;-><init>()V

    .line 830
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method private dumpDependencies()V
    .locals 3

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reverse Dependency Dump for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->affectedClassMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " classes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 562
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->affectedClassMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda7;-><init>(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 569
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->classpathDependencies:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v0, "Classpath file dependencies (Forward):"

    .line 570
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 572
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->classpathDependencies:Ljava/util/Map;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda8;-><init>(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    return-void
.end method

.method private findSourceFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 4

    const/16 v0, 0x24

    .line 725
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, ".java"

    if-eq v0, v1, :cond_0

    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 729
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 732
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->srcPath:Lorg/apache/tools/ant/types/Path;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->directories(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;)V

    .line 733
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 734
    invoke-static {p2}, Ljava/util/function/Predicate;->isEqual(Ljava/lang/Object;)Ljava/util/function/Predicate;

    move-result-object p2

    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/function/Predicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p2

    .line 733
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 735
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    return-object p1
.end method

.method private getCheckClassPath()Lorg/apache/tools/ant/types/Path;
    .locals 4

    .line 245
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->dependClasspath:Lorg/apache/tools/ant/types/Path;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 249
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 250
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->dependClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda4;-><init>(Ljava/util/Set;)V

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Path;->forEach(Ljava/util/function/Consumer;)V

    .line 251
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->destPath:Lorg/apache/tools/ant/types/Path;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda5;-><init>(Ljava/util/Set;)V

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Path;->forEach(Ljava/util/function/Consumer;)V

    .line 254
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 257
    :cond_1
    new-instance v1, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 258
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda6;-><init>(Lorg/apache/tools/ant/types/Path;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 261
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Classpath without dest dir is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    return-object v1
.end method

.method private getClassFiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;",
            ">;"
        }
    .end annotation

    .line 708
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 710
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->destPath:Lorg/apache/tools/ant/types/Path;

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->directories(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda16;-><init>(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;Ljava/util/List;)V

    .line 711
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method private isRmiStub(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "_Stub"

    .line 545
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->isStub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "_Skel"

    .line 546
    invoke-direct {p0, p1, p2, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->isStub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 547
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->isStub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 548
    invoke-direct {p0, p1, p2, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->isStub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isStub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$determineDependencies$2(Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 336
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$directories$10(Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/resources/FileProvider;
    .locals 1

    .line 828
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/tools/ant/types/resources/FileProvider;

    return-object p0
.end method

.method static synthetic lambda$findSourceFile$9(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 733
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$readCachedDependencies$0(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 205
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private readCachedDependencies(Ljava/io/File;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 198
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    .line 201
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "||:"

    .line 202
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x3

    .line 203
    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 204
    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_0

    .line 207
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    .line 198
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method private warnOutOfDateButNotDeleted(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 518
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$300(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 522
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->warnOnRmiStubs:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 526
    invoke-direct {p0, p2, p3}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->isRmiStub(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    move v0, v1

    .line 530
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " in file "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 531
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " is out of date due to "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " but has not been deleted because its source file could not be determined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 530
    invoke-virtual {p0, p2, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 535
    invoke-static {p1, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$302(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;Z)Z

    return-void
.end method

.method private writeCachedDependencies(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->cache:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 224
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->cache:Ljava/io/File;

    const-string v2, "dependencies.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 228
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 227
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v2, "%s%s%n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "||:"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 229
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 230
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 231
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 225
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 161
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->dependClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->dependClasspath:Lorg/apache/tools/ant/types/Path;

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->dependClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Deleted "

    .line 623
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 624
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->srcPath:Lorg/apache/tools/ant/types/Path;

    if-eqz v3, :cond_7

    .line 629
    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->directories(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 634
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->destPath:Lorg/apache/tools/ant/types/Path;

    if-nez v3, :cond_0

    .line 635
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->srcPath:Lorg/apache/tools/ant/types/Path;

    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->destPath:Lorg/apache/tools/ant/types/Path;

    .line 638
    :cond_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->cache:Ljava/io/File;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->cache:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 639
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The cache, if specified, must point to a directory"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_2
    :goto_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->cache:Ljava/io/File;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 644
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->cache:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 647
    :cond_3
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->determineDependencies()V

    .line 648
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->dump:Z

    if-eqz v3, :cond_4

    .line 649
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->dumpDependencies()V

    .line 651
    :cond_4
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->determineOutOfDateClasses()V

    .line 652
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->deleteAllAffectedFiles()I

    move-result v3

    .line 654
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    const-wide/16 v1, 0x3e8

    div-long/2addr v4, v1

    if-lez v3, :cond_5

    const/4 v1, 0x2

    goto :goto_1

    :cond_5
    const/4 v1, 0x4

    .line 663
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " out of date files in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " seconds"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    return-void

    .line 630
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "srcdir attribute must be non-empty"

    .line 631
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 625
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "srcdir attribute must be set"

    .line 626
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 666
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->dependClasspath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method synthetic lambda$determineDependencies$1$org-apache-tools-ant-taskdefs-optional-depend-Depend(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;Ljava/lang/String;)V
    .locals 2

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$000(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " depends on "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic lambda$determineOutOfDateClasses$7$org-apache-tools-ant-taskdefs-optional-depend-Depend(Ljava/io/File;)V
    .locals 1

    .line 582
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 583
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->scanDir(Ljava/io/File;[Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$dumpDependencies$3$org-apache-tools-ant-taskdefs-optional-depend-Depend(Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)V
    .locals 2

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 565
    invoke-static {p2}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    .line 564
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic lambda$dumpDependencies$4$org-apache-tools-ant-taskdefs-optional-depend-Depend(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " affects:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 564
    new-instance p1, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda15;-><init>(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;)V

    invoke-interface {p2, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method synthetic lambda$dumpDependencies$5$org-apache-tools-ant-taskdefs-optional-depend-Depend(Ljava/io/File;)V
    .locals 2

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic lambda$dumpDependencies$6$org-apache-tools-ant-taskdefs-optional-depend-Depend(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " depends on:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 574
    new-instance p1, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;)V

    invoke-interface {p2, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method synthetic lambda$getClassFiles$8$org-apache-tools-ant-taskdefs-optional-depend-Depend(Ljava/util/List;Ljava/io/File;)V
    .locals 0

    .line 711
    invoke-direct {p0, p1, p2, p2}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->addClassFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method protected scanDir(Ljava/io/File;[Ljava/lang/String;)V
    .locals 7

    .line 680
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 681
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v4, ".java"

    .line 682
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 683
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 685
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 686
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x5

    .line 685
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 687
    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileUtils;->convertSlashName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 688
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->classFileInfoMap:Ljava/util/Map;

    .line 689
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;

    if-nez v4, :cond_0

    .line 692
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->outOfDateClasses:Ljava/util/Map;

    invoke-interface {v3, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 693
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-static {v4}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v3

    .line 694
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v3, v5, v3

    if-lez v3, :cond_1

    .line 695
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->outOfDateClasses:Ljava/util/Map;

    invoke-interface {v3, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setCache(Ljava/io/File;)V
    .locals 0

    .line 802
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->cache:Ljava/io/File;

    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->dependClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 140
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->dependClasspath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 174
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setClosure(Z)V
    .locals 0

    .line 814
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->closure:Z

    return-void
.end method

.method public setDestDir(Lorg/apache/tools/ant/types/Path;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->destPath:Lorg/apache/tools/ant/types/Path;

    return-void
.end method

.method public setDump(Z)V
    .locals 0

    .line 824
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->dump:Z

    return-void
.end method

.method public setSrcdir(Lorg/apache/tools/ant/types/Path;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->srcPath:Lorg/apache/tools/ant/types/Path;

    return-void
.end method

.method public setWarnOnRmiStubs(Z)V
    .locals 0

    .line 184
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->warnOnRmiStubs:Z

    return-void
.end method
