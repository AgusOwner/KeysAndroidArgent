.class public abstract Lorg/apache/tools/ant/types/resources/SizeLimitCollection;
.super Lorg/apache/tools/ant/types/resources/BaseResourceCollectionWrapper;
.source "SizeLimitCollection.java"


# static fields
.field private static final BAD_COUNT:Ljava/lang/String; = "size-limited collection count should be set to an int >= 0"


# instance fields
.field private count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionWrapper;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lorg/apache/tools/ant/types/resources/SizeLimitCollection;->count:I

    return-void
.end method


# virtual methods
.method public declared-synchronized getCount()I
    .locals 1

    monitor-enter p0

    .line 46
    :try_start_0
    iget v0, p0, Lorg/apache/tools/ant/types/resources/SizeLimitCollection;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getValidCount()I
    .locals 2

    .line 63
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/SizeLimitCollection;->getCount()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 65
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "size-limited collection count should be set to an int >= 0"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized setCount(I)V
    .locals 0

    monitor-enter p0

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/SizeLimitCollection;->checkAttributesAllowed()V

    .line 38
    iput p1, p0, Lorg/apache/tools/ant/types/resources/SizeLimitCollection;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()I
    .locals 2

    monitor-enter p0

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/SizeLimitCollection;->getResourceCollection()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/SizeLimitCollection;->getValidCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
