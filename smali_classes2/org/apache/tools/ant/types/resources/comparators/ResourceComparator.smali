.class public abstract Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;
.super Lorg/apache/tools/ant/types/DataType;
.source "ResourceComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/tools/ant/types/DataType;",
        "Ljava/util/Comparator<",
        "Lorg/apache/tools/ant/types/Resource;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;
    .locals 1

    .line 81
    const-class v0, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    check-cast p2, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;->compare(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)I

    move-result p1

    return p1
.end method

.method public final compare(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)I
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;->dieOnCircularReference()V

    .line 42
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;->getRef()Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 43
    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;->resourceCompare(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 53
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;->getRef()Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    if-eq p1, p0, :cond_1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    monitor-enter p0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;->getRef()Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;->hashCode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 68
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract resourceCompare(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)I
.end method
