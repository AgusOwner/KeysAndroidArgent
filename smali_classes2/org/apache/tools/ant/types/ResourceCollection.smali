.class public interface abstract Lorg/apache/tools/ant/types/ResourceCollection;
.super Ljava/lang/Object;
.source "ResourceCollection.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/tools/ant/types/Resource;",
        ">;"
    }
.end annotation


# virtual methods
.method public isEmpty()Z
    .locals 1

    .line 59
    invoke-interface {p0}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract isFilesystemOnly()Z
.end method

.method public abstract size()I
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "+",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-static {}, Ljava/util/stream/Stream;->builder()Ljava/util/stream/Stream$Builder;

    move-result-object v0

    .line 50
    invoke-interface {p0, v0}, Lorg/apache/tools/ant/types/ResourceCollection;->forEach(Ljava/util/function/Consumer;)V

    .line 51
    invoke-interface {v0}, Ljava/util/stream/Stream$Builder;->build()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
