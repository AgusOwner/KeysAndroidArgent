.class public Lorg/apache/tools/ant/util/DeweyDecimal;
.super Ljava/lang/Object;
.source "DeweyDecimal.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/tools/ant/util/DeweyDecimal;",
        ">;"
    }
.end annotation


# instance fields
.field private final components:[I


# direct methods
.method public static synthetic $r8$lambda$lnRXtcArgNFLGpMRxe1hykFrIQg(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    add-int/2addr p1, v2

    .line 59
    div-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    const/4 p1, 0x0

    .line 61
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v1, v1

    if-ge p1, v1, :cond_3

    .line 62
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 67
    iget-object v2, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v2, p1

    .line 70
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 74
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "DeweyDecimal ended in a \'.\'"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 64
    :cond_2
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Empty component in string"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method public constructor <init>([I)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    const/4 v1, 0x0

    .line 45
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 33
    check-cast p1, Lorg/apache/tools/ant/util/DeweyDecimal;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/DeweyDecimal;->compareTo(Lorg/apache/tools/ant/util/DeweyDecimal;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/tools/ant/util/DeweyDecimal;)I
    .locals 6

    .line 213
    iget-object v0, p1, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v0, v0

    iget-object v1, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 215
    iget-object v3, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget v3, v3, v2

    goto :goto_1

    :cond_0
    move v3, v1

    .line 216
    :goto_1
    iget-object v4, p1, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v5, v4

    if-ge v2, v5, :cond_1

    aget v4, v4, v2

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    if-eq v3, v4, :cond_2

    sub-int/2addr v3, v4

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 229
    instance-of v0, p1, Lorg/apache/tools/ant/util/DeweyDecimal;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/tools/ant/util/DeweyDecimal;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/DeweyDecimal;->isEqual(Lorg/apache/tools/ant/util/DeweyDecimal;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public get(I)I
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    aget p1, v0, p1

    return p1
.end method

.method public getSize()I
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 225
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/DeweyDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEqual(Lorg/apache/tools/ant/util/DeweyDecimal;)Z
    .locals 6

    .line 108
    iget-object v0, p1, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v0, v0

    iget-object v1, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 111
    iget-object v3, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget v3, v3, v2

    goto :goto_1

    :cond_0
    move v3, v1

    .line 112
    :goto_1
    iget-object v4, p1, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v5, v4

    if-ge v2, v5, :cond_1

    aget v4, v4, v2

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    if-eq v4, v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public isGreaterThan(Lorg/apache/tools/ant/util/DeweyDecimal;)Z
    .locals 6

    .line 152
    iget-object v0, p1, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v0, v0

    iget-object v1, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 155
    iget-object v3, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget v3, v3, v2

    goto :goto_1

    :cond_0
    move v3, v1

    .line 156
    :goto_1
    iget-object v4, p1, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v5, v4

    if-ge v2, v5, :cond_1

    aget v4, v4, v2

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    if-le v4, v3, :cond_2

    return v1

    :cond_2
    if-ge v4, v3, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public isGreaterThanOrEqual(Lorg/apache/tools/ant/util/DeweyDecimal;)Z
    .locals 7

    .line 177
    iget-object v0, p1, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v0, v0

    iget-object v1, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_4

    .line 180
    iget-object v4, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v5, v4

    if-ge v2, v5, :cond_0

    aget v4, v4, v2

    goto :goto_1

    :cond_0
    move v4, v1

    .line 181
    :goto_1
    iget-object v5, p1, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    array-length v6, v5

    if-ge v2, v6, :cond_1

    aget v5, v5, v2

    goto :goto_2

    :cond_1
    move v5, v1

    :goto_2
    if-le v5, v4, :cond_2

    return v1

    :cond_2
    if-ge v5, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method public isLessThan(Lorg/apache/tools/ant/util/DeweyDecimal;)Z
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/DeweyDecimal;->isGreaterThanOrEqual(Lorg/apache/tools/ant/util/DeweyDecimal;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isLessThanOrEqual(Lorg/apache/tools/ant/util/DeweyDecimal;)Z
    .locals 0

    .line 141
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/DeweyDecimal;->isGreaterThan(Lorg/apache/tools/ant/util/DeweyDecimal;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 200
    iget-object v0, p0, Lorg/apache/tools/ant/util/DeweyDecimal;->components:[I

    invoke-static {v0}, Ljava/util/stream/IntStream;->of([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/util/DeweyDecimal$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/util/DeweyDecimal$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, "."

    .line 201
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
