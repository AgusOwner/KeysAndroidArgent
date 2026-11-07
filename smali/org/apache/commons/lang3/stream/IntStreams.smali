.class public Lorg/apache/commons/lang3/stream/IntStreams;
.super Ljava/lang/Object;
.source "IntStreams.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static range(I)Ljava/util/stream/IntStream;
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-static {v0, p0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static rangeClosed(I)Ljava/util/stream/IntStream;
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-static {v0, p0}, Ljava/util/stream/IntStream;->rangeClosed(II)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method
