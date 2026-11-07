.class public Lorg/apache/tools/ant/util/regexp/RegexpUtil;
.super Ljava/lang/Object;
.source "RegexpUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asOptions(Ljava/lang/String;)I
    .locals 3

    if-eqz p0, :cond_0

    const-string v0, "i"

    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "m"

    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "s"

    .line 67
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 65
    invoke-static {v0, v1, v2}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->asOptions(ZZZ)I

    move-result v0

    const-string v1, "g"

    .line 68
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static asOptions(Z)I
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-static {p0, v0, v0}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->asOptions(ZZZ)I

    move-result p0

    return p0
.end method

.method public static asOptions(ZZZ)I
    .locals 0

    if-nez p0, :cond_0

    const/16 p0, 0x100

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    or-int/lit16 p0, p0, 0x1000

    :cond_1
    if-eqz p2, :cond_2

    const/high16 p1, 0x10000

    or-int/2addr p0, p1

    :cond_2
    return p0
.end method

.method public static hasFlag(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static removeFlag(II)I
    .locals 0

    rsub-int/lit8 p1, p1, -0x1

    and-int/2addr p0, p1

    return p0
.end method
