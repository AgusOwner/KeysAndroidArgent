.class Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;
.super Ljava/io/Reader;
.source "FixCrLfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/FixCrLfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleFilterReader"
.end annotation


# static fields
.field private static final PREEMPT_BUFFER_LENGTH:I = 0x10


# instance fields
.field private in:Ljava/io/Reader;

.field private preempt:[I

.field private preemptIndex:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 408
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 404
    iput-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->preempt:[I

    const/4 v0, 0x0

    .line 406
    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->preemptIndex:I

    .line 409
    iput-object p1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->in:Ljava/io/Reader;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public editsBlocked()Z
    .locals 2

    .line 442
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->in:Ljava/io/Reader;

    instance-of v1, v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;

    invoke-virtual {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->editsBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mark(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 458
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    return v0
.end method

.method public push(C)V
    .locals 0

    .line 413
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->push(I)V

    return-void
.end method

.method public push(I)V
    .locals 4

    .line 418
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->preempt:[I

    iget v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->preemptIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->preemptIndex:I

    aput p1, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 420
    :catch_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->preempt:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 421
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    iput-object v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->preempt:[I

    .line 423
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->push(I)V

    :goto_0
    return-void
.end method

.method public push([C)V
    .locals 2

    const/4 v0, 0x0

    .line 434
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->push([CII)V

    return-void
.end method

.method public push([CII)V
    .locals 1

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_0

    add-int/lit8 v0, p3, -0x1

    .line 429
    aget-char p3, p1, p3

    invoke-virtual {p0, p3}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->push(C)V

    move p3, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    iget v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->preemptIndex:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->preempt:[I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->preemptIndex:I

    aget v0, v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    :goto_0
    return v0
.end method

.method public read([C)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 474
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read([CII)I

    move-result p1

    return p1
.end method

.method public read([CII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v2, p3, -0x1

    const/4 v3, -0x1

    if-lez p3, :cond_0

    .line 482
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v1

    if-eq v1, v3, :cond_0

    add-int/lit8 p3, p2, 0x1

    int-to-char v3, v1

    .line 483
    aput-char v3, p1, p2

    add-int/lit8 v0, v0, 0x1

    move p2, p3

    move p3, v2

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    if-ne v1, v3, :cond_1

    move v0, v3

    :cond_1
    return v0
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
