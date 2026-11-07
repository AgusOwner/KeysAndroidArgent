.class public Lorg/apache/commons/lang3/RandomUtils;
.super Ljava/lang/Object;
.source "RandomUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nextBoolean()Z
    .locals 1

    .line 46
    invoke-static {}, Lorg/apache/commons/lang3/RandomUtils;->random()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public static nextBytes(I)[B
    .locals 3

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Count cannot be negative."

    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 60
    new-array p0, p0, [B

    .line 61
    invoke-static {}, Lorg/apache/commons/lang3/RandomUtils;->random()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextBytes([B)V

    return-object p0
.end method

.method public static nextDouble()D
    .locals 4

    const-wide/16 v0, 0x0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 73
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/lang3/RandomUtils;->nextDouble(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextDouble(DD)D
    .locals 5

    cmpl-double v0, p2, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Start value must be smaller or equal to end value."

    new-array v4, v2, [Ljava/lang/Object;

    .line 89
    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v3, 0x0

    cmpl-double v0, p0, v3

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "Both range values must be non-negative."

    new-array v2, v2, [Ljava/lang/Object;

    .line 91
    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    cmpl-double v0, p0, p2

    if-nez v0, :cond_2

    return-wide p0

    :cond_2
    sub-double/2addr p2, p0

    .line 97
    invoke-static {}, Lorg/apache/commons/lang3/RandomUtils;->random()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble()D

    move-result-wide v0

    mul-double/2addr p2, v0

    add-double/2addr p0, p2

    return-wide p0
.end method

.method public static nextFloat()F
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 108
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/RandomUtils;->nextFloat(FF)F

    move-result v0

    return v0
.end method

.method public static nextFloat(FF)F
    .locals 5

    cmpl-float v0, p1, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Start value must be smaller or equal to end value."

    new-array v4, v2, [Ljava/lang/Object;

    .line 124
    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "Both range values must be non-negative."

    new-array v2, v2, [Ljava/lang/Object;

    .line 126
    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    cmpl-float v0, p0, p1

    if-nez v0, :cond_2

    return p0

    :cond_2
    sub-float/2addr p1, p0

    .line 132
    invoke-static {}, Lorg/apache/commons/lang3/RandomUtils;->random()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    return p0
.end method

.method public static nextInt()I
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 143
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result v0

    return v0
.end method

.method public static nextInt(II)I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p1, p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Start value must be smaller or equal to end value."

    new-array v4, v1, [Ljava/lang/Object;

    .line 159
    invoke-static {v2, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ltz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "Both range values must be non-negative."

    new-array v1, v1, [Ljava/lang/Object;

    .line 161
    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ne p0, p1, :cond_2

    return p0

    .line 167
    :cond_2
    invoke-static {}, Lorg/apache/commons/lang3/RandomUtils;->random()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static nextLong()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 178
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/RandomUtils;->nextLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static nextLong(J)J
    .locals 6

    .line 194
    :cond_0
    invoke-static {}, Lorg/apache/commons/lang3/RandomUtils;->random()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong()J

    move-result-wide v0

    const/4 v2, 0x1

    ushr-long/2addr v0, v2

    .line 195
    rem-long v2, v0, p0

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x1

    sub-long v4, p0, v4

    add-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    return-wide v2
.end method

.method public static nextLong(JJ)J
    .locals 5

    cmp-long v0, p2, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Start value must be smaller or equal to end value."

    new-array v4, v2, [Ljava/lang/Object;

    .line 214
    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v3, 0x0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "Both range values must be non-negative."

    new-array v2, v2, [Ljava/lang/Object;

    .line 216
    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    cmp-long v0, p0, p2

    if-nez v0, :cond_2

    return-wide p0

    :cond_2
    sub-long/2addr p2, p0

    .line 222
    invoke-static {p2, p3}, Lorg/apache/commons/lang3/RandomUtils;->nextLong(J)J

    move-result-wide p2

    add-long/2addr p0, p2

    return-wide p0
.end method

.method private static random()Ljava/util/concurrent/ThreadLocalRandom;
    .locals 1

    .line 226
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    return-object v0
.end method
