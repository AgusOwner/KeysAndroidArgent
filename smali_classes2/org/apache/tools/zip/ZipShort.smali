.class public final Lorg/apache/tools/zip/ZipShort;
.super Ljava/lang/Object;
.source "ZipShort.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BYTE_1_MASK:I = 0xff00

.field private static final BYTE_1_SHIFT:I = 0x8


# instance fields
.field private final value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lorg/apache/tools/zip/ZipShort;->value:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/zip/ZipShort;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1, p2}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result p1

    iput p1, p0, Lorg/apache/tools/zip/ZipShort;->value:I

    return-void
.end method

.method public static getBytes(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const v1, 0xff00

    and-int/2addr p0, v1

    shr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static getValue([B)I
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-static {p0, v0}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result p0

    return p0
.end method

.method public static getValue([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 114
    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    .line 115
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static putShort(I[BI)V
    .locals 1

    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    .line 82
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    const v0, 0xff00

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    .line 83
    aput-byte p0, p1, p2

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 152
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 155
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 136
    instance-of v0, p1, Lorg/apache/tools/zip/ZipShort;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/tools/zip/ZipShort;->value:I

    check-cast p1, Lorg/apache/tools/zip/ZipShort;

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipShort;->getValue()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBytes()[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 69
    iget v1, p0, Lorg/apache/tools/zip/ZipShort;->value:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 92
    iget v0, p0, Lorg/apache/tools/zip/ZipShort;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 146
    iget v0, p0, Lorg/apache/tools/zip/ZipShort;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZipShort value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/tools/zip/ZipShort;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
