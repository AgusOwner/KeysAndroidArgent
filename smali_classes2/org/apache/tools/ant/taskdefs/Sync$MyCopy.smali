.class public Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;
.super Lorg/apache/tools/ant/taskdefs/Copy;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyCopy"
.end annotation


# instance fields
.field private nonOrphans:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 460
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Copy;-><init>()V

    .line 464
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->nonOrphans:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;)Ljava/util/Set;
    .locals 0

    .line 460
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->nonOrphans:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public getIncludeEmptyDirs()Z
    .locals 1

    .line 507
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->includeEmpty:Z

    return v0
.end method

.method public getToDir()Ljava/io/File;
    .locals 1

    .line 499
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->destDir:Ljava/io/File;

    return-object v0
.end method

.method protected scan([Lorg/apache/tools/ant/types/Resource;Ljava/io/File;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/tools/ant/types/Resource;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Lorg/apache/tools/ant/types/Resource;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 487
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "No mapper"

    invoke-static {v1, v0}, Lorg/apache/tools/ant/taskdefs/Sync;->access$200(Ljava/lang/String;Z)V

    .line 489
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->nonOrphans:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy$$ExternalSyntheticLambda1;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 491
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Copy;->scan([Lorg/apache/tools/ant/types/Resource;Ljava/io/File;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected scan(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 473
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "No mapper"

    invoke-static {v1, v0}, Lorg/apache/tools/ant/taskdefs/Sync;->access$200(Ljava/lang/String;Z)V

    .line 475
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/taskdefs/Copy;->scan(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 477
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->nonOrphans:Ljava/util/Set;

    invoke-static {p1, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 478
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->nonOrphans:Ljava/util/Set;

    invoke-static {p1, p4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method protected supportsNonFileResources()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
